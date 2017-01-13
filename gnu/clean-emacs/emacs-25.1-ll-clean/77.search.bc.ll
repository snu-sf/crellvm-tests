; ModuleID = './src/search.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regexp_cache = type { %struct.regexp_cache*, i64, i64, i64, %struct.re_pattern_buffer, [256 x i8], i8 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i64, i64, i16, i32 }
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
%struct.re_registers = type { i32, i64*, i64* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Cons = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.1, i16, i16, i8*, i8*, i8* }
%union.anon.1 = type { i64 ()* }

@searchbuf_head = internal global %struct.regexp_cache* null, align 8
@searchbufs = internal global [20 x %struct.regexp_cache] zeroinitializer, align 16
@current_buffer = external global %struct.buffer*, align 8
@globals = external global %struct.emacs_globals, align 8
@charset_unibyte = external global i32, align 4
@immediate_quit = external global i8, align 1
@re_match_object = external global i64, align 8
@Vascii_canon_table = external global i64, align 8
@search_regs = internal global %struct.re_registers zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"`replace-match' called before any match found\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid use of `\5C' in replacement text\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Match data clobbered by buffer modification hooks\00", align 1
@last_thing_searched = internal global i64 0, align 8
@running_asynch_code = external global i8, align 1
@search_regs_saved = internal global i8 0, align 1
@saved_search_regs = internal global %struct.re_registers zeroinitializer, align 8
@saved_last_thing_searched = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"Search failed\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Invalid regexp\00", align 1
@syms_of_search.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"search-spaces-regexp\00", align 1
@syms_of_search.o_fwd.7 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"inhibit-changing-match-data\00", align 1
@pending_signals = external global i8, align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Stack overflow in regexp matcher\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Invalid search bound (wrong side of point)\00", align 1
@search_regs_1 = internal global %struct.re_registers zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"No match data, because no search succeeded\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"looking-at\00", align 1
@Slooking_at = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Flooking_at }, i16 1, i16 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"posix-looking-at\00", align 1
@Sposix_looking_at = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fposix_looking_at }, i16 1, i16 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"string-match\00", align 1
@Sstring_match = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fstring_match }, i16 2, i16 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"posix-string-match\00", align 1
@Sposix_string_match = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fposix_string_match }, i16 2, i16 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"search-forward\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"MSearch: \00", align 1
@Ssearch_forward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fsearch_forward }, i16 1, i16 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null }, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"search-backward\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"MSearch backward: \00", align 1
@Ssearch_backward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fsearch_backward }, i16 1, i16 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null }, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"re-search-forward\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"sRE search: \00", align 1
@Sre_search_forward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fre_search_forward }, i16 1, i16 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* null }, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"re-search-backward\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"sRE search backward: \00", align 1
@Sre_search_backward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fre_search_backward }, i16 1, i16 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* null }, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"posix-search-forward\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"sPosix search: \00", align 1
@Sposix_search_forward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fposix_search_forward }, i16 1, i16 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8* null }, align 8
@.str.26 = private unnamed_addr constant [22 x i8] c"posix-search-backward\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"sPosix search backward: \00", align 1
@Sposix_search_backward = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fposix_search_backward }, i16 1, i16 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* null }, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"replace-match\00", align 1
@Sreplace_match = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Freplace_match }, i16 1, i16 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"match-beginning\00", align 1
@Smatch_beginning = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmatch_beginning }, i16 1, i16 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"match-end\00", align 1
@Smatch_end = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fmatch_end }, i16 1, i16 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"match-data\00", align 1
@Smatch_data = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fmatch_data }, i16 0, i16 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"set-match-data\00", align 1
@Sset_match_data = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fset_match_data }, i16 1, i16 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"regexp-quote\00", align 1
@Sregexp_quote = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fregexp_quote }, i16 1, i16 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.34 = private unnamed_addr constant [20 x i8] c"newline-cache-check\00", align 1
@Snewline_cache_check = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fnewline_cache_check }, i16 0, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @shrink_regexp_cache() #0 {
entry:
  %cp = alloca %struct.regexp_cache*, align 8
  %0 = load %struct.regexp_cache*, %struct.regexp_cache** @searchbuf_head, align 8
  store %struct.regexp_cache* %0, %struct.regexp_cache** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %cmp = icmp ne %struct.regexp_cache* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %2, i32 0, i32 4
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf, i32 0, i32 2
  %3 = load i64, i64* %used, align 8
  %4 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf1 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %4, i32 0, i32 4
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf1, i32 0, i32 1
  store i64 %3, i64* %allocated, align 8
  %5 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf2 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %5, i32 0, i32 4
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf2, i32 0, i32 0
  %6 = load i8*, i8** %buffer, align 8
  %7 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf3 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %7, i32 0, i32 4
  %used4 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf3, i32 0, i32 2
  %8 = load i64, i64* %used4, align 8
  %call = call i8* @xrealloc(i8* %6, i64 %8)
  %9 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf5 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %9, i32 0, i32 4
  %buffer6 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf5, i32 0, i32 0
  store i8* %call, i8** %buffer6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %next = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %10, i32 0, i32 0
  %11 = load %struct.regexp_cache*, %struct.regexp_cache** %next, align 8
  store %struct.regexp_cache* %11, %struct.regexp_cache** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @clear_regexp_cache() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom
  %syntax_table = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx, i32 0, i32 3
  %2 = load i64, i64* %syntax_table, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp1 = icmp eq i64 %2, %call
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %3 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom3
  %regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx4, i32 0, i32 1
  store i64 %call2, i64* %regexp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind uwtable
define %struct.re_pattern_buffer* @compile_pattern(i64 %pattern, %struct.re_registers* %regp, i64 %translate, i1 zeroext %posix, i1 zeroext %multibyte) #0 {
entry:
  %pattern.addr = alloca i64, align 8
  %regp.addr = alloca %struct.re_registers*, align 8
  %translate.addr = alloca i64, align 8
  %posix.addr = alloca i8, align 1
  %multibyte.addr = alloca i8, align 1
  %cp = alloca %struct.regexp_cache*, align 8
  %cpp = alloca %struct.regexp_cache**, align 8
  store i64 %pattern, i64* %pattern.addr, align 8
  store %struct.re_registers* %regp, %struct.re_registers** %regp.addr, align 8
  store i64 %translate, i64* %translate.addr, align 8
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %frombool1 = zext i1 %multibyte to i8
  store i8 %frombool1, i8* %multibyte.addr, align 1
  store %struct.regexp_cache** @searchbuf_head, %struct.regexp_cache*** %cpp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.regexp_cache**, %struct.regexp_cache*** %cpp, align 8
  %1 = load %struct.regexp_cache*, %struct.regexp_cache** %0, align 8
  store %struct.regexp_cache* %1, %struct.regexp_cache** %cp, align 8
  %2 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %2, i32 0, i32 1
  %3 = load i64, i64* %regexp, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %compile_it

if.end:                                           ; preds = %for.cond
  %4 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %regexp2 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %4, i32 0, i32 1
  %5 = load i64, i64* %regexp2, align 8
  %call3 = call i64 @SCHARS(i64 %5)
  %6 = load i64, i64* %pattern.addr, align 8
  %call4 = call i64 @SCHARS(i64 %6)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %regexp6 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %7, i32 0, i32 1
  %8 = load i64, i64* %regexp6, align 8
  %call7 = call zeroext i1 @STRING_MULTIBYTE(i64 %8)
  %conv = zext i1 %call7 to i32
  %9 = load i64, i64* %pattern.addr, align 8
  %call8 = call zeroext i1 @STRING_MULTIBYTE(i64 %9)
  %conv9 = zext i1 %call8 to i32
  %cmp10 = icmp eq i32 %conv, %conv9
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.49

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %regexp13 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %10, i32 0, i32 1
  %11 = load i64, i64* %regexp13, align 8
  %12 = load i64, i64* %pattern.addr, align 8
  %call14 = call i64 @Fstring_equal(i64 %11, i64 %12)
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %call14, %call15
  br i1 %cmp16, label %if.end.49, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true.12
  %13 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %13, i32 0, i32 4
  %translate19 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf, i32 0, i32 5
  %14 = load i64, i64* %translate19, align 8
  %15 = load i64, i64* %translate.addr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %15, %call20
  br i1 %cmp21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.18
  %16 = load i64, i64* %translate.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 2, %cond.false ]
  %cmp23 = icmp eq i64 %14, %cond
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.49

land.lhs.true.25:                                 ; preds = %cond.end
  %17 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %posix26 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %17, i32 0, i32 6
  %18 = load i8, i8* %posix26, align 1
  %tobool = trunc i8 %18 to i1
  %conv27 = zext i1 %tobool to i32
  %19 = load i8, i8* %posix.addr, align 1
  %tobool28 = trunc i8 %19 to i1
  %conv29 = zext i1 %tobool28 to i32
  %cmp30 = icmp eq i32 %conv27, %conv29
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.49

land.lhs.true.32:                                 ; preds = %land.lhs.true.25
  %20 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %syntax_table = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %20, i32 0, i32 3
  %21 = load i64, i64* %syntax_table, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp34 = icmp eq i64 %21, %call33
  br i1 %cmp34, label %land.lhs.true.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.32
  %22 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %syntax_table36 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %22, i32 0, i32 3
  %23 = load i64, i64* %syntax_table36, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %syntax_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 16
  %25 = load i64, i64* %syntax_table_, align 8
  %cmp37 = icmp eq i64 %23, %25
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.49

land.lhs.true.39:                                 ; preds = %lor.lhs.false, %land.lhs.true.32
  %26 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %whitespace_regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %26, i32 0, i32 2
  %27 = load i64, i64* %whitespace_regexp, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %call40 = call i64 @Fequal(i64 %27, i64 %28)
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %call40, %call41
  br i1 %cmp42, label %if.end.49, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %land.lhs.true.39
  %29 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf45 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %29, i32 0, i32 4
  %charset_unibyte = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf45, i32 0, i32 8
  %30 = load i32, i32* %charset_unibyte, align 4
  %31 = load i32, i32* @charset_unibyte, align 4
  %cmp46 = icmp eq i32 %30, %31
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.44
  br label %for.end

if.end.49:                                        ; preds = %land.lhs.true.44, %land.lhs.true.39, %lor.lhs.false, %land.lhs.true.25, %cond.end, %land.lhs.true.12, %land.lhs.true, %if.end
  %32 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %next = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %32, i32 0, i32 0
  %33 = load %struct.regexp_cache*, %struct.regexp_cache** %next, align 8
  %cmp50 = icmp eq %struct.regexp_cache* %33, null
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  br label %compile_it

compile_it:                                       ; preds = %if.then.52, %if.then
  %34 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %35 = load i64, i64* %pattern.addr, align 8
  %36 = load i64, i64* %translate.addr, align 8
  %37 = load i8, i8* %posix.addr, align 1
  %tobool53 = trunc i8 %37 to i1
  call void @compile_pattern_1(%struct.regexp_cache* %34, i64 %35, i64 %36, i1 zeroext %tobool53)
  br label %for.end

if.end.54:                                        ; preds = %if.end.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %38 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %next55 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %38, i32 0, i32 0
  store %struct.regexp_cache** %next55, %struct.regexp_cache*** %cpp, align 8
  br label %for.cond

for.end:                                          ; preds = %compile_it, %if.then.48
  %39 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %next56 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %39, i32 0, i32 0
  %40 = load %struct.regexp_cache*, %struct.regexp_cache** %next56, align 8
  %41 = load %struct.regexp_cache**, %struct.regexp_cache*** %cpp, align 8
  store %struct.regexp_cache* %40, %struct.regexp_cache** %41, align 8
  %42 = load %struct.regexp_cache*, %struct.regexp_cache** @searchbuf_head, align 8
  %43 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %next57 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %43, i32 0, i32 0
  store %struct.regexp_cache* %42, %struct.regexp_cache** %next57, align 8
  %44 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  store %struct.regexp_cache* %44, %struct.regexp_cache** @searchbuf_head, align 8
  %45 = load %struct.re_registers*, %struct.re_registers** %regp.addr, align 8
  %tobool58 = icmp ne %struct.re_registers* %45, null
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %for.end
  %46 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf60 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %46, i32 0, i32 4
  %47 = load %struct.re_registers*, %struct.re_registers** %regp.addr, align 8
  %48 = load %struct.re_registers*, %struct.re_registers** %regp.addr, align 8
  %num_regs = getelementptr inbounds %struct.re_registers, %struct.re_registers* %48, i32 0, i32 0
  %49 = load i32, i32* %num_regs, align 4
  %50 = load %struct.re_registers*, %struct.re_registers** %regp.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %50, i32 0, i32 1
  %51 = load i64*, i64** %start, align 8
  %52 = load %struct.re_registers*, %struct.re_registers** %regp.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %52, i32 0, i32 2
  %53 = load i64*, i64** %end, align 8
  call void @re_set_registers(%struct.re_pattern_buffer* %buf60, %struct.re_registers* %47, i32 %49, i64* %51, i64* %53)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %for.end
  %54 = load i8, i8* %multibyte.addr, align 1
  %tobool62 = trunc i8 %54 to i1
  %conv63 = zext i1 %tobool62 to i32
  %55 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf64 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %55, i32 0, i32 4
  %target_multibyte = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf64, i32 0, i32 7
  %56 = trunc i32 %conv63 to i16
  %bf.load = load i16, i16* %target_multibyte, align 8
  %bf.value = and i16 %56, 1
  %bf.shl = shl i16 %bf.value, 9
  %bf.clear = and i16 %bf.load, -513
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %target_multibyte, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %57 = load %struct.regexp_cache*, %struct.regexp_cache** %cp, align 8
  %buf65 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %57, i32 0, i32 4
  ret %struct.re_pattern_buffer* %buf65
}

declare i64 @SCHARS(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @Fstring_equal(i64, i64) #1

declare i64 @Fequal(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @compile_pattern_1(%struct.regexp_cache* %cp, i64 %pattern, i64 %translate, i1 zeroext %posix) #0 {
entry:
  %cp.addr = alloca %struct.regexp_cache*, align 8
  %pattern.addr = alloca i64, align 8
  %translate.addr = alloca i64, align 8
  %posix.addr = alloca i8, align 1
  %val = alloca i8*, align 8
  %old = alloca i64, align 8
  store %struct.regexp_cache* %cp, %struct.regexp_cache** %cp.addr, align 8
  store i64 %pattern, i64* %pattern.addr, align 8
  store i64 %translate, i64* %translate.addr, align 8
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %0 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %0, i32 0, i32 1
  store i64 %call, i64* %regexp, align 8
  %1 = load i64, i64* %translate.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %translate.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 2, %cond.false ]
  %3 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %buf = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %3, i32 0, i32 4
  %translate2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf, i32 0, i32 5
  store i64 %cond, i64* %translate2, align 8
  %4 = load i8, i8* %posix.addr, align 1
  %tobool = trunc i8 %4 to i1
  %5 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %posix3 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %5, i32 0, i32 6
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* %posix3, align 1
  %6 = load i64, i64* %pattern.addr, align 8
  %call5 = call zeroext i1 @STRING_MULTIBYTE(i64 %6)
  %conv = zext i1 %call5 to i32
  %7 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %buf6 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %7, i32 0, i32 4
  %multibyte = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf6, i32 0, i32 7
  %8 = trunc i32 %conv to i16
  %bf.load = load i16, i16* %multibyte, align 8
  %bf.value = and i16 %8, 1
  %bf.shl = shl i16 %bf.value, 8
  %bf.clear = and i16 %bf.load, -257
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, i16* %multibyte, align 8
  %bf.result.cast = zext i16 %bf.value to i32
  %9 = load i32, i32* @charset_unibyte, align 4
  %10 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %buf7 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %10, i32 0, i32 4
  %charset_unibyte = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf7, i32 0, i32 8
  store i32 %9, i32* %charset_unibyte, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %call8 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call8, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %13 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %whitespace_regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %13, i32 0, i32 2
  store i64 %12, i64* %whitespace_regexp, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %14 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %whitespace_regexp10 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %14, i32 0, i32 2
  store i64 %call9, i64* %whitespace_regexp10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8, i8* %posix.addr, align 1
  %tobool11 = trunc i8 %15 to i1
  %cond13 = select i1 %tobool11, i64 0, i64 262144
  %or = or i64 3146244, %cond13
  %call14 = call i64 @re_set_syntax(i64 %or)
  store i64 %call14, i64* %old, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %call15 = call zeroext i1 @STRINGP(i64 %16)
  br i1 %call15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.end
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %call17 = call i8* @SSDATA(i64 %17)
  call void @re_set_whitespace_regexp(i8* %call17)
  br label %if.end.19

if.else.18:                                       ; preds = %if.end
  call void @re_set_whitespace_regexp(i8* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  %18 = load i64, i64* %pattern.addr, align 8
  %call20 = call i8* @SSDATA(i64 %18)
  %19 = load i64, i64* %pattern.addr, align 8
  %call21 = call i64 @SBYTES(i64 %19)
  %20 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %buf22 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %20, i32 0, i32 4
  %call23 = call i8* @re_compile_pattern(i8* %call20, i64 %call21, %struct.re_pattern_buffer* %buf22)
  store i8* %call23, i8** %val, align 8
  %21 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %buf24 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %21, i32 0, i32 4
  %used_syntax = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf24, i32 0, i32 7
  %bf.load25 = load i16, i16* %used_syntax, align 8
  %bf.lshr = lshr i16 %bf.load25, 7
  %bf.clear26 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear26 to i32
  %tobool27 = icmp ne i32 %bf.cast, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.19
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %syntax_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 16
  %23 = load i64, i64* %syntax_table_, align 8
  br label %cond.end.31

cond.false.29:                                    ; preds = %if.end.19
  %call30 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i64 [ %23, %cond.true.28 ], [ %call30, %cond.false.29 ]
  %24 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %syntax_table = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %24, i32 0, i32 3
  store i64 %cond32, i64* %syntax_table, align 8
  call void @re_set_whitespace_regexp(i8* null)
  %25 = load i64, i64* %old, align 8
  %call33 = call i64 @re_set_syntax(i64 %25)
  %26 = load i8*, i8** %val, align 8
  %tobool34 = icmp ne i8* %26, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.end.31
  %call36 = call i64 @builtin_lisp_symbol(i32 572)
  %27 = load i8*, i8** %val, align 8
  %call37 = call i64 @build_string(i8* %27)
  call void @xsignal1(i64 %call36, i64 %call37) #6
  unreachable

if.end.38:                                        ; preds = %cond.end.31
  %28 = load i64, i64* %pattern.addr, align 8
  %call39 = call i64 @Fcopy_sequence(i64 %28)
  %29 = load %struct.regexp_cache*, %struct.regexp_cache** %cp.addr, align 8
  %regexp40 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %29, i32 0, i32 1
  store i64 %call39, i64* %regexp40, align 8
  ret void
}

declare void @re_set_registers(%struct.re_pattern_buffer*, %struct.re_registers*, i32, i64*, i64*) #1

; Function Attrs: nounwind uwtable
define i64 @Flooking_at(i64 %regexp) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %call = call i64 @looking_at_1(i64 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @looking_at_1(i64 %string, i1 zeroext %posix) #0 {
entry:
  %string.addr = alloca i64, align 8
  %posix.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %i = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  store i64 %string, i64* %string.addr, align 8
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %0 = load i8, i8* @running_asynch_code, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @save_search_regs()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 25
  %2 = load i64, i64* %case_canon_table_, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_eqv_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 26
  %4 = load i64, i64* %case_eqv_table_, align 8
  call void @set_char_table_extras(i64 %2, i64 2, i64 %4)
  %5 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %5)
  %6 = load i64, i64* %string.addr, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call
  %cond = select i1 %cmp, %struct.re_registers* @search_regs, %struct.re_registers* null
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_fold_search_ = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 18
  %9 = load i64, i64* %case_fold_search_, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %9, %call1
  br i1 %cmp2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_3 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 25
  %11 = load i64, i64* %case_canon_table_3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %11, %cond.true ], [ %call4, %cond.false ]
  %12 = load i8, i8* %posix.addr, align 1
  %tobool6 = trunc i8 %12 to i1
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 39
  %14 = load i64, i64* %enable_multibyte_characters_, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %14, %call7
  %lnot = xor i1 %cmp8, true
  %call9 = call %struct.re_pattern_buffer* @compile_pattern(i64 %6, %struct.re_registers* %cond, i64 %cond5, i1 zeroext %tobool6, i1 zeroext %lnot)
  store %struct.re_pattern_buffer* %call9, %struct.re_pattern_buffer** %bufp, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %cond.end
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %15, %call10
  br i1 %cmp11, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %16, %call12
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %do.body
  %17 = load volatile i8, i8* @pending_signals, align 1
  %tobool15 = trunc i8 %17 to i1
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 78
  %19 = load i64, i64* %begv_byte, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 73
  %21 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %21, i32 0, i32 3
  %22 = load i64, i64* %gpt_byte, align 8
  %cmp19 = icmp sge i64 %19, %22
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %do.end
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text21 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text21, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 5
  %25 = load i64, i64* %gap_size, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %do.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.20
  %cond24 = phi i64 [ %25, %cond.true.20 ], [ 0, %cond.false.22 ]
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte25 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 78
  %27 = load i64, i64* %begv_byte25, align 8
  %add = add nsw i64 %cond24, %27
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text26 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text26, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 0
  %30 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %add
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr27, i8** %p1, align 8
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 73
  %32 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %gpt_byte29 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %32, i32 0, i32 3
  %33 = load i64, i64* %gpt_byte29, align 8
  %34 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte30 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 78
  %35 = load i64, i64* %begv_byte30, align 8
  %sub = sub nsw i64 %33, %35
  store i64 %sub, i64* %s1, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %beg32 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 0
  %38 = load i8*, i8** %beg32, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 73
  %40 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %gpt_byte34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %40, i32 0, i32 3
  %41 = load i64, i64* %gpt_byte34, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %38, i64 %41
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 73
  %43 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %gap_size37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %43, i32 0, i32 5
  %44 = load i64, i64* %gap_size37, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr35, i64 %44
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr38, i64 -1
  store i8* %add.ptr39, i8** %p2, align 8
  %45 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %45, i32 0, i32 80
  %46 = load i64, i64* %zv_byte, align 8
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text40 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text40, align 8
  %gpt_byte41 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 3
  %49 = load i64, i64* %gpt_byte41, align 8
  %sub42 = sub nsw i64 %46, %49
  store i64 %sub42, i64* %s2, align 8
  %50 = load i64, i64* %s1, align 8
  %cmp43 = icmp slt i64 %50, 0
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %cond.end.23
  %51 = load i8*, i8** %p1, align 8
  store i8* %51, i8** %p2, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte45 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 80
  %53 = load i64, i64* %zv_byte45, align 8
  %54 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte46 = getelementptr inbounds %struct.buffer, %struct.buffer* %54, i32 0, i32 78
  %55 = load i64, i64* %begv_byte46, align 8
  %sub47 = sub nsw i64 %53, %55
  store i64 %sub47, i64* %s2, align 8
  store i64 0, i64* %s1, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %cond.end.23
  %56 = load i64, i64* %s2, align 8
  %cmp49 = icmp slt i64 %56, 0
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte51 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 80
  %58 = load i64, i64* %zv_byte51, align 8
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte52 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 78
  %60 = load i64, i64* %begv_byte52, align 8
  %sub53 = sub nsw i64 %58, %60
  store i64 %sub53, i64* %s1, align 8
  store i64 0, i64* %s2, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.48
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call55, i64* @re_match_object, align 8
  %61 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %62 = load i8*, i8** %p1, align 8
  %63 = load i64, i64* %s1, align 8
  %64 = load i8*, i8** %p2, align 8
  %65 = load i64, i64* %s2, align 8
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 76
  %67 = load i64, i64* %pt_byte, align 8
  %add56 = add nsw i64 %67, 0
  %68 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte57 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 78
  %69 = load i64, i64* %begv_byte57, align 8
  %sub58 = sub nsw i64 %add56, %69
  %70 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp60 = icmp eq i64 %70, %call59
  %cond61 = select i1 %cmp60, %struct.re_registers* @search_regs, %struct.re_registers* null
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte62 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 80
  %72 = load i64, i64* %zv_byte62, align 8
  %73 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte63 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 78
  %74 = load i64, i64* %begv_byte63, align 8
  %sub64 = sub nsw i64 %72, %74
  %call65 = call i64 @re_match_2(%struct.re_pattern_buffer* %61, i8* %62, i64 %63, i8* %64, i64 %65, i64 %sub58, %struct.re_registers* %cond61, i64 %sub64)
  store i64 %call65, i64* %i, align 8
  store i8 0, i8* @immediate_quit, align 1
  %75 = load i64, i64* %i, align 8
  %cmp66 = icmp eq i64 %75, -2
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.54
  call void @matcher_overflow() #6
  unreachable

if.end.68:                                        ; preds = %if.end.54
  %76 = load i64, i64* %i, align 8
  %cmp69 = icmp sge i64 %76, 0
  br i1 %cmp69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.end.68
  %call71 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.74

cond.false.72:                                    ; preds = %if.end.68
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi i64 [ %call71, %cond.true.70 ], [ %call73, %cond.false.72 ]
  store i64 %cond75, i64* %val, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %77, %call76
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.98

land.lhs.true.78:                                 ; preds = %cond.end.74
  %78 = load i64, i64* %i, align 8
  %cmp79 = icmp sge i64 %78, 0
  br i1 %cmp79, label %if.then.80, label %if.end.98

if.then.80:                                       ; preds = %land.lhs.true.78
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.80
  %79 = load i64, i64* %i, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv = zext i32 %80 to i64
  %cmp81 = icmp slt i64 %79, %conv
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i64, i64* %i, align 8
  %82 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %82, i64 %81
  %83 = load i64, i64* %arrayidx, align 8
  %cmp83 = icmp sge i64 %83, 0
  br i1 %cmp83, label %if.then.85, label %if.end.96

if.then.85:                                       ; preds = %for.body
  %84 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx86 = getelementptr inbounds i64, i64* %86, i64 %85
  %87 = load i64, i64* %arrayidx86, align 8
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte87 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 78
  %89 = load i64, i64* %begv_byte87, align 8
  %add88 = add nsw i64 %87, %89
  %call89 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %84, i64 %add88)
  %90 = load i64, i64* %i, align 8
  %91 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx90 = getelementptr inbounds i64, i64* %91, i64 %90
  store i64 %call89, i64* %arrayidx90, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %93 = load i64, i64* %i, align 8
  %94 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx91 = getelementptr inbounds i64, i64* %94, i64 %93
  %95 = load i64, i64* %arrayidx91, align 8
  %96 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte92 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 78
  %97 = load i64, i64* %begv_byte92, align 8
  %add93 = add nsw i64 %95, %97
  %call94 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %92, i64 %add93)
  %98 = load i64, i64* %i, align 8
  %99 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %99, i64 %98
  store i64 %call94, i64* %arrayidx95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.85, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %100 = load i64, i64* %i, align 8
  %inc = add nsw i64 %100, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %102 = bitcast %struct.buffer* %101 to i8*
  %call97 = call i64 @make_lisp_ptr(i8* %102, i32 5)
  store i64 %call97, i64* @last_thing_searched, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %for.end, %land.lhs.true.78, %cond.end.74
  %103 = load i64, i64* %val, align 8
  ret i64 %103
}

; Function Attrs: nounwind uwtable
define i64 @Fposix_looking_at(i64 %regexp) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %call = call i64 @looking_at_1(i64 %0, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fstring_match(i64 %regexp, i64 %string, i64 %start) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %call = call i64 @string_match_1(i64 %0, i64 %1, i64 %2, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @string_match_1(i64 %regexp, i64 %string, i64 %start, i1 zeroext %posix) #0 {
entry:
  %retval = alloca i64, align 8
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %posix.addr = alloca i8, align 1
  %val = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  %pos = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %0 = load i8, i8* @running_asynch_code, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @save_search_regs()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %regexp.addr, align 8
  call void @CHECK_STRING(i64 %1)
  %2 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %2)
  %3 = load i64, i64* %start.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i64 0, i64* %pos, align 8
  store i64 0, i64* %pos_byte, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* %string.addr, align 8
  %call2 = call i64 @SCHARS(i64 %4)
  store i64 %call2, i64* %len, align 8
  %5 = load i64, i64* %start.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %and3 = and i32 %conv, -5
  %cmp4 = icmp eq i32 %and3, 2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call6 = call i64 @builtin_lisp_symbol(i32 559)
  %6 = load i64, i64* %start.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call6, i64 %6) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i64, i64* %start.addr, align 8
  %shr = ashr i64 %9, 2
  store i64 %shr, i64* %pos, align 8
  %10 = load i64, i64* %pos, align 8
  %cmp7 = icmp slt i64 %10, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i64, i64* %pos, align 8
  %sub = sub nsw i64 0, %11
  %12 = load i64, i64* %len, align 8
  %cmp9 = icmp sle i64 %sub, %12
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %len, align 8
  %14 = load i64, i64* %pos, align 8
  %add = add nsw i64 %13, %14
  store i64 %add, i64* %pos, align 8
  br label %if.end.19

if.else.12:                                       ; preds = %land.lhs.true, %cond.end
  %15 = load i64, i64* %pos, align 8
  %cmp13 = icmp sgt i64 0, %15
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %16 = load i64, i64* %pos, align 8
  %17 = load i64, i64* %len, align 8
  %cmp15 = icmp sgt i64 %16, %17
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.else.12
  %18 = load i64, i64* %string.addr, align 8
  %19 = load i64, i64* %start.addr, align 8
  call void @args_out_of_range(i64 %18, i64 %19) #6
  unreachable

if.end.18:                                        ; preds = %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.11
  %20 = load i64, i64* %string.addr, align 8
  %21 = load i64, i64* %pos, align 8
  %call20 = call i64 @string_char_to_byte(i64 %20, i64 %21)
  store i64 %call20, i64* %pos_byte, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.then.1
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 25
  %23 = load i64, i64* %case_canon_table_, align 8
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_eqv_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 26
  %25 = load i64, i64* %case_eqv_table_, align 8
  call void @set_char_table_extras(i64 %23, i64 2, i64 %25)
  %26 = load i64, i64* %regexp.addr, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %27, %call22
  %cond = select i1 %cmp23, %struct.re_registers* @search_regs, %struct.re_registers* null
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_fold_search_ = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 18
  %29 = load i64, i64* %case_fold_search_, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %29, %call25
  br i1 %cmp26, label %cond.false.30, label %cond.true.28

cond.true.28:                                     ; preds = %if.end.21
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_29 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 25
  %31 = load i64, i64* %case_canon_table_29, align 8
  br label %cond.end.32

cond.false.30:                                    ; preds = %if.end.21
  %call31 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi i64 [ %31, %cond.true.28 ], [ %call31, %cond.false.30 ]
  %32 = load i8, i8* %posix.addr, align 1
  %tobool34 = trunc i8 %32 to i1
  %33 = load i64, i64* %string.addr, align 8
  %call35 = call zeroext i1 @STRING_MULTIBYTE(i64 %33)
  %call36 = call %struct.re_pattern_buffer* @compile_pattern(i64 %26, %struct.re_registers* %cond, i64 %cond33, i1 zeroext %tobool34, i1 zeroext %call35)
  store %struct.re_pattern_buffer* %call36, %struct.re_pattern_buffer** %bufp, align 8
  store i8 1, i8* @immediate_quit, align 1
  %34 = load i64, i64* %string.addr, align 8
  store i64 %34, i64* @re_match_object, align 8
  %35 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %36 = load i64, i64* %string.addr, align 8
  %call37 = call i8* @SSDATA(i64 %36)
  %37 = load i64, i64* %string.addr, align 8
  %call38 = call i64 @SBYTES(i64 %37)
  %38 = load i64, i64* %pos_byte, align 8
  %39 = load i64, i64* %string.addr, align 8
  %call39 = call i64 @SBYTES(i64 %39)
  %40 = load i64, i64* %pos_byte, align 8
  %sub40 = sub nsw i64 %call39, %40
  %41 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %41, %call41
  %cond44 = select i1 %cmp42, %struct.re_registers* @search_regs, %struct.re_registers* null
  %call45 = call i64 @re_search(%struct.re_pattern_buffer* %35, i8* %call37, i64 %call38, i64 %38, i64 %sub40, %struct.re_registers* %cond44)
  store i64 %call45, i64* %val, align 8
  store i8 0, i8* @immediate_quit, align 1
  %42 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %42, %call46
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %cond.end.32
  %call50 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call50, i64* @last_thing_searched, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %cond.end.32
  %43 = load i64, i64* %val, align 8
  %cmp52 = icmp eq i64 %43, -2
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  call void @matcher_overflow() #6
  unreachable

if.end.55:                                        ; preds = %if.end.51
  %44 = load i64, i64* %val, align 8
  %cmp56 = icmp slt i64 %44, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.55
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call59, i64* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.55
  %45 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp62 = icmp eq i64 %45, %call61
  br i1 %cmp62, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %if.end.60
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.64
  %46 = load i64, i64* %i, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv65 = zext i32 %47 to i64
  %cmp66 = icmp slt i64 %46, %conv65
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i64, i64* %i, align 8
  %49 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %49, i64 %48
  %50 = load i64, i64* %arrayidx, align 8
  %cmp68 = icmp sge i64 %50, 0
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %for.body
  %51 = load i64, i64* %string.addr, align 8
  %52 = load i64, i64* %i, align 8
  %53 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx71 = getelementptr inbounds i64, i64* %53, i64 %52
  %54 = load i64, i64* %arrayidx71, align 8
  %call72 = call i64 @string_byte_to_char(i64 %51, i64 %54)
  %55 = load i64, i64* %i, align 8
  %56 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx73 = getelementptr inbounds i64, i64* %56, i64 %55
  store i64 %call72, i64* %arrayidx73, align 8
  %57 = load i64, i64* %string.addr, align 8
  %58 = load i64, i64* %i, align 8
  %59 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx74 = getelementptr inbounds i64, i64* %59, i64 %58
  %60 = load i64, i64* %arrayidx74, align 8
  %call75 = call i64 @string_byte_to_char(i64 %57, i64 %60)
  %61 = load i64, i64* %i, align 8
  %62 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %62, i64 %61
  store i64 %call75, i64* %arrayidx76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.70, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %63 = load i64, i64* %i, align 8
  %inc = add nsw i64 %63, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.78

if.end.78:                                        ; preds = %for.end, %if.end.60
  %64 = load i64, i64* %string.addr, align 8
  %65 = load i64, i64* %val, align 8
  %call79 = call i64 @string_byte_to_char(i64 %64, i64 %65)
  %shl = shl i64 %call79, 2
  %add80 = add i64 %shl, 2
  store i64 %add80, i64* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.58
  %66 = load i64, i64* %retval
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define i64 @Fposix_string_match(i64 %regexp, i64 %string, i64 %start) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %string.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %call = call i64 @string_match_1(i64 %0, i64 %1, i64 %2, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @fast_string_match_internal(i64 %regexp, i64 %string, i64 %table) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %table.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %table, i64* %table.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %table.addr, align 8
  %2 = load i64, i64* %string.addr, align 8
  %call = call zeroext i1 @STRING_MULTIBYTE(i64 %2)
  %call1 = call %struct.re_pattern_buffer* @compile_pattern(i64 %0, %struct.re_registers* null, i64 %1, i1 zeroext false, i1 zeroext %call)
  store %struct.re_pattern_buffer* %call1, %struct.re_pattern_buffer** %bufp, align 8
  store i8 1, i8* @immediate_quit, align 1
  %3 = load i64, i64* %string.addr, align 8
  store i64 %3, i64* @re_match_object, align 8
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %5 = load i64, i64* %string.addr, align 8
  %call2 = call i8* @SSDATA(i64 %5)
  %6 = load i64, i64* %string.addr, align 8
  %call3 = call i64 @SBYTES(i64 %6)
  %7 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @SBYTES(i64 %7)
  %call5 = call i64 @re_search(%struct.re_pattern_buffer* %4, i8* %call2, i64 %call3, i64 0, i64 %call4, %struct.re_registers* null)
  store i64 %call5, i64* %val, align 8
  store i8 0, i8* @immediate_quit, align 1
  %8 = load i64, i64* %val, align 8
  ret i64 %8
}

declare i64 @re_search(%struct.re_pattern_buffer*, i8*, i64, i64, i64, %struct.re_registers*) #1

declare i8* @SSDATA(i64) #1

declare i64 @SBYTES(i64) #1

; Function Attrs: nounwind uwtable
define i64 @fast_c_string_match_ignore_case(i64 %regexp, i8* %string, i64 %len) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %call = call i64 @string_make_unibyte(i64 %0)
  store i64 %call, i64* %regexp.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call1, i64* @re_match_object, align 8
  %1 = load i64, i64* %regexp.addr, align 8
  %2 = load i64, i64* @Vascii_canon_table, align 8
  %call2 = call %struct.re_pattern_buffer* @compile_pattern(i64 %1, %struct.re_registers* null, i64 %2, i1 zeroext false, i1 zeroext false)
  store %struct.re_pattern_buffer* %call2, %struct.re_pattern_buffer** %bufp, align 8
  store i8 1, i8* @immediate_quit, align 1
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %6 = load i64, i64* %len.addr, align 8
  %call3 = call i64 @re_search(%struct.re_pattern_buffer* %3, i8* %4, i64 %5, i64 0, i64 %6, %struct.re_registers* null)
  store i64 %call3, i64* %val, align 8
  store i8 0, i8* @immediate_quit, align 1
  %7 = load i64, i64* %val, align 8
  ret i64 %7
}

declare i64 @string_make_unibyte(i64) #1

; Function Attrs: nounwind uwtable
define i64 @fast_looking_at(i64 %regexp, i64 %pos, i64 %pos_byte, i64 %limit, i64 %limit_byte, i64 %string) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %limit_byte.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %buf = alloca %struct.re_pattern_buffer*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %len = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i64 %limit_byte, i64* %limit_byte.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %pos_byte.addr, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i64, i64* %string.addr, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %call2 = call i64 @string_char_to_byte(i64 %2, i64 %3)
  store i64 %call2, i64* %pos_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i64, i64* %limit_byte.addr, align 8
  %cmp3 = icmp slt i64 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* %string.addr, align 8
  %6 = load i64, i64* %limit.addr, align 8
  %call5 = call i64 @string_char_to_byte(i64 %5, i64 %6)
  store i64 %call5, i64* %limit_byte.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  store i8* null, i8** %p1, align 8
  store i64 0, i64* %s1, align 8
  %7 = load i64, i64* %string.addr, align 8
  %call7 = call i8* @SDATA(i64 %7)
  store i8* %call7, i8** %p2, align 8
  %8 = load i64, i64* %string.addr, align 8
  %call8 = call i64 @SBYTES(i64 %8)
  store i64 %call8, i64* %s2, align 8
  %9 = load i64, i64* %string.addr, align 8
  store i64 %9, i64* @re_match_object, align 8
  %10 = load i64, i64* %string.addr, align 8
  %call9 = call zeroext i1 @STRING_MULTIBYTE(i64 %10)
  %frombool = zext i1 %call9 to i8
  store i8 %frombool, i8* %multibyte, align 1
  br label %if.end.58

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %pos_byte.addr, align 8
  %cmp10 = icmp slt i64 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %13 = load i64, i64* %pos.addr, align 8
  %call12 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %12, i64 %13)
  store i64 %call12, i64* %pos_byte.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  %14 = load i64, i64* %limit_byte.addr, align 8
  %cmp14 = icmp slt i64 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %16 = load i64, i64* %limit.addr, align 8
  %call16 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %15, i64 %16)
  store i64 %call16, i64* %limit_byte.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 78
  %18 = load i64, i64* %begv_byte, align 8
  %19 = load i64, i64* %pos_byte.addr, align 8
  %sub = sub nsw i64 %19, %18
  store i64 %sub, i64* %pos_byte.addr, align 8
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte18 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 78
  %21 = load i64, i64* %begv_byte18, align 8
  %22 = load i64, i64* %limit_byte.addr, align 8
  %sub19 = sub nsw i64 %22, %21
  store i64 %sub19, i64* %limit_byte.addr, align 8
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte20 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 78
  %24 = load i64, i64* %begv_byte20, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 3
  %27 = load i64, i64* %gpt_byte, align 8
  %cmp21 = icmp sge i64 %24, %27
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 5
  %30 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %30, %cond.true ], [ 0, %cond.false ]
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte23 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 78
  %32 = load i64, i64* %begv_byte23, align 8
  %add = add nsw i64 %cond, %32
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text24 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text24, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 0
  %35 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %add
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr25, i8** %p1, align 8
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text26 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 73
  %37 = load %struct.buffer_text*, %struct.buffer_text** %text26, align 8
  %gpt_byte27 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %37, i32 0, i32 3
  %38 = load i64, i64* %gpt_byte27, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte28 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 78
  %40 = load i64, i64* %begv_byte28, align 8
  %sub29 = sub nsw i64 %38, %40
  store i64 %sub29, i64* %s1, align 8
  %41 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text30 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 73
  %42 = load %struct.buffer_text*, %struct.buffer_text** %text30, align 8
  %beg31 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %42, i32 0, i32 0
  %43 = load i8*, i8** %beg31, align 8
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text32 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 73
  %45 = load %struct.buffer_text*, %struct.buffer_text** %text32, align 8
  %gpt_byte33 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %45, i32 0, i32 3
  %46 = load i64, i64* %gpt_byte33, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %43, i64 %46
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text35 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text35, align 8
  %gap_size36 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 5
  %49 = load i64, i64* %gap_size36, align 8
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr34, i64 %49
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 -1
  store i8* %add.ptr38, i8** %p2, align 8
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 80
  %51 = load i64, i64* %zv_byte, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text39 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text39, align 8
  %gpt_byte40 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 3
  %54 = load i64, i64* %gpt_byte40, align 8
  %sub41 = sub nsw i64 %51, %54
  store i64 %sub41, i64* %s2, align 8
  %55 = load i64, i64* %s1, align 8
  %cmp42 = icmp slt i64 %55, 0
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %cond.end
  %56 = load i8*, i8** %p1, align 8
  store i8* %56, i8** %p2, align 8
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte44 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 80
  %58 = load i64, i64* %zv_byte44, align 8
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte45 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 78
  %60 = load i64, i64* %begv_byte45, align 8
  %sub46 = sub nsw i64 %58, %60
  store i64 %sub46, i64* %s2, align 8
  store i64 0, i64* %s1, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %cond.end
  %61 = load i64, i64* %s2, align 8
  %cmp48 = icmp slt i64 %61, 0
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %62 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte50 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i32 0, i32 80
  %63 = load i64, i64* %zv_byte50, align 8
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte51 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 78
  %65 = load i64, i64* %begv_byte51, align 8
  %sub52 = sub nsw i64 %63, %65
  store i64 %sub52, i64* %s1, align 8
  store i64 0, i64* %s2, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.47
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* @re_match_object, align 8
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %66, i32 0, i32 39
  %67 = load i64, i64* %enable_multibyte_characters_, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp56 = icmp eq i64 %67, %call55
  %lnot = xor i1 %cmp56, true
  %frombool57 = zext i1 %lnot to i8
  store i8 %frombool57, i8* %multibyte, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.53, %if.end.6
  %68 = load i64, i64* %regexp.addr, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %69 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %69 to i1
  %call60 = call %struct.re_pattern_buffer* @compile_pattern(i64 %68, %struct.re_registers* null, i64 %call59, i1 zeroext false, i1 zeroext %tobool)
  store %struct.re_pattern_buffer* %call60, %struct.re_pattern_buffer** %buf, align 8
  store i8 1, i8* @immediate_quit, align 1
  %70 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %buf, align 8
  %71 = load i8*, i8** %p1, align 8
  %72 = load i64, i64* %s1, align 8
  %73 = load i8*, i8** %p2, align 8
  %74 = load i64, i64* %s2, align 8
  %75 = load i64, i64* %pos_byte.addr, align 8
  %76 = load i64, i64* %limit_byte.addr, align 8
  %call61 = call i64 @re_match_2(%struct.re_pattern_buffer* %70, i8* %71, i64 %72, i8* %73, i64 %74, i64 %75, %struct.re_registers* null, i64 %76)
  store i64 %call61, i64* %len, align 8
  store i8 0, i8* @immediate_quit, align 1
  %77 = load i64, i64* %len, align 8
  ret i64 %77
}

declare zeroext i1 @STRINGP(i64) #1

declare i64 @string_char_to_byte(i64, i64) #1

declare i8* @SDATA(i64) #1

declare i64 @buf_charpos_to_bytepos(%struct.buffer*, i64) #1

declare i64 @re_match_2(%struct.re_pattern_buffer*, i8*, i64, i8*, i64, i64, %struct.re_registers*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @find_newline(i64 %start, i64 %start_byte, i64 %end, i64 %end_byte, i64 %count, i64* %shortage, i64* %bytepos, i1 zeroext %allow_quit) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %start_byte.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %end_byte.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %shortage.addr = alloca i64*, align 8
  %bytepos.addr = alloca i64*, align 8
  %allow_quit.addr = alloca i8, align 1
  %newline_cache = alloca %struct.region_cache*, align 8
  %direction = alloca i32, align 4
  %cache_buffer = alloca %struct.buffer*, align 8
  %tem = alloca i64, align 8
  %ceiling_byte = alloca i64, align 8
  %next_change = alloca i64, align 8
  %result = alloca i32, align 4
  %lim1 = alloca i64, align 8
  %lim_addr = alloca i8*, align 8
  %lim_byte = alloca i64, align 8
  %base = alloca i64, align 8
  %cursor = alloca i64, align 8
  %next = alloca i64, align 8
  %nl = alloca i8*, align 8
  %tem196 = alloca i64, align 8
  %ceiling_byte197 = alloca i64, align 8
  %next_change200 = alloca i64, align 8
  %result201 = alloca i32, align 4
  %lim1209 = alloca i64, align 8
  %ceiling_addr = alloca i8*, align 8
  %base331 = alloca i64, align 8
  %cursor333 = alloca i64, align 8
  %prev = alloca i64, align 8
  %nl338 = alloca i8*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %start_byte, i64* %start_byte.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %end_byte, i64* %end_byte.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64* %shortage, i64** %shortage.addr, align 8
  store i64* %bytepos, i64** %bytepos.addr, align 8
  %frombool = zext i1 %allow_quit to i8
  store i8 %frombool, i8* %allow_quit.addr, align 1
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %direction, align 4
  %1 = load i64, i64* %end.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 79
  %3 = load i64, i64* %zv, align 8
  store i64 %3, i64* %end.addr, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 80
  %5 = load i64, i64* %zv_byte, align 8
  store i64 %5, i64* %end_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  store i32 -1, i32* %direction, align 4
  %6 = load i64, i64* %end.addr, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 77
  %8 = load i64, i64* %begv, align 8
  store i64 %8, i64* %end.addr, align 8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 78
  %10 = load i64, i64* %begv_byte, align 8
  store i64 %10, i64* %end_byte.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  %11 = load i64, i64* %end_byte.addr, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %13 = load i64, i64* %end.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %12, i64 %13)
  store i64 %call, i64* %end_byte.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %call9 = call %struct.region_cache* @newline_cache_on_off(%struct.buffer* %14)
  store %struct.region_cache* %call9, %struct.region_cache** %newline_cache, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 81
  %16 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool10 = icmp ne %struct.buffer* %16, null
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %base_buffer12 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 81
  %18 = load %struct.buffer*, %struct.buffer** %base_buffer12, align 8
  store %struct.buffer* %18, %struct.buffer** %cache_buffer, align 8
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %19, %struct.buffer** %cache_buffer, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.11
  %20 = load i64*, i64** %shortage.addr, align 8
  %cmp15 = icmp ne i64* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %21 = load i64*, i64** %shortage.addr, align 8
  store i64 0, i64* %21, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %22 = load i8, i8* %allow_quit.addr, align 1
  %tobool18 = trunc i8 %22 to i1
  %frombool19 = zext i1 %tobool18 to i8
  store i8 %frombool19, i8* @immediate_quit, align 1
  %23 = load i64, i64* %count.addr, align 8
  %cmp20 = icmp sgt i64 %23, 0
  br i1 %cmp20, label %if.then.21, label %if.else.191

if.then.21:                                       ; preds = %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.21
  %24 = load i64, i64* %start.addr, align 8
  %25 = load i64, i64* %end.addr, align 8
  %cmp22 = icmp ne i64 %24, %25
  br i1 %cmp22, label %while.body, label %while.end.190

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %end_byte.addr, align 8
  %sub = sub nsw i64 %26, 1
  store i64 %sub, i64* %ceiling_byte, align 8
  %27 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool23 = icmp ne %struct.region_cache* %27, null
  br i1 %tobool23, label %if.then.24, label %if.else.90

if.then.24:                                       ; preds = %while.body
  store i32 1, i32* %result, align 4
  store i8 0, i8* @immediate_quit, align 1
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.68, %if.then.24
  %28 = load i64, i64* %start.addr, align 8
  %29 = load i64, i64* %end.addr, align 8
  %cmp26 = icmp slt i64 %28, %29
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.25
  %30 = load i32, i32* %result, align 4
  %tobool27 = icmp ne i32 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.25
  %31 = phi i1 [ false, %while.cond.25 ], [ %tobool27, %land.rhs ]
  br i1 %31, label %while.body.28, label %while.end.69

while.body.28:                                    ; preds = %land.end
  %32 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %33 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %34 = load i64, i64* %start.addr, align 8
  %call29 = call i32 @region_cache_forward(%struct.buffer* %32, %struct.region_cache* %33, i64 %34, i64* %next_change)
  store i32 %call29, i32* %result, align 4
  %35 = load i32, i32* %result, align 4
  %tobool30 = icmp ne i32 %35, 0
  br i1 %tobool30, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %while.body.28
  %36 = load i64, i64* %next_change, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv32 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv32, align 8
  %cmp33 = icmp sgt i64 %36, %38
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.31
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv35 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 79
  %40 = load i64, i64* %zv35, align 8
  store i64 %40, i64* %next_change, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.31
  %41 = load i64, i64* %next_change, align 8
  store i64 %41, i64* %start.addr, align 8
  %42 = load i64, i64* %end.addr, align 8
  store i64 %42, i64* %next_change, align 8
  store i64 %42, i64* %lim1, align 8
  br label %if.end.39

if.else.37:                                       ; preds = %while.body.28
  %43 = load i64, i64* %next_change, align 8
  %44 = load i64, i64* %end.addr, align 8
  %cmp38 = icmp slt i64 %43, %44
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.37
  %45 = load i64, i64* %next_change, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else.37
  %46 = load i64, i64* %end.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %45, %cond.true ], [ %46, %cond.false ]
  store i64 %cond, i64* %lim1, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %cond.end, %if.end.36
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %48 = load i64, i64* %start.addr, align 8
  %call40 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %47, i64 %48)
  store i64 %call40, i64* %start_byte.addr, align 8
  br label %while.cond.41

while.cond.41:                                    ; preds = %if.end.63, %if.end.39
  %49 = load i64, i64* %start.addr, align 8
  %50 = load i64, i64* %lim1, align 8
  %cmp42 = icmp slt i64 %49, %50
  br i1 %cmp42, label %land.rhs.43, label %land.end.54

land.rhs.43:                                      ; preds = %while.cond.41
  %51 = load i64, i64* %start_byte.addr, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 3
  %54 = load i64, i64* %gpt_byte, align 8
  %cmp44 = icmp sge i64 %51, %54
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %land.rhs.43
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text46 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text46, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 5
  %57 = load i64, i64* %gap_size, align 8
  br label %cond.end.48

cond.false.47:                                    ; preds = %land.rhs.43
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i64 [ %57, %cond.true.45 ], [ 0, %cond.false.47 ]
  %58 = load i64, i64* %start_byte.addr, align 8
  %add = add nsw i64 %cond49, %58
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text50 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 73
  %60 = load %struct.buffer_text*, %struct.buffer_text** %text50, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %60, i32 0, i32 0
  %61 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %add
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %62 = load i8, i8* %add.ptr51, align 1
  %conv = zext i8 %62 to i32
  %cmp52 = icmp eq i32 %conv, 10
  br label %land.end.54

land.end.54:                                      ; preds = %cond.end.48, %while.cond.41
  %63 = phi i1 [ false, %while.cond.41 ], [ %cmp52, %cond.end.48 ]
  br i1 %63, label %while.body.55, label %while.end

while.body.55:                                    ; preds = %land.end.54
  %64 = load i64, i64* %start_byte.addr, align 8
  %inc = add nsw i64 %64, 1
  store i64 %inc, i64* %start_byte.addr, align 8
  %65 = load i64, i64* %start.addr, align 8
  %inc56 = add nsw i64 %65, 1
  store i64 %inc56, i64* %start.addr, align 8
  %66 = load i64, i64* %count.addr, align 8
  %dec = add nsw i64 %66, -1
  store i64 %dec, i64* %count.addr, align 8
  %cmp57 = icmp eq i64 %dec, 0
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %while.body.55
  %67 = load i64*, i64** %bytepos.addr, align 8
  %tobool60 = icmp ne i64* %67, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.59
  %68 = load i64, i64* %start_byte.addr, align 8
  %69 = load i64*, i64** %bytepos.addr, align 8
  store i64 %68, i64* %69, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.59
  %70 = load i64, i64* %start.addr, align 8
  store i64 %70, i64* %retval
  br label %return

if.end.63:                                        ; preds = %while.body.55
  br label %while.cond.41

while.end:                                        ; preds = %land.end.54
  %71 = load i64, i64* %start.addr, align 8
  %72 = load i64, i64* %next_change, align 8
  %cmp64 = icmp slt i64 %71, %72
  br i1 %cmp64, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %while.end
  %73 = load i32, i32* %result, align 4
  %tobool66 = icmp ne i32 %73, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true
  br label %while.end.69

if.end.68:                                        ; preds = %land.lhs.true, %while.end
  store i32 1, i32* %result, align 4
  br label %while.cond.25

while.end.69:                                     ; preds = %if.then.67, %land.end
  %74 = load i64, i64* %start.addr, align 8
  %75 = load i64, i64* %end.addr, align 8
  %cmp70 = icmp sge i64 %74, %75
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.end.69
  %76 = load i64, i64* %end.addr, align 8
  store i64 %76, i64* %start.addr, align 8
  %77 = load i64, i64* %end_byte.addr, align 8
  store i64 %77, i64* %start_byte.addr, align 8
  br label %while.end.190

if.end.73:                                        ; preds = %while.end.69
  %78 = load i8, i8* %allow_quit.addr, align 1
  %tobool74 = trunc i8 %78 to i1
  %frombool75 = zext i1 %tobool74 to i8
  store i8 %frombool75, i8* @immediate_quit, align 1
  %79 = load i64, i64* %start_byte.addr, align 8
  %80 = load i64, i64* %ceiling_byte, align 8
  %cmp76 = icmp sgt i64 %79, %80
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.73
  %81 = load i64, i64* %ceiling_byte, align 8
  store i64 %81, i64* %start_byte.addr, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.73
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %83 = load i64, i64* %next_change, align 8
  %call80 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %82, i64 %83)
  %sub81 = sub nsw i64 %call80, 1
  %84 = load i64, i64* %ceiling_byte, align 8
  %cmp82 = icmp slt i64 %sub81, %84
  br i1 %cmp82, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %if.end.79
  %85 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %86 = load i64, i64* %next_change, align 8
  %call85 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %85, i64 %86)
  %sub86 = sub nsw i64 %call85, 1
  br label %cond.end.88

cond.false.87:                                    ; preds = %if.end.79
  %87 = load i64, i64* %ceiling_byte, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.84
  %cond89 = phi i64 [ %sub86, %cond.true.84 ], [ %87, %cond.false.87 ]
  store i64 %cond89, i64* %ceiling_byte, align 8
  br label %if.end.96

if.else.90:                                       ; preds = %while.body
  %88 = load i64, i64* %start_byte.addr, align 8
  %cmp91 = icmp eq i64 %88, -1
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.else.90
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %90 = load i64, i64* %start.addr, align 8
  %call94 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %89, i64 %90)
  store i64 %call94, i64* %start_byte.addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.else.90
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %cond.end.88
  %91 = load i64, i64* %start_byte.addr, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text97 = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 73
  %93 = load %struct.buffer_text*, %struct.buffer_text** %text97, align 8
  %gpt_byte98 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %93, i32 0, i32 3
  %94 = load i64, i64* %gpt_byte98, align 8
  %cmp99 = icmp slt i64 %91, %94
  br i1 %cmp99, label %land.lhs.true.101, label %cond.false.109

land.lhs.true.101:                                ; preds = %if.end.96
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text102 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text102, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 1
  %97 = load i64, i64* %gpt, align 8
  %98 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv103 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 79
  %99 = load i64, i64* %zv103, align 8
  %cmp104 = icmp slt i64 %97, %99
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %land.lhs.true.101
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text107 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text107, align 8
  %gpt_byte108 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 3
  %102 = load i64, i64* %gpt_byte108, align 8
  br label %cond.end.111

cond.false.109:                                   ; preds = %land.lhs.true.101, %if.end.96
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte110 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 80
  %104 = load i64, i64* %zv_byte110, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.106
  %cond112 = phi i64 [ %102, %cond.true.106 ], [ %104, %cond.false.109 ]
  %sub113 = sub nsw i64 %cond112, 1
  store i64 %sub113, i64* %tem, align 8
  %105 = load i64, i64* %tem, align 8
  %106 = load i64, i64* %ceiling_byte, align 8
  %cmp114 = icmp slt i64 %105, %106
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.end.111
  %107 = load i64, i64* %tem, align 8
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.end.111
  %108 = load i64, i64* %ceiling_byte, align 8
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi i64 [ %107, %cond.true.116 ], [ %108, %cond.false.117 ]
  store i64 %cond119, i64* %ceiling_byte, align 8
  %109 = load i64, i64* %ceiling_byte, align 8
  %110 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text120 = getelementptr inbounds %struct.buffer, %struct.buffer* %110, i32 0, i32 73
  %111 = load %struct.buffer_text*, %struct.buffer_text** %text120, align 8
  %gpt_byte121 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %111, i32 0, i32 3
  %112 = load i64, i64* %gpt_byte121, align 8
  %cmp122 = icmp sge i64 %109, %112
  br i1 %cmp122, label %cond.true.124, label %cond.false.127

cond.true.124:                                    ; preds = %cond.end.118
  %113 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text125 = getelementptr inbounds %struct.buffer, %struct.buffer* %113, i32 0, i32 73
  %114 = load %struct.buffer_text*, %struct.buffer_text** %text125, align 8
  %gap_size126 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %114, i32 0, i32 5
  %115 = load i64, i64* %gap_size126, align 8
  br label %cond.end.128

cond.false.127:                                   ; preds = %cond.end.118
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.124
  %cond129 = phi i64 [ %115, %cond.true.124 ], [ 0, %cond.false.127 ]
  %116 = load i64, i64* %ceiling_byte, align 8
  %add130 = add nsw i64 %cond129, %116
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text131 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 73
  %118 = load %struct.buffer_text*, %struct.buffer_text** %text131, align 8
  %beg132 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %118, i32 0, i32 0
  %119 = load i8*, i8** %beg132, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %119, i64 %add130
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr133, i64 -1
  %add.ptr135 = getelementptr inbounds i8, i8* %add.ptr134, i64 1
  store i8* %add.ptr135, i8** %lim_addr, align 8
  %120 = load i64, i64* %ceiling_byte, align 8
  %add136 = add nsw i64 %120, 1
  store i64 %add136, i64* %lim_byte, align 8
  %121 = load i64, i64* %start_byte.addr, align 8
  %122 = load i64, i64* %lim_byte, align 8
  %sub137 = sub nsw i64 %121, %122
  store i64 %sub137, i64* %base, align 8
  %123 = load i64, i64* %base, align 8
  store i64 %123, i64* %cursor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.128
  %124 = load i64, i64* %cursor, align 8
  %cmp138 = icmp slt i64 %124, 0
  br i1 %cmp138, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %125 = load i8*, i8** %lim_addr, align 8
  %126 = load i64, i64* %cursor, align 8
  %add.ptr140 = getelementptr inbounds i8, i8* %125, i64 %126
  %127 = load i64, i64* %cursor, align 8
  %sub141 = sub nsw i64 0, %127
  %call142 = call i8* @memchr(i8* %add.ptr140, i32 10, i64 %sub141) #7
  store i8* %call142, i8** %nl, align 8
  %128 = load i8*, i8** %nl, align 8
  %tobool143 = icmp ne i8* %128, null
  br i1 %tobool143, label %cond.true.144, label %cond.false.145

cond.true.144:                                    ; preds = %for.body
  %129 = load i8*, i8** %nl, align 8
  %130 = load i8*, i8** %lim_addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %130 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.146

cond.false.145:                                   ; preds = %for.body
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.144
  %cond147 = phi i64 [ %sub.ptr.sub, %cond.true.144 ], [ 0, %cond.false.145 ]
  store i64 %cond147, i64* %next, align 8
  %131 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool148 = icmp ne %struct.region_cache* %131, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.173

land.lhs.true.149:                                ; preds = %cond.end.146
  %132 = load i64, i64* %cursor, align 8
  %133 = load i64, i64* %next, align 8
  %cmp150 = icmp ne i64 %132, %133
  br i1 %cmp150, label %if.then.152, label %if.end.173

if.then.152:                                      ; preds = %land.lhs.true.149
  %134 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %135 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %136 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %137 = load i64, i64* %lim_byte, align 8
  %138 = load i64, i64* %cursor, align 8
  %add153 = add nsw i64 %137, %138
  %call154 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %136, i64 %add153)
  %139 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %140 = load i64, i64* %lim_byte, align 8
  %141 = load i64, i64* %next, align 8
  %add155 = add nsw i64 %140, %141
  %call156 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %139, i64 %add155)
  call void @know_region_cache(%struct.buffer* %134, %struct.region_cache* %135, i64 %call154, i64 %call156)
  %142 = load i64, i64* %ceiling_byte, align 8
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text157 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 73
  %144 = load %struct.buffer_text*, %struct.buffer_text** %text157, align 8
  %gpt_byte158 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %144, i32 0, i32 3
  %145 = load i64, i64* %gpt_byte158, align 8
  %cmp159 = icmp sge i64 %142, %145
  br i1 %cmp159, label %cond.true.161, label %cond.false.164

cond.true.161:                                    ; preds = %if.then.152
  %146 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text162 = getelementptr inbounds %struct.buffer, %struct.buffer* %146, i32 0, i32 73
  %147 = load %struct.buffer_text*, %struct.buffer_text** %text162, align 8
  %gap_size163 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %147, i32 0, i32 5
  %148 = load i64, i64* %gap_size163, align 8
  br label %cond.end.165

cond.false.164:                                   ; preds = %if.then.152
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.164, %cond.true.161
  %cond166 = phi i64 [ %148, %cond.true.161 ], [ 0, %cond.false.164 ]
  %149 = load i64, i64* %ceiling_byte, align 8
  %add167 = add nsw i64 %cond166, %149
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text168 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 73
  %151 = load %struct.buffer_text*, %struct.buffer_text** %text168, align 8
  %beg169 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %151, i32 0, i32 0
  %152 = load i8*, i8** %beg169, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %152, i64 %add167
  %add.ptr171 = getelementptr inbounds i8, i8* %add.ptr170, i64 -1
  %add.ptr172 = getelementptr inbounds i8, i8* %add.ptr171, i64 1
  store i8* %add.ptr172, i8** %lim_addr, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %cond.end.165, %land.lhs.true.149, %cond.end.146
  %153 = load i8*, i8** %nl, align 8
  %tobool174 = icmp ne i8* %153, null
  br i1 %tobool174, label %if.end.176, label %if.then.175

if.then.175:                                      ; preds = %if.end.173
  br label %for.end

if.end.176:                                       ; preds = %if.end.173
  %154 = load i64, i64* %next, align 8
  %inc177 = add nsw i64 %154, 1
  store i64 %inc177, i64* %next, align 8
  %155 = load i64, i64* %count.addr, align 8
  %dec178 = add nsw i64 %155, -1
  store i64 %dec178, i64* %count.addr, align 8
  %cmp179 = icmp eq i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.end.188

if.then.181:                                      ; preds = %if.end.176
  store i8 0, i8* @immediate_quit, align 1
  %156 = load i64*, i64** %bytepos.addr, align 8
  %tobool182 = icmp ne i64* %156, null
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.then.181
  %157 = load i64, i64* %lim_byte, align 8
  %158 = load i64, i64* %next, align 8
  %add184 = add nsw i64 %157, %158
  %159 = load i64*, i64** %bytepos.addr, align 8
  store i64 %add184, i64* %159, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.then.181
  %160 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %161 = load i64, i64* %lim_byte, align 8
  %162 = load i64, i64* %next, align 8
  %add186 = add nsw i64 %161, %162
  %call187 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %160, i64 %add186)
  store i64 %call187, i64* %retval
  br label %return

if.end.188:                                       ; preds = %if.end.176
  br label %for.inc

for.inc:                                          ; preds = %if.end.188
  %163 = load i64, i64* %next, align 8
  store i64 %163, i64* %cursor, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.175, %for.cond
  %164 = load i64, i64* %lim_byte, align 8
  store i64 %164, i64* %start_byte.addr, align 8
  %165 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %166 = load i64, i64* %start_byte.addr, align 8
  %call189 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %165, i64 %166)
  store i64 %call189, i64* %start.addr, align 8
  br label %while.cond

while.end.190:                                    ; preds = %if.then.72, %while.cond
  br label %if.end.395

if.else.191:                                      ; preds = %if.end.17
  br label %while.cond.192

while.cond.192:                                   ; preds = %for.end.392, %if.else.191
  %167 = load i64, i64* %start.addr, align 8
  %168 = load i64, i64* %end.addr, align 8
  %cmp193 = icmp sgt i64 %167, %168
  br i1 %cmp193, label %while.body.195, label %while.end.394

while.body.195:                                   ; preds = %while.cond.192
  %169 = load i64, i64* %end_byte.addr, align 8
  store i64 %169, i64* %ceiling_byte197, align 8
  %170 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool198 = icmp ne %struct.region_cache* %170, null
  br i1 %tobool198, label %if.then.199, label %if.else.285

if.then.199:                                      ; preds = %while.body.195
  store i32 1, i32* %result201, align 4
  store i8 0, i8* @immediate_quit, align 1
  br label %while.cond.202

while.cond.202:                                   ; preds = %if.end.264, %if.then.199
  %171 = load i64, i64* %start.addr, align 8
  %172 = load i64, i64* %end.addr, align 8
  %cmp203 = icmp sgt i64 %171, %172
  br i1 %cmp203, label %land.rhs.205, label %land.end.207

land.rhs.205:                                     ; preds = %while.cond.202
  %173 = load i32, i32* %result201, align 4
  %tobool206 = icmp ne i32 %173, 0
  br label %land.end.207

land.end.207:                                     ; preds = %land.rhs.205, %while.cond.202
  %174 = phi i1 [ false, %while.cond.202 ], [ %tobool206, %land.rhs.205 ]
  br i1 %174, label %while.body.208, label %while.end.265

while.body.208:                                   ; preds = %land.end.207
  %175 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %176 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %177 = load i64, i64* %start.addr, align 8
  %call210 = call i32 @region_cache_backward(%struct.buffer* %175, %struct.region_cache* %176, i64 %177, i64* %next_change200)
  store i32 %call210, i32* %result201, align 4
  %178 = load i32, i32* %result201, align 4
  %tobool211 = icmp ne i32 %178, 0
  br i1 %tobool211, label %if.then.212, label %if.else.213

if.then.212:                                      ; preds = %while.body.208
  %179 = load i64, i64* %next_change200, align 8
  store i64 %179, i64* %start.addr, align 8
  %180 = load i64, i64* %end.addr, align 8
  store i64 %180, i64* %next_change200, align 8
  store i64 %180, i64* %lim1209, align 8
  br label %if.end.220

if.else.213:                                      ; preds = %while.body.208
  %181 = load i64, i64* %next_change200, align 8
  %182 = load i64, i64* %end.addr, align 8
  %cmp214 = icmp sgt i64 %181, %182
  br i1 %cmp214, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %if.else.213
  %183 = load i64, i64* %next_change200, align 8
  br label %cond.end.218

cond.false.217:                                   ; preds = %if.else.213
  %184 = load i64, i64* %end.addr, align 8
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.216
  %cond219 = phi i64 [ %183, %cond.true.216 ], [ %184, %cond.false.217 ]
  store i64 %cond219, i64* %lim1209, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end.218, %if.then.212
  %185 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %186 = load i64, i64* %start.addr, align 8
  %call221 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %185, i64 %186)
  store i64 %call221, i64* %start_byte.addr, align 8
  br label %while.cond.222

while.cond.222:                                   ; preds = %if.end.255, %if.end.220
  %187 = load i64, i64* %start.addr, align 8
  %188 = load i64, i64* %lim1209, align 8
  %cmp223 = icmp sgt i64 %187, %188
  br i1 %cmp223, label %land.rhs.225, label %land.end.246

land.rhs.225:                                     ; preds = %while.cond.222
  %189 = load i64, i64* %start_byte.addr, align 8
  %sub226 = sub nsw i64 %189, 1
  %190 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text227 = getelementptr inbounds %struct.buffer, %struct.buffer* %190, i32 0, i32 73
  %191 = load %struct.buffer_text*, %struct.buffer_text** %text227, align 8
  %gpt_byte228 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %191, i32 0, i32 3
  %192 = load i64, i64* %gpt_byte228, align 8
  %cmp229 = icmp sge i64 %sub226, %192
  br i1 %cmp229, label %cond.true.231, label %cond.false.234

cond.true.231:                                    ; preds = %land.rhs.225
  %193 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text232 = getelementptr inbounds %struct.buffer, %struct.buffer* %193, i32 0, i32 73
  %194 = load %struct.buffer_text*, %struct.buffer_text** %text232, align 8
  %gap_size233 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %194, i32 0, i32 5
  %195 = load i64, i64* %gap_size233, align 8
  br label %cond.end.235

cond.false.234:                                   ; preds = %land.rhs.225
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.234, %cond.true.231
  %cond236 = phi i64 [ %195, %cond.true.231 ], [ 0, %cond.false.234 ]
  %196 = load i64, i64* %start_byte.addr, align 8
  %sub237 = sub nsw i64 %196, 1
  %add238 = add nsw i64 %cond236, %sub237
  %197 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text239 = getelementptr inbounds %struct.buffer, %struct.buffer* %197, i32 0, i32 73
  %198 = load %struct.buffer_text*, %struct.buffer_text** %text239, align 8
  %beg240 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %198, i32 0, i32 0
  %199 = load i8*, i8** %beg240, align 8
  %add.ptr241 = getelementptr inbounds i8, i8* %199, i64 %add238
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr241, i64 -1
  %200 = load i8, i8* %add.ptr242, align 1
  %conv243 = zext i8 %200 to i32
  %cmp244 = icmp eq i32 %conv243, 10
  br label %land.end.246

land.end.246:                                     ; preds = %cond.end.235, %while.cond.222
  %201 = phi i1 [ false, %while.cond.222 ], [ %cmp244, %cond.end.235 ]
  br i1 %201, label %while.body.247, label %while.end.258

while.body.247:                                   ; preds = %land.end.246
  %202 = load i64, i64* %count.addr, align 8
  %inc248 = add nsw i64 %202, 1
  store i64 %inc248, i64* %count.addr, align 8
  %cmp249 = icmp eq i64 %inc248, 0
  br i1 %cmp249, label %if.then.251, label %if.end.255

if.then.251:                                      ; preds = %while.body.247
  %203 = load i64*, i64** %bytepos.addr, align 8
  %tobool252 = icmp ne i64* %203, null
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.then.251
  %204 = load i64, i64* %start_byte.addr, align 8
  %205 = load i64*, i64** %bytepos.addr, align 8
  store i64 %204, i64* %205, align 8
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.then.251
  %206 = load i64, i64* %start.addr, align 8
  store i64 %206, i64* %retval
  br label %return

if.end.255:                                       ; preds = %while.body.247
  %207 = load i64, i64* %start_byte.addr, align 8
  %dec256 = add nsw i64 %207, -1
  store i64 %dec256, i64* %start_byte.addr, align 8
  %208 = load i64, i64* %start.addr, align 8
  %dec257 = add nsw i64 %208, -1
  store i64 %dec257, i64* %start.addr, align 8
  br label %while.cond.222

while.end.258:                                    ; preds = %land.end.246
  %209 = load i64, i64* %start.addr, align 8
  %210 = load i64, i64* %next_change200, align 8
  %cmp259 = icmp sgt i64 %209, %210
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.264

land.lhs.true.261:                                ; preds = %while.end.258
  %211 = load i32, i32* %result201, align 4
  %tobool262 = icmp ne i32 %211, 0
  br i1 %tobool262, label %if.end.264, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.261
  br label %while.end.265

if.end.264:                                       ; preds = %land.lhs.true.261, %while.end.258
  store i32 1, i32* %result201, align 4
  br label %while.cond.202

while.end.265:                                    ; preds = %if.then.263, %land.end.207
  %212 = load i64, i64* %start.addr, align 8
  %213 = load i64, i64* %end.addr, align 8
  %cmp266 = icmp sle i64 %212, %213
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %while.end.265
  %214 = load i64, i64* %end.addr, align 8
  store i64 %214, i64* %start.addr, align 8
  %215 = load i64, i64* %end_byte.addr, align 8
  store i64 %215, i64* %start_byte.addr, align 8
  br label %while.end.394

if.end.269:                                       ; preds = %while.end.265
  %216 = load i8, i8* %allow_quit.addr, align 1
  %tobool270 = trunc i8 %216 to i1
  %frombool271 = zext i1 %tobool270 to i8
  store i8 %frombool271, i8* @immediate_quit, align 1
  %217 = load i64, i64* %start_byte.addr, align 8
  %218 = load i64, i64* %ceiling_byte197, align 8
  %cmp272 = icmp sle i64 %217, %218
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %if.end.269
  %219 = load i64, i64* %ceiling_byte197, align 8
  %add275 = add nsw i64 %219, 1
  store i64 %add275, i64* %start_byte.addr, align 8
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.274, %if.end.269
  %220 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %221 = load i64, i64* %next_change200, align 8
  %call277 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %220, i64 %221)
  %222 = load i64, i64* %ceiling_byte197, align 8
  %cmp278 = icmp sgt i64 %call277, %222
  br i1 %cmp278, label %cond.true.280, label %cond.false.282

cond.true.280:                                    ; preds = %if.end.276
  %223 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %224 = load i64, i64* %next_change200, align 8
  %call281 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %223, i64 %224)
  br label %cond.end.283

cond.false.282:                                   ; preds = %if.end.276
  %225 = load i64, i64* %ceiling_byte197, align 8
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.282, %cond.true.280
  %cond284 = phi i64 [ %call281, %cond.true.280 ], [ %225, %cond.false.282 ]
  store i64 %cond284, i64* %ceiling_byte197, align 8
  br label %if.end.291

if.else.285:                                      ; preds = %while.body.195
  %226 = load i64, i64* %start_byte.addr, align 8
  %cmp286 = icmp eq i64 %226, -1
  br i1 %cmp286, label %if.then.288, label %if.end.290

if.then.288:                                      ; preds = %if.else.285
  %227 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %228 = load i64, i64* %start.addr, align 8
  %call289 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %227, i64 %228)
  store i64 %call289, i64* %start_byte.addr, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %if.else.285
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %cond.end.283
  %229 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv292 = getelementptr inbounds %struct.buffer, %struct.buffer* %229, i32 0, i32 77
  %230 = load i64, i64* %begv292, align 8
  %231 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text293 = getelementptr inbounds %struct.buffer, %struct.buffer* %231, i32 0, i32 73
  %232 = load %struct.buffer_text*, %struct.buffer_text** %text293, align 8
  %gpt294 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %232, i32 0, i32 1
  %233 = load i64, i64* %gpt294, align 8
  %cmp295 = icmp sle i64 %230, %233
  br i1 %cmp295, label %land.lhs.true.297, label %cond.false.306

land.lhs.true.297:                                ; preds = %if.end.291
  %234 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text298 = getelementptr inbounds %struct.buffer, %struct.buffer* %234, i32 0, i32 73
  %235 = load %struct.buffer_text*, %struct.buffer_text** %text298, align 8
  %gpt_byte299 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %235, i32 0, i32 3
  %236 = load i64, i64* %gpt_byte299, align 8
  %237 = load i64, i64* %start_byte.addr, align 8
  %sub300 = sub nsw i64 %237, 1
  %cmp301 = icmp sle i64 %236, %sub300
  br i1 %cmp301, label %cond.true.303, label %cond.false.306

cond.true.303:                                    ; preds = %land.lhs.true.297
  %238 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text304 = getelementptr inbounds %struct.buffer, %struct.buffer* %238, i32 0, i32 73
  %239 = load %struct.buffer_text*, %struct.buffer_text** %text304, align 8
  %gpt_byte305 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %239, i32 0, i32 3
  %240 = load i64, i64* %gpt_byte305, align 8
  br label %cond.end.308

cond.false.306:                                   ; preds = %land.lhs.true.297, %if.end.291
  %241 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte307 = getelementptr inbounds %struct.buffer, %struct.buffer* %241, i32 0, i32 78
  %242 = load i64, i64* %begv_byte307, align 8
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.306, %cond.true.303
  %cond309 = phi i64 [ %240, %cond.true.303 ], [ %242, %cond.false.306 ]
  store i64 %cond309, i64* %tem196, align 8
  %243 = load i64, i64* %tem196, align 8
  %244 = load i64, i64* %ceiling_byte197, align 8
  %cmp310 = icmp sgt i64 %243, %244
  br i1 %cmp310, label %cond.true.312, label %cond.false.313

cond.true.312:                                    ; preds = %cond.end.308
  %245 = load i64, i64* %tem196, align 8
  br label %cond.end.314

cond.false.313:                                   ; preds = %cond.end.308
  %246 = load i64, i64* %ceiling_byte197, align 8
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.313, %cond.true.312
  %cond315 = phi i64 [ %245, %cond.true.312 ], [ %246, %cond.false.313 ]
  store i64 %cond315, i64* %ceiling_byte197, align 8
  %247 = load i64, i64* %ceiling_byte197, align 8
  %248 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text316 = getelementptr inbounds %struct.buffer, %struct.buffer* %248, i32 0, i32 73
  %249 = load %struct.buffer_text*, %struct.buffer_text** %text316, align 8
  %gpt_byte317 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %249, i32 0, i32 3
  %250 = load i64, i64* %gpt_byte317, align 8
  %cmp318 = icmp sge i64 %247, %250
  br i1 %cmp318, label %cond.true.320, label %cond.false.323

cond.true.320:                                    ; preds = %cond.end.314
  %251 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text321 = getelementptr inbounds %struct.buffer, %struct.buffer* %251, i32 0, i32 73
  %252 = load %struct.buffer_text*, %struct.buffer_text** %text321, align 8
  %gap_size322 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %252, i32 0, i32 5
  %253 = load i64, i64* %gap_size322, align 8
  br label %cond.end.324

cond.false.323:                                   ; preds = %cond.end.314
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.false.323, %cond.true.320
  %cond325 = phi i64 [ %253, %cond.true.320 ], [ 0, %cond.false.323 ]
  %254 = load i64, i64* %ceiling_byte197, align 8
  %add326 = add nsw i64 %cond325, %254
  %255 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text327 = getelementptr inbounds %struct.buffer, %struct.buffer* %255, i32 0, i32 73
  %256 = load %struct.buffer_text*, %struct.buffer_text** %text327, align 8
  %beg328 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %256, i32 0, i32 0
  %257 = load i8*, i8** %beg328, align 8
  %add.ptr329 = getelementptr inbounds i8, i8* %257, i64 %add326
  %add.ptr330 = getelementptr inbounds i8, i8* %add.ptr329, i64 -1
  store i8* %add.ptr330, i8** %ceiling_addr, align 8
  %258 = load i64, i64* %start_byte.addr, align 8
  %259 = load i64, i64* %ceiling_byte197, align 8
  %sub332 = sub nsw i64 %258, %259
  store i64 %sub332, i64* %base331, align 8
  %260 = load i64, i64* %base331, align 8
  store i64 %260, i64* %cursor333, align 8
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.391, %cond.end.324
  %261 = load i64, i64* %cursor333, align 8
  %cmp335 = icmp slt i64 0, %261
  br i1 %cmp335, label %for.body.337, label %for.end.392

for.body.337:                                     ; preds = %for.cond.334
  %262 = load i8*, i8** %ceiling_addr, align 8
  %263 = load i64, i64* %cursor333, align 8
  %call339 = call i8* @memrchr(i8* %262, i32 10, i64 %263) #7
  store i8* %call339, i8** %nl338, align 8
  %264 = load i8*, i8** %nl338, align 8
  %tobool340 = icmp ne i8* %264, null
  br i1 %tobool340, label %cond.true.341, label %cond.false.345

cond.true.341:                                    ; preds = %for.body.337
  %265 = load i8*, i8** %nl338, align 8
  %266 = load i8*, i8** %ceiling_addr, align 8
  %sub.ptr.lhs.cast342 = ptrtoint i8* %265 to i64
  %sub.ptr.rhs.cast343 = ptrtoint i8* %266 to i64
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  br label %cond.end.346

cond.false.345:                                   ; preds = %for.body.337
  br label %cond.end.346

cond.end.346:                                     ; preds = %cond.false.345, %cond.true.341
  %cond347 = phi i64 [ %sub.ptr.sub344, %cond.true.341 ], [ -1, %cond.false.345 ]
  store i64 %cond347, i64* %prev, align 8
  %267 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool348 = icmp ne %struct.region_cache* %267, null
  br i1 %tobool348, label %land.lhs.true.349, label %if.end.374

land.lhs.true.349:                                ; preds = %cond.end.346
  %268 = load i64, i64* %cursor333, align 8
  %269 = load i64, i64* %prev, align 8
  %add350 = add nsw i64 %269, 1
  %cmp351 = icmp ne i64 %268, %add350
  br i1 %cmp351, label %if.then.353, label %if.end.374

if.then.353:                                      ; preds = %land.lhs.true.349
  %270 = load %struct.buffer*, %struct.buffer** %cache_buffer, align 8
  %271 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %272 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %273 = load i64, i64* %ceiling_byte197, align 8
  %274 = load i64, i64* %prev, align 8
  %add354 = add nsw i64 %273, %274
  %add355 = add nsw i64 %add354, 1
  %call356 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %272, i64 %add355)
  %275 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %276 = load i64, i64* %ceiling_byte197, align 8
  %277 = load i64, i64* %cursor333, align 8
  %add357 = add nsw i64 %276, %277
  %call358 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %275, i64 %add357)
  call void @know_region_cache(%struct.buffer* %270, %struct.region_cache* %271, i64 %call356, i64 %call358)
  %278 = load i64, i64* %ceiling_byte197, align 8
  %279 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text359 = getelementptr inbounds %struct.buffer, %struct.buffer* %279, i32 0, i32 73
  %280 = load %struct.buffer_text*, %struct.buffer_text** %text359, align 8
  %gpt_byte360 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %280, i32 0, i32 3
  %281 = load i64, i64* %gpt_byte360, align 8
  %cmp361 = icmp sge i64 %278, %281
  br i1 %cmp361, label %cond.true.363, label %cond.false.366

cond.true.363:                                    ; preds = %if.then.353
  %282 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text364 = getelementptr inbounds %struct.buffer, %struct.buffer* %282, i32 0, i32 73
  %283 = load %struct.buffer_text*, %struct.buffer_text** %text364, align 8
  %gap_size365 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %283, i32 0, i32 5
  %284 = load i64, i64* %gap_size365, align 8
  br label %cond.end.367

cond.false.366:                                   ; preds = %if.then.353
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.366, %cond.true.363
  %cond368 = phi i64 [ %284, %cond.true.363 ], [ 0, %cond.false.366 ]
  %285 = load i64, i64* %ceiling_byte197, align 8
  %add369 = add nsw i64 %cond368, %285
  %286 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text370 = getelementptr inbounds %struct.buffer, %struct.buffer* %286, i32 0, i32 73
  %287 = load %struct.buffer_text*, %struct.buffer_text** %text370, align 8
  %beg371 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %287, i32 0, i32 0
  %288 = load i8*, i8** %beg371, align 8
  %add.ptr372 = getelementptr inbounds i8, i8* %288, i64 %add369
  %add.ptr373 = getelementptr inbounds i8, i8* %add.ptr372, i64 -1
  store i8* %add.ptr373, i8** %ceiling_addr, align 8
  br label %if.end.374

if.end.374:                                       ; preds = %cond.end.367, %land.lhs.true.349, %cond.end.346
  %289 = load i8*, i8** %nl338, align 8
  %tobool375 = icmp ne i8* %289, null
  br i1 %tobool375, label %if.end.377, label %if.then.376

if.then.376:                                      ; preds = %if.end.374
  br label %for.end.392

if.end.377:                                       ; preds = %if.end.374
  %290 = load i64, i64* %count.addr, align 8
  %inc378 = add nsw i64 %290, 1
  store i64 %inc378, i64* %count.addr, align 8
  %cmp379 = icmp sge i64 %inc378, 0
  br i1 %cmp379, label %if.then.381, label %if.end.390

if.then.381:                                      ; preds = %if.end.377
  store i8 0, i8* @immediate_quit, align 1
  %291 = load i64*, i64** %bytepos.addr, align 8
  %tobool382 = icmp ne i64* %291, null
  br i1 %tobool382, label %if.then.383, label %if.end.386

if.then.383:                                      ; preds = %if.then.381
  %292 = load i64, i64* %ceiling_byte197, align 8
  %293 = load i64, i64* %prev, align 8
  %add384 = add nsw i64 %292, %293
  %add385 = add nsw i64 %add384, 1
  %294 = load i64*, i64** %bytepos.addr, align 8
  store i64 %add385, i64* %294, align 8
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.383, %if.then.381
  %295 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %296 = load i64, i64* %ceiling_byte197, align 8
  %297 = load i64, i64* %prev, align 8
  %add387 = add nsw i64 %296, %297
  %add388 = add nsw i64 %add387, 1
  %call389 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %295, i64 %add388)
  store i64 %call389, i64* %retval
  br label %return

if.end.390:                                       ; preds = %if.end.377
  br label %for.inc.391

for.inc.391:                                      ; preds = %if.end.390
  %298 = load i64, i64* %prev, align 8
  store i64 %298, i64* %cursor333, align 8
  br label %for.cond.334

for.end.392:                                      ; preds = %if.then.376, %for.cond.334
  %299 = load i64, i64* %ceiling_byte197, align 8
  store i64 %299, i64* %start_byte.addr, align 8
  %300 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %301 = load i64, i64* %start_byte.addr, align 8
  %call393 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %300, i64 %301)
  store i64 %call393, i64* %start.addr, align 8
  br label %while.cond.192

while.end.394:                                    ; preds = %if.then.268, %while.cond.192
  br label %if.end.395

if.end.395:                                       ; preds = %while.end.394, %while.end.190
  store i8 0, i8* @immediate_quit, align 1
  %302 = load i64*, i64** %shortage.addr, align 8
  %tobool396 = icmp ne i64* %302, null
  br i1 %tobool396, label %if.then.397, label %if.end.399

if.then.397:                                      ; preds = %if.end.395
  %303 = load i64, i64* %count.addr, align 8
  %304 = load i32, i32* %direction, align 4
  %conv398 = sext i32 %304 to i64
  %mul = mul nsw i64 %303, %conv398
  %305 = load i64*, i64** %shortage.addr, align 8
  store i64 %mul, i64* %305, align 8
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.397, %if.end.395
  %306 = load i64*, i64** %bytepos.addr, align 8
  %tobool400 = icmp ne i64* %306, null
  br i1 %tobool400, label %if.then.401, label %if.end.409

if.then.401:                                      ; preds = %if.end.399
  %307 = load i64, i64* %start_byte.addr, align 8
  %cmp402 = icmp eq i64 %307, -1
  br i1 %cmp402, label %cond.true.404, label %cond.false.406

cond.true.404:                                    ; preds = %if.then.401
  %308 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %309 = load i64, i64* %start.addr, align 8
  %call405 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %308, i64 %309)
  br label %cond.end.407

cond.false.406:                                   ; preds = %if.then.401
  %310 = load i64, i64* %start_byte.addr, align 8
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.406, %cond.true.404
  %cond408 = phi i64 [ %call405, %cond.true.404 ], [ %310, %cond.false.406 ]
  %311 = load i64*, i64** %bytepos.addr, align 8
  store i64 %cond408, i64* %311, align 8
  br label %if.end.409

if.end.409:                                       ; preds = %cond.end.407, %if.end.399
  %312 = load i64, i64* %start.addr, align 8
  store i64 %312, i64* %retval
  br label %return

return:                                           ; preds = %if.end.409, %if.end.386, %if.end.254, %if.end.185, %if.end.62
  %313 = load i64, i64* %retval
  ret i64 %313
}

; Function Attrs: nounwind uwtable
define internal %struct.region_cache* @newline_cache_on_off(%struct.buffer* %buf) #0 {
entry:
  %retval = alloca %struct.region_cache*, align 8
  %buf.addr = alloca %struct.buffer*, align 8
  %base_buf = alloca %struct.buffer*, align 8
  %indirect_p = alloca i8, align 1
  store %struct.buffer* %buf, %struct.buffer** %buf.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  store %struct.buffer* %0, %struct.buffer** %base_buf, align 8
  store i8 0, i8* %indirect_p, align 1
  %1 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 81
  %2 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %base_buffer1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 81
  %4 = load %struct.buffer*, %struct.buffer** %base_buffer1, align 8
  store %struct.buffer* %4, %struct.buffer** %base_buf, align 8
  store i8 1, i8* %indirect_p, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.buffer*, %struct.buffer** %buf.addr, align 8
  %cache_long_scans_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 43
  %6 = load i64, i64* %cache_long_scans_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load i8, i8* %indirect_p, align 1
  %tobool3 = trunc i8 %7 to i1
  br i1 %tobool3, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.then.2
  %8 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %cache_long_scans_4 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 43
  %9 = load i64, i64* %cache_long_scans_4, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %9, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.2
  %10 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 91
  %11 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %tobool8 = icmp ne %struct.region_cache* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache10 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 91
  %13 = load %struct.region_cache*, %struct.region_cache** %newline_cache10, align 8
  call void @free_region_cache(%struct.region_cache* %13)
  %14 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache11 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 91
  store %struct.region_cache* null, %struct.region_cache** %newline_cache11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %lor.lhs.false
  store %struct.region_cache* null, %struct.region_cache** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load i8, i8* %indirect_p, align 1
  %tobool14 = trunc i8 %15 to i1
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then.19

lor.lhs.false.15:                                 ; preds = %if.else
  %16 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %cache_long_scans_16 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 43
  %17 = load i64, i64* %cache_long_scans_16, align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %17, %call17
  br i1 %cmp18, label %if.end.26, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.15, %if.else
  %18 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache20 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 91
  %19 = load %struct.region_cache*, %struct.region_cache** %newline_cache20, align 8
  %cmp21 = icmp eq %struct.region_cache* %19, null
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.19
  %call23 = call %struct.region_cache* @new_region_cache()
  %20 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache24 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 91
  store %struct.region_cache* %call23, %struct.region_cache** %newline_cache24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false.15
  %21 = load %struct.buffer*, %struct.buffer** %base_buf, align 8
  %newline_cache27 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 91
  %22 = load %struct.region_cache*, %struct.region_cache** %newline_cache27, align 8
  store %struct.region_cache* %22, %struct.region_cache** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.end.13
  %23 = load %struct.region_cache*, %struct.region_cache** %retval
  ret %struct.region_cache* %23
}

declare i32 @region_cache_forward(%struct.buffer*, %struct.region_cache*, i64, i64*) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #2

declare void @know_region_cache(%struct.buffer*, %struct.region_cache*, i64, i64) #1

declare i64 @buf_bytepos_to_charpos(%struct.buffer*, i64) #1

declare i32 @region_cache_backward(%struct.buffer*, %struct.region_cache*, i64, i64*) #1

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define i64 @scan_newline(i64 %start, i64 %start_byte, i64 %limit, i64 %limit_byte, i64 %count, i1 zeroext %allow_quit) #0 {
entry:
  %start.addr = alloca i64, align 8
  %start_byte.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  %limit_byte.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %allow_quit.addr = alloca i8, align 1
  %charpos = alloca i64, align 8
  %bytepos = alloca i64, align 8
  %shortage = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %start_byte, i64* %start_byte.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i64 %limit_byte, i64* %limit_byte.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %frombool = zext i1 %allow_quit to i8
  store i8 %frombool, i8* %allow_quit.addr, align 1
  %0 = load i64, i64* %start.addr, align 8
  %1 = load i64, i64* %start_byte.addr, align 8
  %2 = load i64, i64* %limit.addr, align 8
  %3 = load i64, i64* %limit_byte.addr, align 8
  %4 = load i64, i64* %count.addr, align 8
  %5 = load i8, i8* %allow_quit.addr, align 1
  %tobool = trunc i8 %5 to i1
  %call = call i64 @find_newline(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %shortage, i64* %bytepos, i1 zeroext %tobool)
  store i64 %call, i64* %charpos, align 8
  %6 = load i64, i64* %shortage, align 8
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %8 = load i64, i64* %limit.addr, align 8
  %9 = load i64, i64* %limit_byte.addr, align 8
  call void @temp_set_point_both(%struct.buffer* %7, i64 %8, i64 %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %11 = load i64, i64* %charpos, align 8
  %12 = load i64, i64* %bytepos, align 8
  call void @temp_set_point_both(%struct.buffer* %10, i64 %11, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i64, i64* %shortage, align 8
  ret i64 %13
}

declare void @temp_set_point_both(%struct.buffer*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @scan_newline_from_point(i64 %count, i64* %charpos, i64* %bytepos) #0 {
entry:
  %count.addr = alloca i64, align 8
  %charpos.addr = alloca i64*, align 8
  %bytepos.addr = alloca i64*, align 8
  %shortage = alloca i64, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64* %charpos, i64** %charpos.addr, align 8
  store i64* %bytepos, i64** %bytepos.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 75
  %2 = load i64, i64* %pt, align 8
  %add = add nsw i64 %2, 0
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 76
  %4 = load i64, i64* %pt_byte, align 8
  %add1 = add nsw i64 %4, 0
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 77
  %6 = load i64, i64* %begv, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 78
  %8 = load i64, i64* %begv_byte, align 8
  %9 = load i64, i64* %count.addr, align 8
  %sub = sub nsw i64 %9, 1
  %10 = load i64*, i64** %bytepos.addr, align 8
  %call = call i64 @find_newline(i64 %add, i64 %add1, i64 %6, i64 %8, i64 %sub, i64* %shortage, i64* %10, i1 zeroext true)
  %11 = load i64*, i64** %charpos.addr, align 8
  store i64 %call, i64* %11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt2 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 75
  %13 = load i64, i64* %pt2, align 8
  %add3 = add nsw i64 %13, 0
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte4 = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 76
  %15 = load i64, i64* %pt_byte4, align 8
  %add5 = add nsw i64 %15, 0
  %16 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 79
  %17 = load i64, i64* %zv, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 80
  %19 = load i64, i64* %zv_byte, align 8
  %20 = load i64, i64* %count.addr, align 8
  %21 = load i64*, i64** %bytepos.addr, align 8
  %call6 = call i64 @find_newline(i64 %add3, i64 %add5, i64 %17, i64 %19, i64 %20, i64* %shortage, i64* %21, i1 zeroext true)
  %22 = load i64*, i64** %charpos.addr, align 8
  store i64 %call6, i64* %22, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i64, i64* %shortage, align 8
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define i64 @find_newline_no_quit(i64 %from, i64 %frombyte, i64 %cnt, i64* %bytepos) #0 {
entry:
  %from.addr = alloca i64, align 8
  %frombyte.addr = alloca i64, align 8
  %cnt.addr = alloca i64, align 8
  %bytepos.addr = alloca i64*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %frombyte, i64* %frombyte.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  store i64* %bytepos, i64** %bytepos.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  %1 = load i64, i64* %frombyte.addr, align 8
  %2 = load i64, i64* %cnt.addr, align 8
  %3 = load i64*, i64** %bytepos.addr, align 8
  %call = call i64 @find_newline(i64 %0, i64 %1, i64 0, i64 -1, i64 %2, i64* null, i64* %3, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @find_before_next_newline(i64 %from, i64 %to, i64 %cnt, i64* %bytepos) #0 {
entry:
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %cnt.addr = alloca i64, align 8
  %bytepos.addr = alloca i64*, align 8
  %shortage = alloca i64, align 8
  %pos = alloca i64, align 8
  %chp = alloca i8*, align 8
  store i64 %from, i64* %from.addr, align 8
  store i64 %to, i64* %to.addr, align 8
  store i64 %cnt, i64* %cnt.addr, align 8
  store i64* %bytepos, i64** %bytepos.addr, align 8
  %0 = load i64, i64* %from.addr, align 8
  %1 = load i64, i64* %to.addr, align 8
  %2 = load i64, i64* %cnt.addr, align 8
  %3 = load i64*, i64** %bytepos.addr, align 8
  %call = call i64 @find_newline(i64 %0, i64 -1, i64 %1, i64 -1, i64 %2, i64* %shortage, i64* %3, i1 zeroext true)
  store i64 %call, i64* %pos, align 8
  %4 = load i64, i64* %shortage, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %bytepos.addr, align 8
  %tobool = icmp ne i64* %5, null
  br i1 %tobool, label %if.then.1, label %if.else.24

if.then.1:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.1
  %6 = load i64, i64* %pos, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %pos, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 39
  %8 = load i64, i64* %enable_multibyte_characters_, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %8, %call2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  %9 = load i64*, i64** %bytepos.addr, align 8
  %10 = load i64, i64* %9, align 8
  %dec5 = add nsw i64 %10, -1
  store i64 %dec5, i64* %9, align 8
  br label %if.end.22

if.else:                                          ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.else
  %11 = load i64*, i64** %bytepos.addr, align 8
  %12 = load i64, i64* %11, align 8
  %dec7 = add nsw i64 %12, -1
  store i64 %dec7, i64* %11, align 8
  %13 = load i64*, i64** %bytepos.addr, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 73
  %16 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %16, i32 0, i32 3
  %17 = load i64, i64* %gpt_byte, align 8
  %cmp8 = icmp slt i64 %14, %17
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %do.body.6
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text10 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 73
  %19 = load %struct.buffer_text*, %struct.buffer_text** %text10, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %19, i32 0, i32 0
  %20 = load i8*, i8** %beg, align 8
  %21 = load i64*, i64** %bytepos.addr, align 8
  %22 = load i64, i64* %21, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %22
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr11, i8** %chp, align 8
  br label %if.end

if.else.12:                                       ; preds = %do.body.6
  %23 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text13 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 73
  %24 = load %struct.buffer_text*, %struct.buffer_text** %text13, align 8
  %beg14 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %24, i32 0, i32 0
  %25 = load i8*, i8** %beg14, align 8
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text15 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 73
  %27 = load %struct.buffer_text*, %struct.buffer_text** %text15, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %27, i32 0, i32 5
  %28 = load i64, i64* %gap_size, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %25, i64 %28
  %29 = load i64*, i64** %bytepos.addr, align 8
  %30 = load i64, i64* %29, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 %30
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 -1
  store i8* %add.ptr18, i8** %chp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %31 = load i8*, i8** %chp, align 8
  %32 = load i8, i8* %31, align 1
  %conv = zext i8 %32 to i32
  %and = and i32 %conv, 192
  %cmp19 = icmp ne i32 %and, 128
  %lnot = xor i1 %cmp19, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %incdec.ptr, i8** %chp, align 8
  %34 = load i64*, i64** %bytepos.addr, align 8
  %35 = load i64, i64* %34, align 8
  %dec21 = add nsw i64 %35, -1
  store i64 %dec21, i64* %34, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %if.then.4
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.26

if.else.24:                                       ; preds = %if.then
  %36 = load i64, i64* %pos, align 8
  %dec25 = add nsw i64 %36, -1
  store i64 %dec25, i64* %pos, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %do.end.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %entry
  %37 = load i64, i64* %pos, align 8
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @Fsearch_backward(i64 %string, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %string.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 -1, i32 0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @search_command(i64 %string, i64 %bound, i64 %noerror, i64 %count, i32 %direction, i32 %RE, i1 zeroext %posix) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  %RE.addr = alloca i32, align 4
  %posix.addr = alloca i8, align 1
  %np = alloca i64, align 8
  %lim = alloca i64, align 8
  %lim_byte = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %RE, i32* %RE.addr, align 4
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %0 = load i32, i32* %direction.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %n, align 8
  %1 = load i64, i64* %count.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %count.addr, align 8
  %and = and i64 %2, 7
  %conv2 = trunc i64 %and to i32
  %and3 = and i32 %conv2, -5
  %cmp4 = icmp eq i32 %and3, 2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call6 = call i64 @builtin_lisp_symbol(i32 559)
  %3 = load i64, i64* %count.addr, align 8
  %4 = call i64 @wrong_type_argument(i64 %call6, i64 %3) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i64, i64* %count.addr, align 8
  %shr = ashr i64 %6, 2
  %7 = load i64, i64* %n, align 8
  %mul = mul nsw i64 %7, %shr
  store i64 %mul, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %8 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %8)
  %9 = load i64, i64* %bound.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp8 = icmp eq i64 %9, %call7
  br i1 %cmp8, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.end
  %10 = load i64, i64* %n, align 8
  %cmp11 = icmp sgt i64 %10, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 79
  %12 = load i64, i64* %zv, align 8
  store i64 %12, i64* %lim, align 8
  %13 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 80
  %14 = load i64, i64* %zv_byte, align 8
  store i64 %14, i64* %lim_byte, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.10
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 77
  %16 = load i64, i64* %begv, align 8
  store i64 %16, i64* %lim, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 78
  %18 = load i64, i64* %begv_byte, align 8
  store i64 %18, i64* %lim_byte, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %if.end.67

if.else.15:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else.15
  %19 = load i64, i64* %bound.addr, align 8
  %and16 = and i64 %19, 7
  %conv17 = trunc i64 %and16 to i32
  %cmp18 = icmp eq i32 %conv17, 1
  br i1 %cmp18, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %do.body
  %20 = load i64, i64* %bound.addr, align 8
  %call20 = call i32 @XMISCTYPE(i64 %20)
  %cmp21 = icmp eq i32 %call20, 24236
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %land.lhs.true
  %21 = load i64, i64* %bound.addr, align 8
  %call24 = call i64 @marker_position(i64 %21)
  %call25 = call i64 @make_natnum(i64 %call24)
  store i64 %call25, i64* %bound.addr, align 8
  br label %if.end.36

if.else.26:                                       ; preds = %land.lhs.true, %do.body
  %22 = load i64, i64* %bound.addr, align 8
  %and27 = and i64 %22, 7
  %conv28 = trunc i64 %and27 to i32
  %and29 = and i32 %conv28, -5
  %cmp30 = icmp eq i32 %and29, 2
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.else.26
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.else.26
  %call34 = call i64 @builtin_lisp_symbol(i32 558)
  %23 = load i64, i64* %bound.addr, align 8
  %24 = call i64 @wrong_type_argument(i64 %call34, i64 %23) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.35

cond.end.35:                                      ; preds = %25, %cond.true.32
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end.35, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.36
  %26 = load i64, i64* %bound.addr, align 8
  %shr37 = ashr i64 %26, 2
  store i64 %shr37, i64* %lim, align 8
  %27 = load i64, i64* %n, align 8
  %cmp38 = icmp sgt i64 %27, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.43

cond.true.40:                                     ; preds = %do.end
  %28 = load i64, i64* %lim, align 8
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 75
  %30 = load i64, i64* %pt, align 8
  %add = add nsw i64 %30, 0
  %cmp41 = icmp slt i64 %28, %add
  br i1 %cmp41, label %if.then.48, label %if.end.49

cond.false.43:                                    ; preds = %do.end
  %31 = load i64, i64* %lim, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt44 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 75
  %33 = load i64, i64* %pt44, align 8
  %add45 = add nsw i64 %33, 0
  %cmp46 = icmp sgt i64 %31, %add45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %cond.false.43, %cond.true.40
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0)) #6
  unreachable

if.end.49:                                        ; preds = %cond.false.43, %cond.true.40
  %34 = load i64, i64* %lim, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv50 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 79
  %36 = load i64, i64* %zv50, align 8
  %cmp51 = icmp sgt i64 %34, %36
  br i1 %cmp51, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.end.49
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv54 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 79
  %38 = load i64, i64* %zv54, align 8
  store i64 %38, i64* %lim, align 8
  %39 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte55 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 80
  %40 = load i64, i64* %zv_byte55, align 8
  store i64 %40, i64* %lim_byte, align 8
  br label %if.end.66

if.else.56:                                       ; preds = %if.end.49
  %41 = load i64, i64* %lim, align 8
  %42 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv57 = getelementptr inbounds %struct.buffer, %struct.buffer* %42, i32 0, i32 77
  %43 = load i64, i64* %begv57, align 8
  %cmp58 = icmp slt i64 %41, %43
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else.56
  %44 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv61 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 77
  %45 = load i64, i64* %begv61, align 8
  store i64 %45, i64* %lim, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte62 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 78
  %47 = load i64, i64* %begv_byte62, align 8
  store i64 %47, i64* %lim_byte, align 8
  br label %if.end.65

if.else.63:                                       ; preds = %if.else.56
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %49 = load i64, i64* %lim, align 8
  %call64 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %48, i64 %49)
  store i64 %call64, i64* %lim_byte, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.60
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.53
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.14
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 25
  %51 = load i64, i64* %case_canon_table_, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_eqv_table_ = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 26
  %53 = load i64, i64* %case_eqv_table_, align 8
  call void @set_char_table_extras(i64 %51, i64 2, i64 %53)
  %54 = load i64, i64* %string.addr, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt68 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 75
  %56 = load i64, i64* %pt68, align 8
  %add69 = add nsw i64 %56, 0
  %57 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 76
  %58 = load i64, i64* %pt_byte, align 8
  %add70 = add nsw i64 %58, 0
  %59 = load i64, i64* %lim, align 8
  %60 = load i64, i64* %lim_byte, align 8
  %61 = load i64, i64* %n, align 8
  %62 = load i32, i32* %RE.addr, align 4
  %63 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_fold_search_ = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 18
  %64 = load i64, i64* %case_fold_search_, align 8
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %64, %call71
  br i1 %cmp72, label %cond.false.76, label %cond.true.74

cond.true.74:                                     ; preds = %if.end.67
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_canon_table_75 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 25
  %66 = load i64, i64* %case_canon_table_75, align 8
  br label %cond.end.78

cond.false.76:                                    ; preds = %if.end.67
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.74
  %cond = phi i64 [ %66, %cond.true.74 ], [ %call77, %cond.false.76 ]
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_fold_search_79 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 18
  %68 = load i64, i64* %case_fold_search_79, align 8
  %call80 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp81 = icmp eq i64 %68, %call80
  br i1 %cmp81, label %cond.false.85, label %cond.true.83

cond.true.83:                                     ; preds = %cond.end.78
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %case_eqv_table_84 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 26
  %70 = load i64, i64* %case_eqv_table_84, align 8
  br label %cond.end.87

cond.false.85:                                    ; preds = %cond.end.78
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.83
  %cond88 = phi i64 [ %70, %cond.true.83 ], [ %call86, %cond.false.85 ]
  %71 = load i8, i8* %posix.addr, align 1
  %tobool = trunc i8 %71 to i1
  %call89 = call i64 @search_buffer(i64 %54, i64 %add69, i64 %add70, i64 %59, i64 %60, i64 %61, i32 %62, i64 %cond, i64 %cond88, i1 zeroext %tobool)
  store i64 %call89, i64* %np, align 8
  %72 = load i64, i64* %np, align 8
  %cmp90 = icmp sle i64 %72, 0
  br i1 %cmp90, label %if.then.92, label %if.end.106

if.then.92:                                       ; preds = %cond.end.87
  %73 = load i64, i64* %noerror.addr, align 8
  %call93 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp94 = icmp eq i64 %73, %call93
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.then.92
  %call97 = call i64 @builtin_lisp_symbol(i32 839)
  %74 = load i64, i64* %string.addr, align 8
  call void @xsignal1(i64 %call97, i64 %74) #6
  unreachable

if.end.98:                                        ; preds = %if.then.92
  %75 = load i64, i64* %noerror.addr, align 8
  %call99 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp100 = icmp eq i64 %75, %call99
  br i1 %cmp100, label %if.else.104, label %if.then.102

if.then.102:                                      ; preds = %if.end.98
  %76 = load i64, i64* %lim, align 8
  %77 = load i64, i64* %lim_byte, align 8
  call void @set_point_both(i64 %76, i64 %77)
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call103, i64* %retval
  br label %return

if.else.104:                                      ; preds = %if.end.98
  %call105 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call105, i64* %retval
  br label %return

if.end.106:                                       ; preds = %cond.end.87
  %78 = load i64, i64* %np, align 8
  call void @set_point(i64 %78)
  %79 = load i64, i64* %np, align 8
  %shl = shl i64 %79, 2
  %add107 = add i64 %shl, 2
  store i64 %add107, i64* %retval
  br label %return

return:                                           ; preds = %if.end.106, %if.else.104, %if.then.102
  %80 = load i64, i64* %retval
  ret i64 %80
}

; Function Attrs: nounwind uwtable
define i64 @Fsearch_forward(i64 %string, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %string.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %string.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 1, i32 0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fre_search_backward(i64 %regexp, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 -1, i32 1, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fre_search_forward(i64 %regexp, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 1, i32 1, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fposix_search_backward(i64 %regexp, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 -1, i32 1, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fposix_search_forward(i64 %regexp, i64 %bound, i64 %noerror, i64 %count) #0 {
entry:
  %regexp.addr = alloca i64, align 8
  %bound.addr = alloca i64, align 8
  %noerror.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  store i64 %bound, i64* %bound.addr, align 8
  store i64 %noerror, i64* %noerror.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %1 = load i64, i64* %bound.addr, align 8
  %2 = load i64, i64* %noerror.addr, align 8
  %3 = load i64, i64* %count.addr, align 8
  %call = call i64 @search_command(i64 %0, i64 %1, i64 %2, i64 %3, i32 1, i32 1, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Freplace_match(i64 %newtext, i64 %fixedcase, i64 %literal, i64 %string, i64 %subexp) #0 {
entry:
  %retval = alloca i64, align 8
  %newtext.addr = alloca i64, align 8
  %fixedcase.addr = alloca i64, align 8
  %literal.addr = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %subexp.addr = alloca i64, align 8
  %case_action = alloca i32, align 4
  %pos = alloca i64, align 8
  %pos_byte = alloca i64, align 8
  %some_multiletter_word = alloca i8, align 1
  %some_lowercase = alloca i8, align 1
  %some_uppercase = alloca i8, align 1
  %some_nonuppercase_initial = alloca i8, align 1
  %c = alloca i32, align 4
  %prevc = alloca i32, align 4
  %sub = alloca i64, align 8
  %opoint = alloca i64, align 8
  %newpoint = alloca i64, align 8
  %last = alloca i64, align 8
  %chp = alloca i8*, align 8
  %chp222 = alloca i8*, align 8
  %chlen = alloca i32, align 4
  %before = alloca i64, align 8
  %after = alloca i64, align 8
  %lastpos = alloca i64, align 8
  %lastpos_byte = alloca i64, align 8
  %accum = alloca i64, align 8
  %middle = alloca i64, align 8
  %length = alloca i64, align 8
  %substart = alloca i64, align 8
  %subend = alloca i64, align 8
  %delbackslash = alloca i8, align 1
  %chp373 = alloca i8*, align 8
  %chlen376 = alloca i32, align 4
  %chp446 = alloca i8*, align 8
  %chlen449 = alloca i32, align 4
  %length632 = alloca i64, align 8
  %substed = alloca i8*, align 8
  %substed_alloc_size = alloca i64, align 8
  %substed_len = alloca i64, align 8
  %buf_multibyte = alloca i8, align 1
  %str_multibyte = alloca i8, align 1
  %really_changed = alloca i8, align 1
  %str = alloca [5 x i8], align 1
  %add_stuff = alloca i8*, align 8
  %add_len = alloca i64, align 8
  %idx = alloca i64, align 8
  %fetch_ptr = alloca i8*, align 8
  %fetch_len = alloca i32, align 4
  %fetch_ptr755 = alloca i8*, align 8
  %fetch_len758 = alloca i32, align 4
  %begbyte = alloca i64, align 8
  %sub_start = alloca i64, align 8
  %sub_end = alloca i64, align 8
  %num_regs = alloca i32, align 4
  %change = alloca i64, align 8
  store i64 %newtext, i64* %newtext.addr, align 8
  store i64 %fixedcase, i64* %fixedcase.addr, align 8
  store i64 %literal, i64* %literal.addr, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %subexp, i64* %subexp.addr, align 8
  %0 = load i64, i64* %newtext.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %string.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %case_action, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0)) #6
  unreachable

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* %subexp.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  store i64 0, i64* %sub, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.3
  %5 = load i64, i64* %subexp.addr, align 8
  %and = and i64 %5, 7
  %conv = trunc i64 %and to i32
  %and7 = and i32 %conv, -5
  %cmp8 = icmp eq i32 %and7, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call10 = call i64 @builtin_lisp_symbol(i32 559)
  %6 = load i64, i64* %subexp.addr, align 8
  %7 = call i64 @wrong_type_argument(i64 %call10, i64 %6) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i64, i64* %subexp.addr, align 8
  %shr = ashr i64 %9, 2
  %cmp11 = icmp sle i64 0, %shr
  br i1 %cmp11, label %land.lhs.true, label %if.then.17

land.lhs.true:                                    ; preds = %cond.end
  %10 = load i64, i64* %subexp.addr, align 8
  %shr13 = ashr i64 %10, 2
  %11 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv14 = zext i32 %11 to i64
  %cmp15 = icmp slt i64 %shr13, %conv14
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true, %cond.end
  %12 = load i64, i64* %subexp.addr, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv18 = zext i32 %13 to i64
  %shl = shl i64 %conv18, 2
  %add = add i64 %shl, 2
  call void @args_out_of_range(i64 %12, i64 %add) #6
  unreachable

if.end.19:                                        ; preds = %land.lhs.true
  %14 = load i64, i64* %subexp.addr, align 8
  %shr20 = ashr i64 %14, 2
  store i64 %shr20, i64* %sub, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.then.6
  %15 = load i64, i64* %string.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %15, %call22
  br i1 %cmp23, label %if.then.25, label %if.else.44

if.then.25:                                       ; preds = %if.end.21
  %16 = load i64, i64* %sub, align 8
  %17 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 77
  %20 = load i64, i64* %begv, align 8
  %cmp26 = icmp slt i64 %18, %20
  br i1 %cmp26, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.25
  %21 = load i64, i64* %sub, align 8
  %22 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx28, align 8
  %24 = load i64, i64* %sub, align 8
  %25 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx29, align 8
  %cmp30 = icmp sgt i64 %23, %26
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %27 = load i64, i64* %sub, align 8
  %28 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx33, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 79
  %31 = load i64, i64* %zv, align 8
  %cmp34 = icmp sgt i64 %29, %31
  br i1 %cmp34, label %if.then.36, label %if.end.43

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false, %if.then.25
  %32 = load i64, i64* %sub, align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %33, i64 %32
  %34 = load i64, i64* %arrayidx37, align 8
  %shl38 = shl i64 %34, 2
  %add39 = add i64 %shl38, 2
  %35 = load i64, i64* %sub, align 8
  %36 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx40, align 8
  %shl41 = shl i64 %37, 2
  %add42 = add i64 %shl41, 2
  call void @args_out_of_range(i64 %add39, i64 %add42) #6
  unreachable

if.end.43:                                        ; preds = %lor.lhs.false.32
  br label %if.end.66

if.else.44:                                       ; preds = %if.end.21
  %38 = load i64, i64* %sub, align 8
  %39 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %39, i64 %38
  %40 = load i64, i64* %arrayidx45, align 8
  %cmp46 = icmp slt i64 %40, 0
  br i1 %cmp46, label %if.then.58, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.else.44
  %41 = load i64, i64* %sub, align 8
  %42 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %42, i64 %41
  %43 = load i64, i64* %arrayidx49, align 8
  %44 = load i64, i64* %sub, align 8
  %45 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %45, i64 %44
  %46 = load i64, i64* %arrayidx50, align 8
  %cmp51 = icmp sgt i64 %43, %46
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.48
  %47 = load i64, i64* %sub, align 8
  %48 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %48, i64 %47
  %49 = load i64, i64* %arrayidx54, align 8
  %50 = load i64, i64* %string.addr, align 8
  %call55 = call i64 @SCHARS(i64 %50)
  %cmp56 = icmp sgt i64 %49, %call55
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false.48, %if.else.44
  %51 = load i64, i64* %sub, align 8
  %52 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %52, i64 %51
  %53 = load i64, i64* %arrayidx59, align 8
  %shl60 = shl i64 %53, 2
  %add61 = add i64 %shl60, 2
  %54 = load i64, i64* %sub, align 8
  %55 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %55, i64 %54
  %56 = load i64, i64* %arrayidx62, align 8
  %shl63 = shl i64 %56, 2
  %add64 = add i64 %shl63, 2
  call void @args_out_of_range(i64 %add61, i64 %add64) #6
  unreachable

if.end.65:                                        ; preds = %lor.lhs.false.53
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.43
  %57 = load i64, i64* %fixedcase.addr, align 8
  %call67 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp68 = icmp eq i64 %57, %call67
  br i1 %cmp68, label %if.then.70, label %if.end.347

if.then.70:                                       ; preds = %if.end.66
  %58 = load i64, i64* %sub, align 8
  %59 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx71 = getelementptr inbounds i64, i64* %59, i64 %58
  %60 = load i64, i64* %arrayidx71, align 8
  store i64 %60, i64* %pos, align 8
  %61 = load i64, i64* %sub, align 8
  %62 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %62, i64 %61
  %63 = load i64, i64* %arrayidx72, align 8
  store i64 %63, i64* %last, align 8
  %64 = load i64, i64* %string.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %64, %call73
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.then.70
  %65 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %66 = load i64, i64* %pos, align 8
  %call77 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %65, i64 %66)
  store i64 %call77, i64* %pos_byte, align 8
  br label %if.end.80

if.else.78:                                       ; preds = %if.then.70
  %67 = load i64, i64* %string.addr, align 8
  %68 = load i64, i64* %pos, align 8
  %call79 = call i64 @string_char_to_byte(i64 %67, i64 %68)
  store i64 %call79, i64* %pos_byte, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  store i32 10, i32* %prevc, align 4
  store i32 1, i32* %case_action, align 4
  store i8 0, i8* %some_multiletter_word, align 1
  store i8 0, i8* %some_lowercase, align 1
  store i8 0, i8* %some_nonuppercase_initial, align 1
  store i8 0, i8* %some_uppercase, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.325, %if.end.80
  %69 = load i64, i64* %pos, align 8
  %70 = load i64, i64* %last, align 8
  %cmp81 = icmp slt i64 %69, %70
  br i1 %cmp81, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %71 = load i64, i64* %string.addr, align 8
  %call83 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp84 = icmp eq i64 %71, %call83
  br i1 %cmp84, label %if.then.86, label %if.else.217

if.then.86:                                       ; preds = %while.body
  %72 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 39
  %73 = load i64, i64* %enable_multibyte_characters_, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp88 = icmp eq i64 %73, %call87
  br i1 %cmp88, label %cond.false.92, label %cond.true.90

cond.true.90:                                     ; preds = %if.then.86
  %74 = load i64, i64* %pos_byte, align 8
  %call91 = call i32 @FETCH_MULTIBYTE_CHAR(i64 %74)
  br label %cond.end.164

cond.false.92:                                    ; preds = %if.then.86
  br i1 true, label %cond.true.93, label %cond.false.107

cond.true.93:                                     ; preds = %cond.false.92
  %75 = load i64, i64* %pos_byte, align 8
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 73
  %77 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %77, i32 0, i32 3
  %78 = load i64, i64* %gpt_byte, align 8
  %cmp94 = icmp sge i64 %75, %78
  br i1 %cmp94, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %cond.true.93
  %79 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text97 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 73
  %80 = load %struct.buffer_text*, %struct.buffer_text** %text97, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %80, i32 0, i32 5
  %81 = load i64, i64* %gap_size, align 8
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.true.93
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.96
  %cond = phi i64 [ %81, %cond.true.96 ], [ 0, %cond.false.98 ]
  %82 = load i64, i64* %pos_byte, align 8
  %add100 = add nsw i64 %cond, %82
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text101 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text101, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 0
  %85 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %85, i64 %add100
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %86 = load i8, i8* %add.ptr102, align 1
  %conv103 = zext i8 %86 to i32
  %add104 = add i32 %conv103, 0
  %cmp105 = icmp ult i32 %add104, 128
  br i1 %cmp105, label %cond.true.127, label %cond.false.144

cond.false.107:                                   ; preds = %cond.false.92
  %87 = load i64, i64* %pos_byte, align 8
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text108 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text108, align 8
  %gpt_byte109 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 3
  %90 = load i64, i64* %gpt_byte109, align 8
  %cmp110 = icmp sge i64 %87, %90
  br i1 %cmp110, label %cond.true.112, label %cond.false.115

cond.true.112:                                    ; preds = %cond.false.107
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text113 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 73
  %92 = load %struct.buffer_text*, %struct.buffer_text** %text113, align 8
  %gap_size114 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %92, i32 0, i32 5
  %93 = load i64, i64* %gap_size114, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %cond.false.107
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.112
  %cond117 = phi i64 [ %93, %cond.true.112 ], [ 0, %cond.false.115 ]
  %94 = load i64, i64* %pos_byte, align 8
  %add118 = add nsw i64 %cond117, %94
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text119 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text119, align 8
  %beg120 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 0
  %97 = load i8*, i8** %beg120, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %97, i64 %add118
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr121, i64 -1
  %98 = load i8, i8* %add.ptr122, align 1
  %conv123 = zext i8 %98 to i64
  %add124 = add i64 %conv123, 0
  %cmp125 = icmp ult i64 %add124, 128
  br i1 %cmp125, label %cond.true.127, label %cond.false.144

cond.true.127:                                    ; preds = %cond.end.116, %cond.end.99
  %99 = load i64, i64* %pos_byte, align 8
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text128 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text128, align 8
  %gpt_byte129 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 3
  %102 = load i64, i64* %gpt_byte129, align 8
  %cmp130 = icmp sge i64 %99, %102
  br i1 %cmp130, label %cond.true.132, label %cond.false.135

cond.true.132:                                    ; preds = %cond.true.127
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text133 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 73
  %104 = load %struct.buffer_text*, %struct.buffer_text** %text133, align 8
  %gap_size134 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %104, i32 0, i32 5
  %105 = load i64, i64* %gap_size134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.true.127
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.132
  %cond137 = phi i64 [ %105, %cond.true.132 ], [ 0, %cond.false.135 ]
  %106 = load i64, i64* %pos_byte, align 8
  %add138 = add nsw i64 %cond137, %106
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text139 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 73
  %108 = load %struct.buffer_text*, %struct.buffer_text** %text139, align 8
  %beg140 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %108, i32 0, i32 0
  %109 = load i8*, i8** %beg140, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %109, i64 %add138
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr141, i64 -1
  %110 = load i8, i8* %add.ptr142, align 1
  %conv143 = zext i8 %110 to i32
  br label %cond.end.162

cond.false.144:                                   ; preds = %cond.end.116, %cond.end.99
  %111 = load i64, i64* %pos_byte, align 8
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text145 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text145, align 8
  %gpt_byte146 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 3
  %114 = load i64, i64* %gpt_byte146, align 8
  %cmp147 = icmp sge i64 %111, %114
  br i1 %cmp147, label %cond.true.149, label %cond.false.152

cond.true.149:                                    ; preds = %cond.false.144
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text150 = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 73
  %116 = load %struct.buffer_text*, %struct.buffer_text** %text150, align 8
  %gap_size151 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %116, i32 0, i32 5
  %117 = load i64, i64* %gap_size151, align 8
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.false.144
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.149
  %cond154 = phi i64 [ %117, %cond.true.149 ], [ 0, %cond.false.152 ]
  %118 = load i64, i64* %pos_byte, align 8
  %add155 = add nsw i64 %cond154, %118
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text156 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 73
  %120 = load %struct.buffer_text*, %struct.buffer_text** %text156, align 8
  %beg157 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %120, i32 0, i32 0
  %121 = load i8*, i8** %beg157, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %121, i64 %add155
  %add.ptr159 = getelementptr inbounds i8, i8* %add.ptr158, i64 -1
  %122 = load i8, i8* %add.ptr159, align 1
  %conv160 = zext i8 %122 to i32
  %add161 = add nsw i32 %conv160, 4194048
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.end.153, %cond.end.136
  %cond163 = phi i32 [ %conv143, %cond.end.136 ], [ %add161, %cond.end.153 ]
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.end.162, %cond.true.90
  %cond165 = phi i32 [ %call91, %cond.true.90 ], [ %cond163, %cond.end.162 ]
  store i32 %cond165, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.164
  %123 = load i64, i64* %pos, align 8
  %inc = add nsw i64 %123, 1
  store i64 %inc, i64* %pos, align 8
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_166 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 39
  %125 = load i64, i64* %enable_multibyte_characters_166, align 8
  %call167 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp168 = icmp eq i64 %125, %call167
  br i1 %cmp168, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %do.body
  %126 = load i64, i64* %pos_byte, align 8
  %inc171 = add nsw i64 %126, 1
  store i64 %inc171, i64* %pos_byte, align 8
  br label %if.end.215

if.else.172:                                      ; preds = %do.body
  br label %do.body.173

do.body.173:                                      ; preds = %if.else.172
  %127 = load i64, i64* %pos_byte, align 8
  %128 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text174 = getelementptr inbounds %struct.buffer, %struct.buffer* %128, i32 0, i32 73
  %129 = load %struct.buffer_text*, %struct.buffer_text** %text174, align 8
  %gpt_byte175 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %129, i32 0, i32 3
  %130 = load i64, i64* %gpt_byte175, align 8
  %cmp176 = icmp sge i64 %127, %130
  br i1 %cmp176, label %cond.true.178, label %cond.false.181

cond.true.178:                                    ; preds = %do.body.173
  %131 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text179 = getelementptr inbounds %struct.buffer, %struct.buffer* %131, i32 0, i32 73
  %132 = load %struct.buffer_text*, %struct.buffer_text** %text179, align 8
  %gap_size180 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %132, i32 0, i32 5
  %133 = load i64, i64* %gap_size180, align 8
  br label %cond.end.182

cond.false.181:                                   ; preds = %do.body.173
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.178
  %cond183 = phi i64 [ %133, %cond.true.178 ], [ 0, %cond.false.181 ]
  %134 = load i64, i64* %pos_byte, align 8
  %add184 = add nsw i64 %cond183, %134
  %135 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text185 = getelementptr inbounds %struct.buffer, %struct.buffer* %135, i32 0, i32 73
  %136 = load %struct.buffer_text*, %struct.buffer_text** %text185, align 8
  %beg186 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %136, i32 0, i32 0
  %137 = load i8*, i8** %beg186, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %137, i64 %add184
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr187, i64 -1
  store i8* %add.ptr188, i8** %chp, align 8
  %138 = load i8*, i8** %chp, align 8
  %139 = load i8, i8* %138, align 1
  %conv189 = zext i8 %139 to i32
  %and190 = and i32 %conv189, 128
  %tobool = icmp ne i32 %and190, 0
  br i1 %tobool, label %cond.false.192, label %cond.true.191

cond.true.191:                                    ; preds = %cond.end.182
  br label %cond.end.211

cond.false.192:                                   ; preds = %cond.end.182
  %140 = load i8*, i8** %chp, align 8
  %141 = load i8, i8* %140, align 1
  %conv193 = zext i8 %141 to i32
  %and194 = and i32 %conv193, 32
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %cond.false.197, label %cond.true.196

cond.true.196:                                    ; preds = %cond.false.192
  br label %cond.end.209

cond.false.197:                                   ; preds = %cond.false.192
  %142 = load i8*, i8** %chp, align 8
  %143 = load i8, i8* %142, align 1
  %conv198 = zext i8 %143 to i32
  %and199 = and i32 %conv198, 16
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %cond.false.202, label %cond.true.201

cond.true.201:                                    ; preds = %cond.false.197
  br label %cond.end.207

cond.false.202:                                   ; preds = %cond.false.197
  %144 = load i8*, i8** %chp, align 8
  %145 = load i8, i8* %144, align 1
  %conv203 = zext i8 %145 to i32
  %and204 = and i32 %conv203, 8
  %tobool205 = icmp ne i32 %and204, 0
  %lnot = xor i1 %tobool205, true
  %cond206 = select i1 %lnot, i32 4, i32 5
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.202, %cond.true.201
  %cond208 = phi i32 [ 3, %cond.true.201 ], [ %cond206, %cond.false.202 ]
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.end.207, %cond.true.196
  %cond210 = phi i32 [ 2, %cond.true.196 ], [ %cond208, %cond.end.207 ]
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.end.209, %cond.true.191
  %cond212 = phi i32 [ 1, %cond.true.191 ], [ %cond210, %cond.end.209 ]
  %conv213 = sext i32 %cond212 to i64
  %146 = load i64, i64* %pos_byte, align 8
  %add214 = add nsw i64 %146, %conv213
  store i64 %add214, i64* %pos_byte, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end.211
  br label %if.end.215

if.end.215:                                       ; preds = %do.end, %if.then.170
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  br label %if.end.300

if.else.217:                                      ; preds = %while.body
  br label %do.body.218

do.body.218:                                      ; preds = %if.else.217
  %147 = load i64, i64* %pos, align 8
  %inc219 = add nsw i64 %147, 1
  store i64 %inc219, i64* %pos, align 8
  %148 = load i64, i64* %string.addr, align 8
  %call220 = call zeroext i1 @STRING_MULTIBYTE(i64 %148)
  br i1 %call220, label %if.then.221, label %if.else.280

if.then.221:                                      ; preds = %do.body.218
  %149 = load i64, i64* %pos_byte, align 8
  %150 = load i64, i64* %string.addr, align 8
  %call223 = call i8* @SDATA(i64 %150)
  %arrayidx224 = getelementptr inbounds i8, i8* %call223, i64 %149
  store i8* %arrayidx224, i8** %chp222, align 8
  %151 = load i8*, i8** %chp222, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %152 to i32
  %and227 = and i32 %conv226, 128
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %cond.false.232, label %cond.true.229

cond.true.229:                                    ; preds = %if.then.221
  store i32 1, i32* %chlen, align 4
  %153 = load i8*, i8** %chp222, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %154 to i32
  br label %cond.end.276

cond.false.232:                                   ; preds = %if.then.221
  %155 = load i8*, i8** %chp222, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %156 to i32
  %and235 = and i32 %conv234, 32
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %cond.false.251, label %cond.true.237

cond.true.237:                                    ; preds = %cond.false.232
  store i32 2, i32* %chlen, align 4
  %157 = load i8*, i8** %chp222, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %157, i64 0
  %158 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %158 to i32
  %and240 = and i32 %conv239, 31
  %shl241 = shl i32 %and240, 6
  %159 = load i8*, i8** %chp222, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %159, i64 1
  %160 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %160 to i32
  %and244 = and i32 %conv243, 63
  %or = or i32 %shl241, %and244
  %161 = load i8*, i8** %chp222, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %161, i64 0
  %162 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %162 to i32
  %cmp247 = icmp slt i32 %conv246, 194
  %cond249 = select i1 %cmp247, i32 4194176, i32 0
  %add250 = add nsw i32 %or, %cond249
  br label %cond.end.274

cond.false.251:                                   ; preds = %cond.false.232
  %163 = load i8*, i8** %chp222, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %163, i64 0
  %164 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %164 to i32
  %and254 = and i32 %conv253, 16
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %cond.false.270, label %cond.true.256

cond.true.256:                                    ; preds = %cond.false.251
  store i32 3, i32* %chlen, align 4
  %165 = load i8*, i8** %chp222, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %165, i64 0
  %166 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %166 to i32
  %and259 = and i32 %conv258, 15
  %shl260 = shl i32 %and259, 12
  %167 = load i8*, i8** %chp222, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %168 to i32
  %and263 = and i32 %conv262, 63
  %shl264 = shl i32 %and263, 6
  %or265 = or i32 %shl260, %shl264
  %169 = load i8*, i8** %chp222, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %169, i64 2
  %170 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %170 to i32
  %and268 = and i32 %conv267, 63
  %or269 = or i32 %or265, %and268
  br label %cond.end.272

cond.false.270:                                   ; preds = %cond.false.251
  %171 = load i8*, i8** %chp222, align 8
  %call271 = call i32 @string_char(i8* %171, i8** null, i32* %chlen)
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.270, %cond.true.256
  %cond273 = phi i32 [ %or269, %cond.true.256 ], [ %call271, %cond.false.270 ]
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.end.272, %cond.true.237
  %cond275 = phi i32 [ %add250, %cond.true.237 ], [ %cond273, %cond.end.272 ]
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.end.274, %cond.true.229
  %cond277 = phi i32 [ %conv231, %cond.true.229 ], [ %cond275, %cond.end.274 ]
  store i32 %cond277, i32* %c, align 4
  %172 = load i32, i32* %chlen, align 4
  %conv278 = sext i32 %172 to i64
  %173 = load i64, i64* %pos_byte, align 8
  %add279 = add nsw i64 %173, %conv278
  store i64 %add279, i64* %pos_byte, align 8
  br label %if.end.298

if.else.280:                                      ; preds = %do.body.218
  %174 = load i64, i64* %string.addr, align 8
  %175 = load i64, i64* %pos_byte, align 8
  %call281 = call zeroext i8 @SREF(i64 %174, i64 %175)
  %conv282 = zext i8 %call281 to i32
  store i32 %conv282, i32* %c, align 4
  %176 = load i64, i64* %pos_byte, align 8
  %inc283 = add nsw i64 %176, 1
  store i64 %inc283, i64* %pos_byte, align 8
  br i1 true, label %cond.true.284, label %cond.false.288

cond.true.284:                                    ; preds = %if.else.280
  %177 = load i32, i32* %c, align 4
  %add285 = add i32 %177, 0
  %cmp286 = icmp ult i32 %add285, 128
  br i1 %cmp286, label %cond.true.293, label %cond.false.294

cond.false.288:                                   ; preds = %if.else.280
  %178 = load i32, i32* %c, align 4
  %conv289 = sext i32 %178 to i64
  %add290 = add i64 %conv289, 0
  %cmp291 = icmp ult i64 %add290, 128
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %cond.false.288, %cond.true.284
  %179 = load i32, i32* %c, align 4
  br label %cond.end.296

cond.false.294:                                   ; preds = %cond.false.288, %cond.true.284
  %180 = load i32, i32* %c, align 4
  %add295 = add nsw i32 %180, 4194048
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.294, %cond.true.293
  %cond297 = phi i32 [ %179, %cond.true.293 ], [ %add295, %cond.false.294 ]
  store i32 %cond297, i32* %c, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %cond.end.296, %cond.end.276
  br label %do.end.299

do.end.299:                                       ; preds = %if.end.298
  br label %if.end.300

if.end.300:                                       ; preds = %do.end.299, %do.end.216
  %181 = load i32, i32* %c, align 4
  %call301 = call zeroext i1 @lowercasep(i32 %181)
  br i1 %call301, label %if.then.302, label %if.else.309

if.then.302:                                      ; preds = %if.end.300
  store i8 1, i8* %some_lowercase, align 1
  %182 = load i32, i32* %prevc, align 4
  %call303 = call i32 @SYNTAX(i32 %182)
  %cmp304 = icmp ne i32 %call303, 2
  br i1 %cmp304, label %if.then.306, label %if.else.307

if.then.306:                                      ; preds = %if.then.302
  store i8 1, i8* %some_nonuppercase_initial, align 1
  br label %if.end.308

if.else.307:                                      ; preds = %if.then.302
  store i8 1, i8* %some_multiletter_word, align 1
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.307, %if.then.306
  br label %if.end.325

if.else.309:                                      ; preds = %if.end.300
  %183 = load i32, i32* %c, align 4
  %call310 = call zeroext i1 @uppercasep(i32 %183)
  br i1 %call310, label %if.then.311, label %if.else.318

if.then.311:                                      ; preds = %if.else.309
  store i8 1, i8* %some_uppercase, align 1
  %184 = load i32, i32* %prevc, align 4
  %call312 = call i32 @SYNTAX(i32 %184)
  %cmp313 = icmp ne i32 %call312, 2
  br i1 %cmp313, label %if.then.315, label %if.else.316

if.then.315:                                      ; preds = %if.then.311
  br label %if.end.317

if.else.316:                                      ; preds = %if.then.311
  store i8 1, i8* %some_multiletter_word, align 1
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.316, %if.then.315
  br label %if.end.324

if.else.318:                                      ; preds = %if.else.309
  %185 = load i32, i32* %prevc, align 4
  %call319 = call i32 @SYNTAX(i32 %185)
  %cmp320 = icmp ne i32 %call319, 2
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.else.318
  store i8 1, i8* %some_nonuppercase_initial, align 1
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.else.318
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.317
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324, %if.end.308
  %186 = load i32, i32* %c, align 4
  store i32 %186, i32* %prevc, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %187 = load i8, i8* %some_lowercase, align 1
  %tobool326 = trunc i8 %187 to i1
  br i1 %tobool326, label %if.else.331, label %land.lhs.true.327

land.lhs.true.327:                                ; preds = %while.end
  %188 = load i8, i8* %some_multiletter_word, align 1
  %tobool328 = trunc i8 %188 to i1
  br i1 %tobool328, label %if.then.330, label %if.else.331

if.then.330:                                      ; preds = %land.lhs.true.327
  store i32 1, i32* %case_action, align 4
  br label %if.end.346

if.else.331:                                      ; preds = %land.lhs.true.327, %while.end
  %189 = load i8, i8* %some_nonuppercase_initial, align 1
  %tobool332 = trunc i8 %189 to i1
  br i1 %tobool332, label %if.else.337, label %land.lhs.true.333

land.lhs.true.333:                                ; preds = %if.else.331
  %190 = load i8, i8* %some_multiletter_word, align 1
  %tobool334 = trunc i8 %190 to i1
  br i1 %tobool334, label %if.then.336, label %if.else.337

if.then.336:                                      ; preds = %land.lhs.true.333
  store i32 2, i32* %case_action, align 4
  br label %if.end.345

if.else.337:                                      ; preds = %land.lhs.true.333, %if.else.331
  %191 = load i8, i8* %some_nonuppercase_initial, align 1
  %tobool338 = trunc i8 %191 to i1
  br i1 %tobool338, label %if.else.343, label %land.lhs.true.339

land.lhs.true.339:                                ; preds = %if.else.337
  %192 = load i8, i8* %some_uppercase, align 1
  %tobool340 = trunc i8 %192 to i1
  br i1 %tobool340, label %if.then.342, label %if.else.343

if.then.342:                                      ; preds = %land.lhs.true.339
  store i32 1, i32* %case_action, align 4
  br label %if.end.344

if.else.343:                                      ; preds = %land.lhs.true.339, %if.else.337
  store i32 0, i32* %case_action, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.343, %if.then.342
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.336
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.then.330
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.66
  %193 = load i64, i64* %string.addr, align 8
  %call348 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp349 = icmp eq i64 %193, %call348
  br i1 %cmp349, label %if.end.603, label %if.then.351

if.then.351:                                      ; preds = %if.end.347
  %194 = load i64, i64* %string.addr, align 8
  %195 = load i64, i64* %sub, align 8
  %196 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx352 = getelementptr inbounds i64, i64* %196, i64 %195
  %197 = load i64, i64* %arrayidx352, align 8
  %shl353 = shl i64 %197, 2
  %add354 = add i64 %shl353, 2
  %call355 = call i64 @Fsubstring(i64 %194, i64 2, i64 %add354)
  store i64 %call355, i64* %before, align 8
  %198 = load i64, i64* %string.addr, align 8
  %199 = load i64, i64* %sub, align 8
  %200 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx356 = getelementptr inbounds i64, i64* %200, i64 %199
  %201 = load i64, i64* %arrayidx356, align 8
  %shl357 = shl i64 %201, 2
  %add358 = add i64 %shl357, 2
  %call359 = call i64 @builtin_lisp_symbol(i32 0)
  %call360 = call i64 @Fsubstring(i64 %198, i64 %add358, i64 %call359)
  store i64 %call360, i64* %after, align 8
  %202 = load i64, i64* %literal.addr, align 8
  %call361 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp362 = icmp eq i64 %202, %call361
  br i1 %cmp362, label %if.then.364, label %if.end.590

if.then.364:                                      ; preds = %if.then.351
  store i64 0, i64* %lastpos, align 8
  store i64 0, i64* %lastpos_byte, align 8
  %203 = load i64, i64* %newtext.addr, align 8
  %call365 = call i64 @SBYTES(i64 %203)
  store i64 %call365, i64* %length, align 8
  %call366 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call366, i64* %accum, align 8
  store i64 0, i64* %pos_byte, align 8
  store i64 0, i64* %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.581, %if.then.364
  %204 = load i64, i64* %pos_byte, align 8
  %205 = load i64, i64* %length, align 8
  %cmp367 = icmp slt i64 %204, %205
  br i1 %cmp367, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 -1, i64* %substart, align 8
  store i64 0, i64* %subend, align 8
  store i8 0, i8* %delbackslash, align 1
  br label %do.body.369

do.body.369:                                      ; preds = %for.body
  %206 = load i64, i64* %pos, align 8
  %inc370 = add nsw i64 %206, 1
  store i64 %inc370, i64* %pos, align 8
  %207 = load i64, i64* %newtext.addr, align 8
  %call371 = call zeroext i1 @STRING_MULTIBYTE(i64 %207)
  br i1 %call371, label %if.then.372, label %if.else.433

if.then.372:                                      ; preds = %do.body.369
  %208 = load i64, i64* %pos_byte, align 8
  %209 = load i64, i64* %newtext.addr, align 8
  %call374 = call i8* @SDATA(i64 %209)
  %arrayidx375 = getelementptr inbounds i8, i8* %call374, i64 %208
  store i8* %arrayidx375, i8** %chp373, align 8
  %210 = load i8*, i8** %chp373, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %210, i64 0
  %211 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %211 to i32
  %and379 = and i32 %conv378, 128
  %tobool380 = icmp ne i32 %and379, 0
  br i1 %tobool380, label %cond.false.384, label %cond.true.381

cond.true.381:                                    ; preds = %if.then.372
  store i32 1, i32* %chlen376, align 4
  %212 = load i8*, i8** %chp373, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %212, i64 0
  %213 = load i8, i8* %arrayidx382, align 1
  %conv383 = zext i8 %213 to i32
  br label %cond.end.429

cond.false.384:                                   ; preds = %if.then.372
  %214 = load i8*, i8** %chp373, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %214, i64 0
  %215 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %215 to i32
  %and387 = and i32 %conv386, 32
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %cond.false.404, label %cond.true.389

cond.true.389:                                    ; preds = %cond.false.384
  store i32 2, i32* %chlen376, align 4
  %216 = load i8*, i8** %chp373, align 8
  %arrayidx390 = getelementptr inbounds i8, i8* %216, i64 0
  %217 = load i8, i8* %arrayidx390, align 1
  %conv391 = zext i8 %217 to i32
  %and392 = and i32 %conv391, 31
  %shl393 = shl i32 %and392, 6
  %218 = load i8*, i8** %chp373, align 8
  %arrayidx394 = getelementptr inbounds i8, i8* %218, i64 1
  %219 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %219 to i32
  %and396 = and i32 %conv395, 63
  %or397 = or i32 %shl393, %and396
  %220 = load i8*, i8** %chp373, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %220, i64 0
  %221 = load i8, i8* %arrayidx398, align 1
  %conv399 = zext i8 %221 to i32
  %cmp400 = icmp slt i32 %conv399, 194
  %cond402 = select i1 %cmp400, i32 4194176, i32 0
  %add403 = add nsw i32 %or397, %cond402
  br label %cond.end.427

cond.false.404:                                   ; preds = %cond.false.384
  %222 = load i8*, i8** %chp373, align 8
  %arrayidx405 = getelementptr inbounds i8, i8* %222, i64 0
  %223 = load i8, i8* %arrayidx405, align 1
  %conv406 = zext i8 %223 to i32
  %and407 = and i32 %conv406, 16
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %cond.false.423, label %cond.true.409

cond.true.409:                                    ; preds = %cond.false.404
  store i32 3, i32* %chlen376, align 4
  %224 = load i8*, i8** %chp373, align 8
  %arrayidx410 = getelementptr inbounds i8, i8* %224, i64 0
  %225 = load i8, i8* %arrayidx410, align 1
  %conv411 = zext i8 %225 to i32
  %and412 = and i32 %conv411, 15
  %shl413 = shl i32 %and412, 12
  %226 = load i8*, i8** %chp373, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %226, i64 1
  %227 = load i8, i8* %arrayidx414, align 1
  %conv415 = zext i8 %227 to i32
  %and416 = and i32 %conv415, 63
  %shl417 = shl i32 %and416, 6
  %or418 = or i32 %shl413, %shl417
  %228 = load i8*, i8** %chp373, align 8
  %arrayidx419 = getelementptr inbounds i8, i8* %228, i64 2
  %229 = load i8, i8* %arrayidx419, align 1
  %conv420 = zext i8 %229 to i32
  %and421 = and i32 %conv420, 63
  %or422 = or i32 %or418, %and421
  br label %cond.end.425

cond.false.423:                                   ; preds = %cond.false.404
  %230 = load i8*, i8** %chp373, align 8
  %call424 = call i32 @string_char(i8* %230, i8** null, i32* %chlen376)
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.423, %cond.true.409
  %cond426 = phi i32 [ %or422, %cond.true.409 ], [ %call424, %cond.false.423 ]
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.end.425, %cond.true.389
  %cond428 = phi i32 [ %add403, %cond.true.389 ], [ %cond426, %cond.end.425 ]
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.end.427, %cond.true.381
  %cond430 = phi i32 [ %conv383, %cond.true.381 ], [ %cond428, %cond.end.427 ]
  store i32 %cond430, i32* %c, align 4
  %231 = load i32, i32* %chlen376, align 4
  %conv431 = sext i32 %231 to i64
  %232 = load i64, i64* %pos_byte, align 8
  %add432 = add nsw i64 %232, %conv431
  store i64 %add432, i64* %pos_byte, align 8
  br label %if.end.437

if.else.433:                                      ; preds = %do.body.369
  %233 = load i64, i64* %newtext.addr, align 8
  %234 = load i64, i64* %pos_byte, align 8
  %call434 = call zeroext i8 @SREF(i64 %233, i64 %234)
  %conv435 = zext i8 %call434 to i32
  store i32 %conv435, i32* %c, align 4
  %235 = load i64, i64* %pos_byte, align 8
  %inc436 = add nsw i64 %235, 1
  store i64 %inc436, i64* %pos_byte, align 8
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.433, %cond.end.429
  br label %do.end.438

do.end.438:                                       ; preds = %if.end.437
  %236 = load i32, i32* %c, align 4
  %cmp439 = icmp eq i32 %236, 92
  br i1 %cmp439, label %if.then.441, label %if.end.553

if.then.441:                                      ; preds = %do.end.438
  br label %do.body.442

do.body.442:                                      ; preds = %if.then.441
  %237 = load i64, i64* %pos, align 8
  %inc443 = add nsw i64 %237, 1
  store i64 %inc443, i64* %pos, align 8
  %238 = load i64, i64* %newtext.addr, align 8
  %call444 = call zeroext i1 @STRING_MULTIBYTE(i64 %238)
  br i1 %call444, label %if.then.445, label %if.else.506

if.then.445:                                      ; preds = %do.body.442
  %239 = load i64, i64* %pos_byte, align 8
  %240 = load i64, i64* %newtext.addr, align 8
  %call447 = call i8* @SDATA(i64 %240)
  %arrayidx448 = getelementptr inbounds i8, i8* %call447, i64 %239
  store i8* %arrayidx448, i8** %chp446, align 8
  %241 = load i8*, i8** %chp446, align 8
  %arrayidx450 = getelementptr inbounds i8, i8* %241, i64 0
  %242 = load i8, i8* %arrayidx450, align 1
  %conv451 = zext i8 %242 to i32
  %and452 = and i32 %conv451, 128
  %tobool453 = icmp ne i32 %and452, 0
  br i1 %tobool453, label %cond.false.457, label %cond.true.454

cond.true.454:                                    ; preds = %if.then.445
  store i32 1, i32* %chlen449, align 4
  %243 = load i8*, i8** %chp446, align 8
  %arrayidx455 = getelementptr inbounds i8, i8* %243, i64 0
  %244 = load i8, i8* %arrayidx455, align 1
  %conv456 = zext i8 %244 to i32
  br label %cond.end.502

cond.false.457:                                   ; preds = %if.then.445
  %245 = load i8*, i8** %chp446, align 8
  %arrayidx458 = getelementptr inbounds i8, i8* %245, i64 0
  %246 = load i8, i8* %arrayidx458, align 1
  %conv459 = zext i8 %246 to i32
  %and460 = and i32 %conv459, 32
  %tobool461 = icmp ne i32 %and460, 0
  br i1 %tobool461, label %cond.false.477, label %cond.true.462

cond.true.462:                                    ; preds = %cond.false.457
  store i32 2, i32* %chlen449, align 4
  %247 = load i8*, i8** %chp446, align 8
  %arrayidx463 = getelementptr inbounds i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx463, align 1
  %conv464 = zext i8 %248 to i32
  %and465 = and i32 %conv464, 31
  %shl466 = shl i32 %and465, 6
  %249 = load i8*, i8** %chp446, align 8
  %arrayidx467 = getelementptr inbounds i8, i8* %249, i64 1
  %250 = load i8, i8* %arrayidx467, align 1
  %conv468 = zext i8 %250 to i32
  %and469 = and i32 %conv468, 63
  %or470 = or i32 %shl466, %and469
  %251 = load i8*, i8** %chp446, align 8
  %arrayidx471 = getelementptr inbounds i8, i8* %251, i64 0
  %252 = load i8, i8* %arrayidx471, align 1
  %conv472 = zext i8 %252 to i32
  %cmp473 = icmp slt i32 %conv472, 194
  %cond475 = select i1 %cmp473, i32 4194176, i32 0
  %add476 = add nsw i32 %or470, %cond475
  br label %cond.end.500

cond.false.477:                                   ; preds = %cond.false.457
  %253 = load i8*, i8** %chp446, align 8
  %arrayidx478 = getelementptr inbounds i8, i8* %253, i64 0
  %254 = load i8, i8* %arrayidx478, align 1
  %conv479 = zext i8 %254 to i32
  %and480 = and i32 %conv479, 16
  %tobool481 = icmp ne i32 %and480, 0
  br i1 %tobool481, label %cond.false.496, label %cond.true.482

cond.true.482:                                    ; preds = %cond.false.477
  store i32 3, i32* %chlen449, align 4
  %255 = load i8*, i8** %chp446, align 8
  %arrayidx483 = getelementptr inbounds i8, i8* %255, i64 0
  %256 = load i8, i8* %arrayidx483, align 1
  %conv484 = zext i8 %256 to i32
  %and485 = and i32 %conv484, 15
  %shl486 = shl i32 %and485, 12
  %257 = load i8*, i8** %chp446, align 8
  %arrayidx487 = getelementptr inbounds i8, i8* %257, i64 1
  %258 = load i8, i8* %arrayidx487, align 1
  %conv488 = zext i8 %258 to i32
  %and489 = and i32 %conv488, 63
  %shl490 = shl i32 %and489, 6
  %or491 = or i32 %shl486, %shl490
  %259 = load i8*, i8** %chp446, align 8
  %arrayidx492 = getelementptr inbounds i8, i8* %259, i64 2
  %260 = load i8, i8* %arrayidx492, align 1
  %conv493 = zext i8 %260 to i32
  %and494 = and i32 %conv493, 63
  %or495 = or i32 %or491, %and494
  br label %cond.end.498

cond.false.496:                                   ; preds = %cond.false.477
  %261 = load i8*, i8** %chp446, align 8
  %call497 = call i32 @string_char(i8* %261, i8** null, i32* %chlen449)
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.496, %cond.true.482
  %cond499 = phi i32 [ %or495, %cond.true.482 ], [ %call497, %cond.false.496 ]
  br label %cond.end.500

cond.end.500:                                     ; preds = %cond.end.498, %cond.true.462
  %cond501 = phi i32 [ %add476, %cond.true.462 ], [ %cond499, %cond.end.498 ]
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.end.500, %cond.true.454
  %cond503 = phi i32 [ %conv456, %cond.true.454 ], [ %cond501, %cond.end.500 ]
  store i32 %cond503, i32* %c, align 4
  %262 = load i32, i32* %chlen449, align 4
  %conv504 = sext i32 %262 to i64
  %263 = load i64, i64* %pos_byte, align 8
  %add505 = add nsw i64 %263, %conv504
  store i64 %add505, i64* %pos_byte, align 8
  br label %if.end.510

if.else.506:                                      ; preds = %do.body.442
  %264 = load i64, i64* %newtext.addr, align 8
  %265 = load i64, i64* %pos_byte, align 8
  %call507 = call zeroext i8 @SREF(i64 %264, i64 %265)
  %conv508 = zext i8 %call507 to i32
  store i32 %conv508, i32* %c, align 4
  %266 = load i64, i64* %pos_byte, align 8
  %inc509 = add nsw i64 %266, 1
  store i64 %inc509, i64* %pos_byte, align 8
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.506, %cond.end.502
  br label %do.end.511

do.end.511:                                       ; preds = %if.end.510
  %267 = load i32, i32* %c, align 4
  %cmp512 = icmp eq i32 %267, 38
  br i1 %cmp512, label %if.then.514, label %if.else.517

if.then.514:                                      ; preds = %do.end.511
  %268 = load i64, i64* %sub, align 8
  %269 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx515 = getelementptr inbounds i64, i64* %269, i64 %268
  %270 = load i64, i64* %arrayidx515, align 8
  store i64 %270, i64* %substart, align 8
  %271 = load i64, i64* %sub, align 8
  %272 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx516 = getelementptr inbounds i64, i64* %272, i64 %271
  %273 = load i64, i64* %arrayidx516, align 8
  store i64 %273, i64* %subend, align 8
  br label %if.end.552

if.else.517:                                      ; preds = %do.end.511
  %274 = load i32, i32* %c, align 4
  %cmp518 = icmp sge i32 %274, 49
  br i1 %cmp518, label %land.lhs.true.520, label %if.else.541

land.lhs.true.520:                                ; preds = %if.else.517
  %275 = load i32, i32* %c, align 4
  %cmp521 = icmp sle i32 %275, 57
  br i1 %cmp521, label %if.then.523, label %if.else.541

if.then.523:                                      ; preds = %land.lhs.true.520
  %276 = load i32, i32* %c, align 4
  %sub524 = sub nsw i32 %276, 48
  %277 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp525 = icmp ult i32 %sub524, %277
  br i1 %cmp525, label %land.lhs.true.527, label %if.else.539

land.lhs.true.527:                                ; preds = %if.then.523
  %278 = load i32, i32* %c, align 4
  %sub528 = sub nsw i32 %278, 48
  %idxprom = sext i32 %sub528 to i64
  %279 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx529 = getelementptr inbounds i64, i64* %279, i64 %idxprom
  %280 = load i64, i64* %arrayidx529, align 8
  %cmp530 = icmp sge i64 %280, 0
  br i1 %cmp530, label %if.then.532, label %if.else.539

if.then.532:                                      ; preds = %land.lhs.true.527
  %281 = load i32, i32* %c, align 4
  %sub533 = sub nsw i32 %281, 48
  %idxprom534 = sext i32 %sub533 to i64
  %282 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx535 = getelementptr inbounds i64, i64* %282, i64 %idxprom534
  %283 = load i64, i64* %arrayidx535, align 8
  store i64 %283, i64* %substart, align 8
  %284 = load i32, i32* %c, align 4
  %sub536 = sub nsw i32 %284, 48
  %idxprom537 = sext i32 %sub536 to i64
  %285 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx538 = getelementptr inbounds i64, i64* %285, i64 %idxprom537
  %286 = load i64, i64* %arrayidx538, align 8
  store i64 %286, i64* %subend, align 8
  br label %if.end.540

if.else.539:                                      ; preds = %land.lhs.true.527, %if.then.523
  store i64 0, i64* %substart, align 8
  store i64 0, i64* %subend, align 8
  br label %if.end.540

if.end.540:                                       ; preds = %if.else.539, %if.then.532
  br label %if.end.551

if.else.541:                                      ; preds = %land.lhs.true.520, %if.else.517
  %287 = load i32, i32* %c, align 4
  %cmp542 = icmp eq i32 %287, 92
  br i1 %cmp542, label %if.then.544, label %if.else.545

if.then.544:                                      ; preds = %if.else.541
  store i8 1, i8* %delbackslash, align 1
  br label %if.end.550

if.else.545:                                      ; preds = %if.else.541
  %288 = load i32, i32* %c, align 4
  %cmp546 = icmp ne i32 %288, 63
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.else.545
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.549:                                       ; preds = %if.else.545
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %if.then.544
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %if.end.540
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %if.then.514
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %do.end.438
  %289 = load i64, i64* %substart, align 8
  %cmp554 = icmp sge i64 %289, 0
  br i1 %cmp554, label %if.then.556, label %if.else.573

if.then.556:                                      ; preds = %if.end.553
  %290 = load i64, i64* %pos, align 8
  %sub557 = sub nsw i64 %290, 2
  %291 = load i64, i64* %lastpos, align 8
  %cmp558 = icmp ne i64 %sub557, %291
  br i1 %cmp558, label %if.then.560, label %if.else.564

if.then.560:                                      ; preds = %if.then.556
  %292 = load i64, i64* %newtext.addr, align 8
  %293 = load i64, i64* %lastpos, align 8
  %294 = load i64, i64* %lastpos_byte, align 8
  %295 = load i64, i64* %pos, align 8
  %sub561 = sub nsw i64 %295, 2
  %296 = load i64, i64* %pos_byte, align 8
  %sub562 = sub nsw i64 %296, 2
  %call563 = call i64 @substring_both(i64 %292, i64 %293, i64 %294, i64 %sub561, i64 %sub562)
  store i64 %call563, i64* %middle, align 8
  br label %if.end.566

if.else.564:                                      ; preds = %if.then.556
  %call565 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call565, i64* %middle, align 8
  br label %if.end.566

if.end.566:                                       ; preds = %if.else.564, %if.then.560
  %297 = load i64, i64* %accum, align 8
  %298 = load i64, i64* %middle, align 8
  %299 = load i64, i64* %string.addr, align 8
  %300 = load i64, i64* %substart, align 8
  %shl567 = shl i64 %300, 2
  %add568 = add i64 %shl567, 2
  %301 = load i64, i64* %subend, align 8
  %shl569 = shl i64 %301, 2
  %add570 = add i64 %shl569, 2
  %call571 = call i64 @Fsubstring(i64 %299, i64 %add568, i64 %add570)
  %call572 = call i64 @concat3(i64 %297, i64 %298, i64 %call571)
  store i64 %call572, i64* %accum, align 8
  %302 = load i64, i64* %pos, align 8
  store i64 %302, i64* %lastpos, align 8
  %303 = load i64, i64* %pos_byte, align 8
  store i64 %303, i64* %lastpos_byte, align 8
  br label %if.end.581

if.else.573:                                      ; preds = %if.end.553
  %304 = load i8, i8* %delbackslash, align 1
  %tobool574 = trunc i8 %304 to i1
  br i1 %tobool574, label %if.then.575, label %if.end.580

if.then.575:                                      ; preds = %if.else.573
  %305 = load i64, i64* %newtext.addr, align 8
  %306 = load i64, i64* %lastpos, align 8
  %307 = load i64, i64* %lastpos_byte, align 8
  %308 = load i64, i64* %pos, align 8
  %sub576 = sub nsw i64 %308, 1
  %309 = load i64, i64* %pos_byte, align 8
  %sub577 = sub nsw i64 %309, 1
  %call578 = call i64 @substring_both(i64 %305, i64 %306, i64 %307, i64 %sub576, i64 %sub577)
  store i64 %call578, i64* %middle, align 8
  %310 = load i64, i64* %accum, align 8
  %311 = load i64, i64* %middle, align 8
  %call579 = call i64 @concat2(i64 %310, i64 %311)
  store i64 %call579, i64* %accum, align 8
  %312 = load i64, i64* %pos, align 8
  store i64 %312, i64* %lastpos, align 8
  %313 = load i64, i64* %pos_byte, align 8
  store i64 %313, i64* %lastpos_byte, align 8
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.575, %if.else.573
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %if.end.566
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %314 = load i64, i64* %pos, align 8
  %315 = load i64, i64* %lastpos, align 8
  %cmp582 = icmp ne i64 %314, %315
  br i1 %cmp582, label %if.then.584, label %if.else.586

if.then.584:                                      ; preds = %for.end
  %316 = load i64, i64* %newtext.addr, align 8
  %317 = load i64, i64* %lastpos, align 8
  %318 = load i64, i64* %lastpos_byte, align 8
  %319 = load i64, i64* %pos, align 8
  %320 = load i64, i64* %pos_byte, align 8
  %call585 = call i64 @substring_both(i64 %316, i64 %317, i64 %318, i64 %319, i64 %320)
  store i64 %call585, i64* %middle, align 8
  br label %if.end.588

if.else.586:                                      ; preds = %for.end
  %call587 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call587, i64* %middle, align 8
  br label %if.end.588

if.end.588:                                       ; preds = %if.else.586, %if.then.584
  %321 = load i64, i64* %accum, align 8
  %322 = load i64, i64* %middle, align 8
  %call589 = call i64 @concat2(i64 %321, i64 %322)
  store i64 %call589, i64* %newtext.addr, align 8
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.588, %if.then.351
  %323 = load i32, i32* %case_action, align 4
  %cmp591 = icmp eq i32 %323, 1
  br i1 %cmp591, label %if.then.593, label %if.else.595

if.then.593:                                      ; preds = %if.end.590
  %324 = load i64, i64* %newtext.addr, align 8
  %call594 = call i64 @Fupcase(i64 %324)
  store i64 %call594, i64* %newtext.addr, align 8
  br label %if.end.601

if.else.595:                                      ; preds = %if.end.590
  %325 = load i32, i32* %case_action, align 4
  %cmp596 = icmp eq i32 %325, 2
  br i1 %cmp596, label %if.then.598, label %if.end.600

if.then.598:                                      ; preds = %if.else.595
  %326 = load i64, i64* %newtext.addr, align 8
  %call599 = call i64 @Fupcase_initials(i64 %326)
  store i64 %call599, i64* %newtext.addr, align 8
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.598, %if.else.595
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %if.then.593
  %327 = load i64, i64* %before, align 8
  %328 = load i64, i64* %newtext.addr, align 8
  %329 = load i64, i64* %after, align 8
  %call602 = call i64 @concat3(i64 %327, i64 %328, i64 %329)
  store i64 %call602, i64* %retval
  br label %return

if.end.603:                                       ; preds = %if.end.347
  %330 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %330, i32 0, i32 75
  %331 = load i64, i64* %pt, align 8
  %add604 = add nsw i64 %331, 0
  %332 = load i64, i64* %sub, align 8
  %333 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx605 = getelementptr inbounds i64, i64* %333, i64 %332
  %334 = load i64, i64* %arrayidx605, align 8
  %cmp606 = icmp sge i64 %add604, %334
  br i1 %cmp606, label %if.then.608, label %if.else.613

if.then.608:                                      ; preds = %if.end.603
  %335 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt609 = getelementptr inbounds %struct.buffer, %struct.buffer* %335, i32 0, i32 75
  %336 = load i64, i64* %pt609, align 8
  %add610 = add nsw i64 %336, 0
  %337 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv611 = getelementptr inbounds %struct.buffer, %struct.buffer* %337, i32 0, i32 79
  %338 = load i64, i64* %zv611, align 8
  %sub612 = sub nsw i64 %add610, %338
  store i64 %sub612, i64* %opoint, align 8
  br label %if.end.627

if.else.613:                                      ; preds = %if.end.603
  %339 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt614 = getelementptr inbounds %struct.buffer, %struct.buffer* %339, i32 0, i32 75
  %340 = load i64, i64* %pt614, align 8
  %add615 = add nsw i64 %340, 0
  %341 = load i64, i64* %sub, align 8
  %342 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx616 = getelementptr inbounds i64, i64* %342, i64 %341
  %343 = load i64, i64* %arrayidx616, align 8
  %cmp617 = icmp sgt i64 %add615, %343
  br i1 %cmp617, label %if.then.619, label %if.else.623

if.then.619:                                      ; preds = %if.else.613
  %344 = load i64, i64* %sub, align 8
  %345 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx620 = getelementptr inbounds i64, i64* %345, i64 %344
  %346 = load i64, i64* %arrayidx620, align 8
  %347 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv621 = getelementptr inbounds %struct.buffer, %struct.buffer* %347, i32 0, i32 79
  %348 = load i64, i64* %zv621, align 8
  %sub622 = sub nsw i64 %346, %348
  store i64 %sub622, i64* %opoint, align 8
  br label %if.end.626

if.else.623:                                      ; preds = %if.else.613
  %349 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt624 = getelementptr inbounds %struct.buffer, %struct.buffer* %349, i32 0, i32 75
  %350 = load i64, i64* %pt624, align 8
  %add625 = add nsw i64 %350, 0
  store i64 %add625, i64* %opoint, align 8
  br label %if.end.626

if.end.626:                                       ; preds = %if.else.623, %if.then.619
  br label %if.end.627

if.end.627:                                       ; preds = %if.end.626, %if.then.608
  %351 = load i64, i64* %literal.addr, align 8
  %call628 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp629 = icmp eq i64 %351, %call628
  br i1 %cmp629, label %if.then.631, label %if.end.1014

if.then.631:                                      ; preds = %if.end.627
  %352 = load i64, i64* %newtext.addr, align 8
  %call633 = call i64 @SBYTES(i64 %352)
  store i64 %call633, i64* %length632, align 8
  %353 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_634 = getelementptr inbounds %struct.buffer, %struct.buffer* %353, i32 0, i32 39
  %354 = load i64, i64* %enable_multibyte_characters_634, align 8
  %call635 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp636 = icmp eq i64 %354, %call635
  %lnot638 = xor i1 %cmp636, true
  %frombool = zext i1 %lnot638 to i8
  store i8 %frombool, i8* %buf_multibyte, align 1
  %355 = load i64, i64* %newtext.addr, align 8
  %call639 = call zeroext i1 @STRING_MULTIBYTE(i64 %355)
  %frombool640 = zext i1 %call639 to i8
  store i8 %frombool640, i8* %str_multibyte, align 1
  store i8 0, i8* %really_changed, align 1
  %356 = load i64, i64* %length632, align 8
  %cmp641 = icmp sle i64 %356, 1152921504606846925
  br i1 %cmp641, label %cond.true.643, label %cond.false.645

cond.true.643:                                    ; preds = %if.then.631
  %357 = load i64, i64* %length632, align 8
  %mul = mul nsw i64 %357, 2
  %add644 = add nsw i64 %mul, 100
  br label %cond.end.646

cond.false.645:                                   ; preds = %if.then.631
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.645, %cond.true.643
  %cond647 = phi i64 [ %add644, %cond.true.643 ], [ 2305843009213693951, %cond.false.645 ]
  store i64 %cond647, i64* %substed_alloc_size, align 8
  %358 = load i64, i64* %substed_alloc_size, align 8
  %call648 = call noalias i8* @xmalloc(i64 %358)
  store i8* %call648, i8** %substed, align 8
  store i64 0, i64* %substed_len, align 8
  store i64 0, i64* %pos_byte, align 8
  store i64 0, i64* %pos, align 8
  br label %for.cond.649

for.cond.649:                                     ; preds = %if.end.1007, %cond.end.646
  %359 = load i64, i64* %pos_byte, align 8
  %360 = load i64, i64* %length632, align 8
  %cmp650 = icmp slt i64 %359, %360
  br i1 %cmp650, label %for.body.652, label %for.end.1008

for.body.652:                                     ; preds = %for.cond.649
  store i8* null, i8** %add_stuff, align 8
  store i64 0, i64* %add_len, align 8
  store i64 -1, i64* %idx, align 8
  %361 = load i8, i8* %str_multibyte, align 1
  %tobool653 = trunc i8 %361 to i1
  br i1 %tobool653, label %if.then.654, label %if.else.727

if.then.654:                                      ; preds = %for.body.652
  br label %do.body.655

do.body.655:                                      ; preds = %if.then.654
  %362 = load i64, i64* %pos_byte, align 8
  %363 = load i64, i64* %newtext.addr, align 8
  %call656 = call i8* @SDATA(i64 %363)
  %arrayidx657 = getelementptr inbounds i8, i8* %call656, i64 %362
  store i8* %arrayidx657, i8** %fetch_ptr, align 8
  %364 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %364, i64 0
  %365 = load i8, i8* %arrayidx658, align 1
  %conv659 = zext i8 %365 to i32
  %and660 = and i32 %conv659, 128
  %tobool661 = icmp ne i32 %and660, 0
  br i1 %tobool661, label %cond.false.665, label %cond.true.662

cond.true.662:                                    ; preds = %do.body.655
  store i32 1, i32* %fetch_len, align 4
  %366 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx663 = getelementptr inbounds i8, i8* %366, i64 0
  %367 = load i8, i8* %arrayidx663, align 1
  %conv664 = zext i8 %367 to i32
  br label %cond.end.710

cond.false.665:                                   ; preds = %do.body.655
  %368 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx666 = getelementptr inbounds i8, i8* %368, i64 0
  %369 = load i8, i8* %arrayidx666, align 1
  %conv667 = zext i8 %369 to i32
  %and668 = and i32 %conv667, 32
  %tobool669 = icmp ne i32 %and668, 0
  br i1 %tobool669, label %cond.false.685, label %cond.true.670

cond.true.670:                                    ; preds = %cond.false.665
  store i32 2, i32* %fetch_len, align 4
  %370 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx671 = getelementptr inbounds i8, i8* %370, i64 0
  %371 = load i8, i8* %arrayidx671, align 1
  %conv672 = zext i8 %371 to i32
  %and673 = and i32 %conv672, 31
  %shl674 = shl i32 %and673, 6
  %372 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx675 = getelementptr inbounds i8, i8* %372, i64 1
  %373 = load i8, i8* %arrayidx675, align 1
  %conv676 = zext i8 %373 to i32
  %and677 = and i32 %conv676, 63
  %or678 = or i32 %shl674, %and677
  %374 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx679 = getelementptr inbounds i8, i8* %374, i64 0
  %375 = load i8, i8* %arrayidx679, align 1
  %conv680 = zext i8 %375 to i32
  %cmp681 = icmp slt i32 %conv680, 194
  %cond683 = select i1 %cmp681, i32 4194176, i32 0
  %add684 = add nsw i32 %or678, %cond683
  br label %cond.end.708

cond.false.685:                                   ; preds = %cond.false.665
  %376 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx686 = getelementptr inbounds i8, i8* %376, i64 0
  %377 = load i8, i8* %arrayidx686, align 1
  %conv687 = zext i8 %377 to i32
  %and688 = and i32 %conv687, 16
  %tobool689 = icmp ne i32 %and688, 0
  br i1 %tobool689, label %cond.false.704, label %cond.true.690

cond.true.690:                                    ; preds = %cond.false.685
  store i32 3, i32* %fetch_len, align 4
  %378 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx691 = getelementptr inbounds i8, i8* %378, i64 0
  %379 = load i8, i8* %arrayidx691, align 1
  %conv692 = zext i8 %379 to i32
  %and693 = and i32 %conv692, 15
  %shl694 = shl i32 %and693, 12
  %380 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx695 = getelementptr inbounds i8, i8* %380, i64 1
  %381 = load i8, i8* %arrayidx695, align 1
  %conv696 = zext i8 %381 to i32
  %and697 = and i32 %conv696, 63
  %shl698 = shl i32 %and697, 6
  %or699 = or i32 %shl694, %shl698
  %382 = load i8*, i8** %fetch_ptr, align 8
  %arrayidx700 = getelementptr inbounds i8, i8* %382, i64 2
  %383 = load i8, i8* %arrayidx700, align 1
  %conv701 = zext i8 %383 to i32
  %and702 = and i32 %conv701, 63
  %or703 = or i32 %or699, %and702
  br label %cond.end.706

cond.false.704:                                   ; preds = %cond.false.685
  %384 = load i8*, i8** %fetch_ptr, align 8
  %call705 = call i32 @string_char(i8* %384, i8** null, i32* %fetch_len)
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.false.704, %cond.true.690
  %cond707 = phi i32 [ %or703, %cond.true.690 ], [ %call705, %cond.false.704 ]
  br label %cond.end.708

cond.end.708:                                     ; preds = %cond.end.706, %cond.true.670
  %cond709 = phi i32 [ %add684, %cond.true.670 ], [ %cond707, %cond.end.706 ]
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.end.708, %cond.true.662
  %cond711 = phi i32 [ %conv664, %cond.true.662 ], [ %cond709, %cond.end.708 ]
  store i32 %cond711, i32* %c, align 4
  %385 = load i32, i32* %fetch_len, align 4
  %conv712 = sext i32 %385 to i64
  %386 = load i64, i64* %pos_byte, align 8
  %add713 = add nsw i64 %386, %conv712
  store i64 %add713, i64* %pos_byte, align 8
  %387 = load i64, i64* %pos, align 8
  %inc714 = add nsw i64 %387, 1
  store i64 %inc714, i64* %pos, align 8
  br label %do.end.715

do.end.715:                                       ; preds = %cond.end.710
  %388 = load i8, i8* %buf_multibyte, align 1
  %tobool716 = trunc i8 %388 to i1
  br i1 %tobool716, label %if.end.726, label %if.then.717

if.then.717:                                      ; preds = %do.end.715
  %389 = load i32, i32* %c, align 4
  %cmp718 = icmp sgt i32 %389, 4194175
  br i1 %cmp718, label %cond.true.720, label %cond.false.722

cond.true.720:                                    ; preds = %if.then.717
  %390 = load i32, i32* %c, align 4
  %sub721 = sub nsw i32 %390, 4194048
  br label %cond.end.724

cond.false.722:                                   ; preds = %if.then.717
  %391 = load i32, i32* %c, align 4
  %and723 = and i32 %391, 255
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.false.722, %cond.true.720
  %cond725 = phi i32 [ %sub721, %cond.true.720 ], [ %and723, %cond.false.722 ]
  store i32 %cond725, i32* %c, align 4
  br label %if.end.726

if.end.726:                                       ; preds = %cond.end.724, %do.end.715
  br label %if.end.748

if.else.727:                                      ; preds = %for.body.652
  %392 = load i64, i64* %newtext.addr, align 8
  %393 = load i64, i64* %pos_byte, align 8
  %inc728 = add nsw i64 %393, 1
  store i64 %inc728, i64* %pos_byte, align 8
  %call729 = call zeroext i8 @SREF(i64 %392, i64 %393)
  %conv730 = zext i8 %call729 to i32
  store i32 %conv730, i32* %c, align 4
  %394 = load i8, i8* %buf_multibyte, align 1
  %tobool731 = trunc i8 %394 to i1
  br i1 %tobool731, label %if.then.732, label %if.end.747

if.then.732:                                      ; preds = %if.else.727
  br i1 true, label %cond.true.733, label %cond.false.737

cond.true.733:                                    ; preds = %if.then.732
  %395 = load i32, i32* %c, align 4
  %add734 = add i32 %395, 0
  %cmp735 = icmp ult i32 %add734, 128
  br i1 %cmp735, label %cond.true.742, label %cond.false.743

cond.false.737:                                   ; preds = %if.then.732
  %396 = load i32, i32* %c, align 4
  %conv738 = sext i32 %396 to i64
  %add739 = add i64 %conv738, 0
  %cmp740 = icmp ult i64 %add739, 128
  br i1 %cmp740, label %cond.true.742, label %cond.false.743

cond.true.742:                                    ; preds = %cond.false.737, %cond.true.733
  %397 = load i32, i32* %c, align 4
  br label %cond.end.745

cond.false.743:                                   ; preds = %cond.false.737, %cond.true.733
  %398 = load i32, i32* %c, align 4
  %add744 = add nsw i32 %398, 4194048
  br label %cond.end.745

cond.end.745:                                     ; preds = %cond.false.743, %cond.true.742
  %cond746 = phi i32 [ %397, %cond.true.742 ], [ %add744, %cond.false.743 ]
  store i32 %cond746, i32* %c, align 4
  br label %if.end.747

if.end.747:                                       ; preds = %cond.end.745, %if.else.727
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %if.end.726
  %399 = load i32, i32* %c, align 4
  %cmp749 = icmp eq i32 %399, 92
  br i1 %cmp749, label %if.then.751, label %if.else.891

if.then.751:                                      ; preds = %if.end.748
  store i8 1, i8* %really_changed, align 1
  %400 = load i8, i8* %str_multibyte, align 1
  %tobool752 = trunc i8 %400 to i1
  br i1 %tobool752, label %if.then.753, label %if.else.838

if.then.753:                                      ; preds = %if.then.751
  br label %do.body.754

do.body.754:                                      ; preds = %if.then.753
  %401 = load i64, i64* %pos_byte, align 8
  %402 = load i64, i64* %newtext.addr, align 8
  %call756 = call i8* @SDATA(i64 %402)
  %arrayidx757 = getelementptr inbounds i8, i8* %call756, i64 %401
  store i8* %arrayidx757, i8** %fetch_ptr755, align 8
  %403 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx759 = getelementptr inbounds i8, i8* %403, i64 0
  %404 = load i8, i8* %arrayidx759, align 1
  %conv760 = zext i8 %404 to i32
  %and761 = and i32 %conv760, 128
  %tobool762 = icmp ne i32 %and761, 0
  br i1 %tobool762, label %cond.false.766, label %cond.true.763

cond.true.763:                                    ; preds = %do.body.754
  store i32 1, i32* %fetch_len758, align 4
  %405 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx764 = getelementptr inbounds i8, i8* %405, i64 0
  %406 = load i8, i8* %arrayidx764, align 1
  %conv765 = zext i8 %406 to i32
  br label %cond.end.811

cond.false.766:                                   ; preds = %do.body.754
  %407 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx767 = getelementptr inbounds i8, i8* %407, i64 0
  %408 = load i8, i8* %arrayidx767, align 1
  %conv768 = zext i8 %408 to i32
  %and769 = and i32 %conv768, 32
  %tobool770 = icmp ne i32 %and769, 0
  br i1 %tobool770, label %cond.false.786, label %cond.true.771

cond.true.771:                                    ; preds = %cond.false.766
  store i32 2, i32* %fetch_len758, align 4
  %409 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx772 = getelementptr inbounds i8, i8* %409, i64 0
  %410 = load i8, i8* %arrayidx772, align 1
  %conv773 = zext i8 %410 to i32
  %and774 = and i32 %conv773, 31
  %shl775 = shl i32 %and774, 6
  %411 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx776 = getelementptr inbounds i8, i8* %411, i64 1
  %412 = load i8, i8* %arrayidx776, align 1
  %conv777 = zext i8 %412 to i32
  %and778 = and i32 %conv777, 63
  %or779 = or i32 %shl775, %and778
  %413 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx780 = getelementptr inbounds i8, i8* %413, i64 0
  %414 = load i8, i8* %arrayidx780, align 1
  %conv781 = zext i8 %414 to i32
  %cmp782 = icmp slt i32 %conv781, 194
  %cond784 = select i1 %cmp782, i32 4194176, i32 0
  %add785 = add nsw i32 %or779, %cond784
  br label %cond.end.809

cond.false.786:                                   ; preds = %cond.false.766
  %415 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx787 = getelementptr inbounds i8, i8* %415, i64 0
  %416 = load i8, i8* %arrayidx787, align 1
  %conv788 = zext i8 %416 to i32
  %and789 = and i32 %conv788, 16
  %tobool790 = icmp ne i32 %and789, 0
  br i1 %tobool790, label %cond.false.805, label %cond.true.791

cond.true.791:                                    ; preds = %cond.false.786
  store i32 3, i32* %fetch_len758, align 4
  %417 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx792 = getelementptr inbounds i8, i8* %417, i64 0
  %418 = load i8, i8* %arrayidx792, align 1
  %conv793 = zext i8 %418 to i32
  %and794 = and i32 %conv793, 15
  %shl795 = shl i32 %and794, 12
  %419 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx796 = getelementptr inbounds i8, i8* %419, i64 1
  %420 = load i8, i8* %arrayidx796, align 1
  %conv797 = zext i8 %420 to i32
  %and798 = and i32 %conv797, 63
  %shl799 = shl i32 %and798, 6
  %or800 = or i32 %shl795, %shl799
  %421 = load i8*, i8** %fetch_ptr755, align 8
  %arrayidx801 = getelementptr inbounds i8, i8* %421, i64 2
  %422 = load i8, i8* %arrayidx801, align 1
  %conv802 = zext i8 %422 to i32
  %and803 = and i32 %conv802, 63
  %or804 = or i32 %or800, %and803
  br label %cond.end.807

cond.false.805:                                   ; preds = %cond.false.786
  %423 = load i8*, i8** %fetch_ptr755, align 8
  %call806 = call i32 @string_char(i8* %423, i8** null, i32* %fetch_len758)
  br label %cond.end.807

cond.end.807:                                     ; preds = %cond.false.805, %cond.true.791
  %cond808 = phi i32 [ %or804, %cond.true.791 ], [ %call806, %cond.false.805 ]
  br label %cond.end.809

cond.end.809:                                     ; preds = %cond.end.807, %cond.true.771
  %cond810 = phi i32 [ %add785, %cond.true.771 ], [ %cond808, %cond.end.807 ]
  br label %cond.end.811

cond.end.811:                                     ; preds = %cond.end.809, %cond.true.763
  %cond812 = phi i32 [ %conv765, %cond.true.763 ], [ %cond810, %cond.end.809 ]
  store i32 %cond812, i32* %c, align 4
  %424 = load i32, i32* %fetch_len758, align 4
  %conv813 = sext i32 %424 to i64
  %425 = load i64, i64* %pos_byte, align 8
  %add814 = add nsw i64 %425, %conv813
  store i64 %add814, i64* %pos_byte, align 8
  %426 = load i64, i64* %pos, align 8
  %inc815 = add nsw i64 %426, 1
  store i64 %inc815, i64* %pos, align 8
  br label %do.end.816

do.end.816:                                       ; preds = %cond.end.811
  %427 = load i8, i8* %buf_multibyte, align 1
  %tobool817 = trunc i8 %427 to i1
  br i1 %tobool817, label %if.end.837, label %land.lhs.true.818

land.lhs.true.818:                                ; preds = %do.end.816
  br i1 true, label %cond.true.819, label %cond.false.823

cond.true.819:                                    ; preds = %land.lhs.true.818
  %428 = load i32, i32* %c, align 4
  %add820 = add i32 %428, 0
  %cmp821 = icmp ult i32 %add820, 128
  br i1 %cmp821, label %if.end.837, label %if.then.828

cond.false.823:                                   ; preds = %land.lhs.true.818
  %429 = load i32, i32* %c, align 4
  %conv824 = sext i32 %429 to i64
  %add825 = add i64 %conv824, 0
  %cmp826 = icmp ult i64 %add825, 128
  br i1 %cmp826, label %if.end.837, label %if.then.828

if.then.828:                                      ; preds = %cond.false.823, %cond.true.819
  %430 = load i32, i32* %c, align 4
  %cmp829 = icmp sgt i32 %430, 4194175
  br i1 %cmp829, label %cond.true.831, label %cond.false.833

cond.true.831:                                    ; preds = %if.then.828
  %431 = load i32, i32* %c, align 4
  %sub832 = sub nsw i32 %431, 4194048
  br label %cond.end.835

cond.false.833:                                   ; preds = %if.then.828
  %432 = load i32, i32* %c, align 4
  %and834 = and i32 %432, 255
  br label %cond.end.835

cond.end.835:                                     ; preds = %cond.false.833, %cond.true.831
  %cond836 = phi i32 [ %sub832, %cond.true.831 ], [ %and834, %cond.false.833 ]
  store i32 %cond836, i32* %c, align 4
  br label %if.end.837

if.end.837:                                       ; preds = %cond.end.835, %cond.false.823, %cond.true.819, %do.end.816
  br label %if.end.859

if.else.838:                                      ; preds = %if.then.751
  %433 = load i64, i64* %newtext.addr, align 8
  %434 = load i64, i64* %pos_byte, align 8
  %inc839 = add nsw i64 %434, 1
  store i64 %inc839, i64* %pos_byte, align 8
  %call840 = call zeroext i8 @SREF(i64 %433, i64 %434)
  %conv841 = zext i8 %call840 to i32
  store i32 %conv841, i32* %c, align 4
  %435 = load i8, i8* %buf_multibyte, align 1
  %tobool842 = trunc i8 %435 to i1
  br i1 %tobool842, label %if.then.843, label %if.end.858

if.then.843:                                      ; preds = %if.else.838
  br i1 true, label %cond.true.844, label %cond.false.848

cond.true.844:                                    ; preds = %if.then.843
  %436 = load i32, i32* %c, align 4
  %add845 = add i32 %436, 0
  %cmp846 = icmp ult i32 %add845, 128
  br i1 %cmp846, label %cond.true.853, label %cond.false.854

cond.false.848:                                   ; preds = %if.then.843
  %437 = load i32, i32* %c, align 4
  %conv849 = sext i32 %437 to i64
  %add850 = add i64 %conv849, 0
  %cmp851 = icmp ult i64 %add850, 128
  br i1 %cmp851, label %cond.true.853, label %cond.false.854

cond.true.853:                                    ; preds = %cond.false.848, %cond.true.844
  %438 = load i32, i32* %c, align 4
  br label %cond.end.856

cond.false.854:                                   ; preds = %cond.false.848, %cond.true.844
  %439 = load i32, i32* %c, align 4
  %add855 = add nsw i32 %439, 4194048
  br label %cond.end.856

cond.end.856:                                     ; preds = %cond.false.854, %cond.true.853
  %cond857 = phi i32 [ %438, %cond.true.853 ], [ %add855, %cond.false.854 ]
  store i32 %cond857, i32* %c, align 4
  br label %if.end.858

if.end.858:                                       ; preds = %cond.end.856, %if.else.838
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %if.end.837
  %440 = load i32, i32* %c, align 4
  %cmp860 = icmp eq i32 %440, 38
  br i1 %cmp860, label %if.then.862, label %if.else.863

if.then.862:                                      ; preds = %if.end.859
  %441 = load i64, i64* %sub, align 8
  store i64 %441, i64* %idx, align 8
  br label %if.end.890

if.else.863:                                      ; preds = %if.end.859
  %442 = load i32, i32* %c, align 4
  %cmp864 = icmp sge i32 %442, 49
  br i1 %cmp864, label %land.lhs.true.866, label %if.else.883

land.lhs.true.866:                                ; preds = %if.else.863
  %443 = load i32, i32* %c, align 4
  %cmp867 = icmp sle i32 %443, 57
  br i1 %cmp867, label %land.lhs.true.869, label %if.else.883

land.lhs.true.869:                                ; preds = %land.lhs.true.866
  %444 = load i32, i32* %c, align 4
  %sub870 = sub nsw i32 %444, 48
  %445 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp871 = icmp ult i32 %sub870, %445
  br i1 %cmp871, label %if.then.873, label %if.else.883

if.then.873:                                      ; preds = %land.lhs.true.869
  %446 = load i32, i32* %c, align 4
  %sub874 = sub nsw i32 %446, 48
  %idxprom875 = sext i32 %sub874 to i64
  %447 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx876 = getelementptr inbounds i64, i64* %447, i64 %idxprom875
  %448 = load i64, i64* %arrayidx876, align 8
  %cmp877 = icmp sge i64 %448, 1
  br i1 %cmp877, label %if.then.879, label %if.end.882

if.then.879:                                      ; preds = %if.then.873
  %449 = load i32, i32* %c, align 4
  %sub880 = sub nsw i32 %449, 48
  %conv881 = sext i32 %sub880 to i64
  store i64 %conv881, i64* %idx, align 8
  br label %if.end.882

if.end.882:                                       ; preds = %if.then.879, %if.then.873
  br label %if.end.889

if.else.883:                                      ; preds = %land.lhs.true.869, %land.lhs.true.866, %if.else.863
  %450 = load i32, i32* %c, align 4
  %cmp884 = icmp eq i32 %450, 92
  br i1 %cmp884, label %if.then.886, label %if.else.887

if.then.886:                                      ; preds = %if.else.883
  store i64 1, i64* %add_len, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %add_stuff, align 8
  br label %if.end.888

if.else.887:                                      ; preds = %if.else.883
  %451 = load i8*, i8** %substed, align 8
  call void @xfree(i8* %451)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.end.888:                                       ; preds = %if.then.886
  br label %if.end.889

if.end.889:                                       ; preds = %if.end.888, %if.end.882
  br label %if.end.890

if.end.890:                                       ; preds = %if.end.889, %if.then.862
  br label %if.end.957

if.else.891:                                      ; preds = %if.end.748
  br i1 true, label %cond.true.892, label %cond.false.896

cond.true.892:                                    ; preds = %if.else.891
  %452 = load i32, i32* %c, align 4
  %add893 = add i32 %452, 0
  %cmp894 = icmp ule i32 %add893, 127
  br i1 %cmp894, label %cond.true.901, label %cond.false.904

cond.false.896:                                   ; preds = %if.else.891
  %453 = load i32, i32* %c, align 4
  %conv897 = sext i32 %453 to i64
  %add898 = add i64 %conv897, 0
  %cmp899 = icmp ule i64 %add898, 127
  br i1 %cmp899, label %cond.true.901, label %cond.false.904

cond.true.901:                                    ; preds = %cond.false.896, %cond.true.892
  %454 = load i32, i32* %c, align 4
  %conv902 = trunc i32 %454 to i8
  %arrayidx903 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv902, i8* %arrayidx903, align 1
  br label %cond.end.953

cond.false.904:                                   ; preds = %cond.false.896, %cond.true.892
  br i1 true, label %cond.true.905, label %cond.false.909

cond.true.905:                                    ; preds = %cond.false.904
  %455 = load i32, i32* %c, align 4
  %add906 = add i32 %455, 0
  %cmp907 = icmp ule i32 %add906, 2047
  br i1 %cmp907, label %cond.true.914, label %cond.false.923

cond.false.909:                                   ; preds = %cond.false.904
  %456 = load i32, i32* %c, align 4
  %conv910 = sext i32 %456 to i64
  %add911 = add i64 %conv910, 0
  %cmp912 = icmp ule i64 %add911, 2047
  br i1 %cmp912, label %cond.true.914, label %cond.false.923

cond.true.914:                                    ; preds = %cond.false.909, %cond.true.905
  %457 = load i32, i32* %c, align 4
  %shr915 = ashr i32 %457, 6
  %or916 = or i32 192, %shr915
  %conv917 = trunc i32 %or916 to i8
  %arrayidx918 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv917, i8* %arrayidx918, align 1
  %458 = load i32, i32* %c, align 4
  %and919 = and i32 %458, 63
  %or920 = or i32 128, %and919
  %conv921 = trunc i32 %or920 to i8
  %arrayidx922 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv921, i8* %arrayidx922, align 1
  br label %cond.end.951

cond.false.923:                                   ; preds = %cond.false.909, %cond.true.905
  br i1 true, label %cond.true.924, label %cond.false.928

cond.true.924:                                    ; preds = %cond.false.923
  %459 = load i32, i32* %c, align 4
  %add925 = add i32 %459, 0
  %cmp926 = icmp ule i32 %add925, 65535
  br i1 %cmp926, label %cond.true.933, label %cond.false.947

cond.false.928:                                   ; preds = %cond.false.923
  %460 = load i32, i32* %c, align 4
  %conv929 = sext i32 %460 to i64
  %add930 = add i64 %conv929, 0
  %cmp931 = icmp ule i64 %add930, 65535
  br i1 %cmp931, label %cond.true.933, label %cond.false.947

cond.true.933:                                    ; preds = %cond.false.928, %cond.true.924
  %461 = load i32, i32* %c, align 4
  %shr934 = ashr i32 %461, 12
  %or935 = or i32 224, %shr934
  %conv936 = trunc i32 %or935 to i8
  %arrayidx937 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv936, i8* %arrayidx937, align 1
  %462 = load i32, i32* %c, align 4
  %shr938 = ashr i32 %462, 6
  %and939 = and i32 %shr938, 63
  %or940 = or i32 128, %and939
  %conv941 = trunc i32 %or940 to i8
  %arrayidx942 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv941, i8* %arrayidx942, align 1
  %463 = load i32, i32* %c, align 4
  %and943 = and i32 %463, 63
  %or944 = or i32 128, %and943
  %conv945 = trunc i32 %or944 to i8
  %arrayidx946 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv945, i8* %arrayidx946, align 1
  br label %cond.end.949

cond.false.947:                                   ; preds = %cond.false.928, %cond.true.924
  %464 = load i32, i32* %c, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call948 = call i32 @char_string(i32 %464, i8* %arraydecay)
  br label %cond.end.949

cond.end.949:                                     ; preds = %cond.false.947, %cond.true.933
  %cond950 = phi i32 [ 3, %cond.true.933 ], [ %call948, %cond.false.947 ]
  br label %cond.end.951

cond.end.951:                                     ; preds = %cond.end.949, %cond.true.914
  %cond952 = phi i32 [ 2, %cond.true.914 ], [ %cond950, %cond.end.949 ]
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.end.951, %cond.true.901
  %cond954 = phi i32 [ 1, %cond.true.901 ], [ %cond952, %cond.end.951 ]
  %conv955 = sext i32 %cond954 to i64
  store i64 %conv955, i64* %add_len, align 8
  %arraydecay956 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay956, i8** %add_stuff, align 8
  br label %if.end.957

if.end.957:                                       ; preds = %cond.end.953, %if.end.890
  %465 = load i64, i64* %idx, align 8
  %cmp958 = icmp sge i64 %465, 0
  br i1 %cmp958, label %if.then.960, label %if.end.994

if.then.960:                                      ; preds = %if.end.957
  %466 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %467 = load i64, i64* %idx, align 8
  %468 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx961 = getelementptr inbounds i64, i64* %468, i64 %467
  %469 = load i64, i64* %arrayidx961, align 8
  %call962 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %466, i64 %469)
  store i64 %call962, i64* %begbyte, align 8
  %470 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %471 = load i64, i64* %idx, align 8
  %472 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx963 = getelementptr inbounds i64, i64* %472, i64 %471
  %473 = load i64, i64* %arrayidx963, align 8
  %call964 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %470, i64 %473)
  %474 = load i64, i64* %begbyte, align 8
  %sub965 = sub nsw i64 %call964, %474
  store i64 %sub965, i64* %add_len, align 8
  %475 = load i64, i64* %idx, align 8
  %476 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx966 = getelementptr inbounds i64, i64* %476, i64 %475
  %477 = load i64, i64* %arrayidx966, align 8
  %478 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text967 = getelementptr inbounds %struct.buffer, %struct.buffer* %478, i32 0, i32 73
  %479 = load %struct.buffer_text*, %struct.buffer_text** %text967, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %479, i32 0, i32 1
  %480 = load i64, i64* %gpt, align 8
  %cmp968 = icmp slt i64 %477, %480
  br i1 %cmp968, label %land.lhs.true.970, label %if.end.978

land.lhs.true.970:                                ; preds = %if.then.960
  %481 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text971 = getelementptr inbounds %struct.buffer, %struct.buffer* %481, i32 0, i32 73
  %482 = load %struct.buffer_text*, %struct.buffer_text** %text971, align 8
  %gpt972 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %482, i32 0, i32 1
  %483 = load i64, i64* %gpt972, align 8
  %484 = load i64, i64* %idx, align 8
  %485 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx973 = getelementptr inbounds i64, i64* %485, i64 %484
  %486 = load i64, i64* %arrayidx973, align 8
  %cmp974 = icmp slt i64 %483, %486
  br i1 %cmp974, label %if.then.976, label %if.end.978

if.then.976:                                      ; preds = %land.lhs.true.970
  %487 = load i64, i64* %idx, align 8
  %488 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx977 = getelementptr inbounds i64, i64* %488, i64 %487
  %489 = load i64, i64* %arrayidx977, align 8
  %490 = load i64, i64* %begbyte, align 8
  call void @move_gap_both(i64 %489, i64 %490)
  br label %if.end.978

if.end.978:                                       ; preds = %if.then.976, %land.lhs.true.970, %if.then.960
  %491 = load i64, i64* %begbyte, align 8
  %492 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text979 = getelementptr inbounds %struct.buffer, %struct.buffer* %492, i32 0, i32 73
  %493 = load %struct.buffer_text*, %struct.buffer_text** %text979, align 8
  %gpt_byte980 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %493, i32 0, i32 3
  %494 = load i64, i64* %gpt_byte980, align 8
  %cmp981 = icmp sge i64 %491, %494
  br i1 %cmp981, label %cond.true.983, label %cond.false.986

cond.true.983:                                    ; preds = %if.end.978
  %495 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text984 = getelementptr inbounds %struct.buffer, %struct.buffer* %495, i32 0, i32 73
  %496 = load %struct.buffer_text*, %struct.buffer_text** %text984, align 8
  %gap_size985 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %496, i32 0, i32 5
  %497 = load i64, i64* %gap_size985, align 8
  br label %cond.end.987

cond.false.986:                                   ; preds = %if.end.978
  br label %cond.end.987

cond.end.987:                                     ; preds = %cond.false.986, %cond.true.983
  %cond988 = phi i64 [ %497, %cond.true.983 ], [ 0, %cond.false.986 ]
  %498 = load i64, i64* %begbyte, align 8
  %add989 = add nsw i64 %cond988, %498
  %499 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text990 = getelementptr inbounds %struct.buffer, %struct.buffer* %499, i32 0, i32 73
  %500 = load %struct.buffer_text*, %struct.buffer_text** %text990, align 8
  %beg991 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %500, i32 0, i32 0
  %501 = load i8*, i8** %beg991, align 8
  %add.ptr992 = getelementptr inbounds i8, i8* %501, i64 %add989
  %add.ptr993 = getelementptr inbounds i8, i8* %add.ptr992, i64 -1
  store i8* %add.ptr993, i8** %add_stuff, align 8
  br label %if.end.994

if.end.994:                                       ; preds = %cond.end.987, %if.end.957
  %502 = load i64, i64* %substed_alloc_size, align 8
  %503 = load i64, i64* %substed_len, align 8
  %sub995 = sub nsw i64 %502, %503
  %504 = load i64, i64* %add_len, align 8
  %cmp996 = icmp slt i64 %sub995, %504
  br i1 %cmp996, label %if.then.998, label %if.end.1002

if.then.998:                                      ; preds = %if.end.994
  %505 = load i8*, i8** %substed, align 8
  %506 = load i64, i64* %add_len, align 8
  %507 = load i64, i64* %substed_alloc_size, align 8
  %508 = load i64, i64* %substed_len, align 8
  %sub999 = sub nsw i64 %507, %508
  %sub1000 = sub nsw i64 %506, %sub999
  %call1001 = call i8* @xpalloc(i8* %505, i64* %substed_alloc_size, i64 %sub1000, i64 2305843009213693951, i64 1)
  store i8* %call1001, i8** %substed, align 8
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.then.998, %if.end.994
  %509 = load i8*, i8** %add_stuff, align 8
  %tobool1003 = icmp ne i8* %509, null
  br i1 %tobool1003, label %if.then.1004, label %if.end.1007

if.then.1004:                                     ; preds = %if.end.1002
  %510 = load i8*, i8** %substed, align 8
  %511 = load i64, i64* %substed_len, align 8
  %add.ptr1005 = getelementptr inbounds i8, i8* %510, i64 %511
  %512 = load i8*, i8** %add_stuff, align 8
  %513 = load i64, i64* %add_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr1005, i8* %512, i64 %513, i32 1, i1 false)
  %514 = load i64, i64* %add_len, align 8
  %515 = load i64, i64* %substed_len, align 8
  %add1006 = add nsw i64 %515, %514
  store i64 %add1006, i64* %substed_len, align 8
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.then.1004, %if.end.1002
  br label %for.cond.649

for.end.1008:                                     ; preds = %for.cond.649
  %516 = load i8, i8* %really_changed, align 1
  %tobool1009 = trunc i8 %516 to i1
  br i1 %tobool1009, label %if.then.1010, label %if.end.1013

if.then.1010:                                     ; preds = %for.end.1008
  %517 = load i8*, i8** %substed, align 8
  %518 = load i64, i64* %substed_len, align 8
  %519 = load i8, i8* %buf_multibyte, align 1
  %tobool1011 = trunc i8 %519 to i1
  %call1012 = call i64 @make_specified_string(i8* %517, i64 -1, i64 %518, i1 zeroext %tobool1011)
  store i64 %call1012, i64* %newtext.addr, align 8
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.then.1010, %for.end.1008
  %520 = load i8*, i8** %substed, align 8
  call void @xfree(i8* %520)
  br label %if.end.1014

if.end.1014:                                      ; preds = %if.end.1013, %if.end.627
  %521 = load i64, i64* %sub, align 8
  %522 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1015 = getelementptr inbounds i64, i64* %522, i64 %521
  %523 = load i64, i64* %arrayidx1015, align 8
  store i64 %523, i64* %sub_start, align 8
  %524 = load i64, i64* %sub, align 8
  %525 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx1016 = getelementptr inbounds i64, i64* %525, i64 %524
  %526 = load i64, i64* %arrayidx1016, align 8
  store i64 %526, i64* %sub_end, align 8
  %527 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  store i32 %527, i32* %num_regs, align 4
  %528 = load i64, i64* %sub, align 8
  %529 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1017 = getelementptr inbounds i64, i64* %529, i64 %528
  %530 = load i64, i64* %arrayidx1017, align 8
  %531 = load i64, i64* %newtext.addr, align 8
  %call1018 = call i64 @SCHARS(i64 %531)
  %add1019 = add nsw i64 %530, %call1018
  store i64 %add1019, i64* %newpoint, align 8
  %532 = load i64, i64* %sub, align 8
  %533 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1020 = getelementptr inbounds i64, i64* %533, i64 %532
  %534 = load i64, i64* %arrayidx1020, align 8
  %535 = load i64, i64* %sub, align 8
  %536 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx1021 = getelementptr inbounds i64, i64* %536, i64 %535
  %537 = load i64, i64* %arrayidx1021, align 8
  %538 = load i64, i64* %newtext.addr, align 8
  call void @replace_range(i64 %534, i64 %537, i64 %538, i1 zeroext true, i1 zeroext false, i1 zeroext true, i1 zeroext true)
  %539 = load i64, i64* %newpoint, align 8
  %540 = load i64, i64* %sub_end, align 8
  %sub1022 = sub nsw i64 %539, %540
  store i64 %sub1022, i64* %change, align 8
  %541 = load i64, i64* %sub_start, align 8
  %542 = load i64, i64* %sub_end, align 8
  %cmp1023 = icmp sge i64 %541, %542
  br i1 %cmp1023, label %if.then.1025, label %if.end.1027

if.then.1025:                                     ; preds = %if.end.1014
  %543 = load i64, i64* %change, align 8
  %544 = load i64, i64* %sub_start, align 8
  %add1026 = add nsw i64 %544, %543
  store i64 %add1026, i64* %sub_start, align 8
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.then.1025, %if.end.1014
  %545 = load i64, i64* %change, align 8
  %546 = load i64, i64* %sub_end, align 8
  %add1028 = add nsw i64 %546, %545
  store i64 %add1028, i64* %sub_end, align 8
  %547 = load i32, i32* %case_action, align 4
  %cmp1029 = icmp eq i32 %547, 1
  br i1 %cmp1029, label %if.then.1031, label %if.else.1038

if.then.1031:                                     ; preds = %if.end.1027
  %548 = load i64, i64* %sub, align 8
  %549 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1032 = getelementptr inbounds i64, i64* %549, i64 %548
  %550 = load i64, i64* %arrayidx1032, align 8
  %shl1033 = shl i64 %550, 2
  %add1034 = add i64 %shl1033, 2
  %551 = load i64, i64* %newpoint, align 8
  %shl1035 = shl i64 %551, 2
  %add1036 = add i64 %shl1035, 2
  %call1037 = call i64 @Fupcase_region(i64 %add1034, i64 %add1036)
  br label %if.end.1049

if.else.1038:                                     ; preds = %if.end.1027
  %552 = load i32, i32* %case_action, align 4
  %cmp1039 = icmp eq i32 %552, 2
  br i1 %cmp1039, label %if.then.1041, label %if.end.1048

if.then.1041:                                     ; preds = %if.else.1038
  %553 = load i64, i64* %sub, align 8
  %554 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1042 = getelementptr inbounds i64, i64* %554, i64 %553
  %555 = load i64, i64* %arrayidx1042, align 8
  %shl1043 = shl i64 %555, 2
  %add1044 = add i64 %shl1043, 2
  %556 = load i64, i64* %newpoint, align 8
  %shl1045 = shl i64 %556, 2
  %add1046 = add i64 %shl1045, 2
  %call1047 = call i64 @Fupcase_initials_region(i64 %add1044, i64 %add1046)
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.then.1041, %if.else.1038
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.end.1048, %if.then.1031
  %557 = load i64, i64* %sub, align 8
  %558 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx1050 = getelementptr inbounds i64, i64* %558, i64 %557
  %559 = load i64, i64* %arrayidx1050, align 8
  %560 = load i64, i64* %sub_start, align 8
  %cmp1051 = icmp ne i64 %559, %560
  br i1 %cmp1051, label %if.then.1060, label %lor.lhs.false.1053

lor.lhs.false.1053:                               ; preds = %if.end.1049
  %561 = load i64, i64* %sub, align 8
  %562 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx1054 = getelementptr inbounds i64, i64* %562, i64 %561
  %563 = load i64, i64* %arrayidx1054, align 8
  %564 = load i64, i64* %sub_end, align 8
  %cmp1055 = icmp ne i64 %563, %564
  br i1 %cmp1055, label %if.then.1060, label %lor.lhs.false.1057

lor.lhs.false.1057:                               ; preds = %lor.lhs.false.1053
  %565 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %566 = load i32, i32* %num_regs, align 4
  %cmp1058 = icmp ne i32 %565, %566
  br i1 %cmp1058, label %if.then.1060, label %if.end.1061

if.then.1060:                                     ; preds = %lor.lhs.false.1057, %lor.lhs.false.1053, %if.end.1049
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0)) #6
  unreachable

if.end.1061:                                      ; preds = %lor.lhs.false.1057
  %567 = load i64, i64* %opoint, align 8
  %cmp1062 = icmp sle i64 %567, 0
  br i1 %cmp1062, label %if.then.1064, label %if.else.1067

if.then.1064:                                     ; preds = %if.end.1061
  %568 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %569 = load i64, i64* %opoint, align 8
  %570 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv1065 = getelementptr inbounds %struct.buffer, %struct.buffer* %570, i32 0, i32 79
  %571 = load i64, i64* %zv1065, align 8
  %add1066 = add nsw i64 %569, %571
  call void @temp_set_point(%struct.buffer* %568, i64 %add1066)
  br label %if.end.1068

if.else.1067:                                     ; preds = %if.end.1061
  %572 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %573 = load i64, i64* %opoint, align 8
  call void @temp_set_point(%struct.buffer* %572, i64 %573)
  br label %if.end.1068

if.end.1068:                                      ; preds = %if.else.1067, %if.then.1064
  %574 = load i64, i64* %newpoint, align 8
  call void @move_if_not_intangible(i64 %574)
  %call1069 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1069, i64* %retval
  br label %return

return:                                           ; preds = %if.end.1068, %if.end.601
  %575 = load i64, i64* %retval
  ret i64 %575
}

declare void @CHECK_STRING(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #3

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #3

; Function Attrs: noreturn
declare void @args_out_of_range(i64, i64) #3

declare i32 @FETCH_MULTIBYTE_CHAR(i64) #1

declare i32 @string_char(i8*, i8**, i32*) #1

declare zeroext i8 @SREF(i64, i64) #1

declare zeroext i1 @lowercasep(i32) #1

declare i32 @SYNTAX(i32) #1

declare zeroext i1 @uppercasep(i32) #1

declare i64 @Fsubstring(i64, i64, i64) #1

declare i64 @substring_both(i64, i64, i64, i64, i64) #1

declare i64 @concat3(i64, i64, i64) #1

declare i64 @concat2(i64, i64) #1

declare i64 @Fupcase(i64) #1

declare i64 @Fupcase_initials(i64) #1

declare noalias i8* @xmalloc(i64) #1

declare void @xfree(i8*) #1

declare i32 @char_string(i32, i8*) #1

declare void @move_gap_both(i64, i64) #1

declare i8* @xpalloc(i8*, i64*, i64, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @make_specified_string(i8*, i64, i64, i1 zeroext) #1

declare void @replace_range(i64, i64, i64, i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare i64 @Fupcase_region(i64, i64) #1

declare i64 @Fupcase_initials_region(i64, i64) #1

declare void @temp_set_point(%struct.buffer*, i64) #1

declare void @move_if_not_intangible(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fmatch_beginning(i64 %subexp) #0 {
entry:
  %subexp.addr = alloca i64, align 8
  store i64 %subexp, i64* %subexp.addr, align 8
  %0 = load i64, i64* %subexp.addr, align 8
  %call = call i64 @match_limit(i64 %0, i1 zeroext true)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @match_limit(i64 %num, i1 zeroext %beginningp) #0 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %beginningp.addr = alloca i8, align 1
  %n = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8
  %frombool = zext i1 %beginningp to i8
  store i8 %frombool, i8* %beginningp.addr, align 1
  %0 = load i64, i64* %num.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %num.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %num.addr, align 8
  %shr = ashr i64 %4, 2
  store i64 %shr, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load i64, i64* %num.addr, align 8
  call void @args_out_of_range(i64 %6, i64 2) #6
  unreachable

if.end:                                           ; preds = %cond.end
  %7 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp5 = icmp ule i32 %7, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0)) #6
  unreachable

if.end.8:                                         ; preds = %if.end
  %8 = load i64, i64* %n, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv9 = zext i32 %9 to i64
  %cmp10 = icmp sge i64 %8, %conv9
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %10 = load i64, i64* %n, align 8
  %11 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx, align 8
  %cmp12 = icmp slt i64 %12, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %13 = load i8, i8* %beginningp.addr, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.end.16
  %14 = load i64, i64* %n, align 8
  %15 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx19, align 8
  br label %cond.end.22

cond.false.20:                                    ; preds = %if.end.16
  %17 = load i64, i64* %n, align 8
  %18 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond = phi i64 [ %16, %cond.true.18 ], [ %19, %cond.false.20 ]
  %shl = shl i64 %cond, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.22, %if.then.14
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @Fmatch_end(i64 %subexp) #0 {
entry:
  %subexp.addr = alloca i64, align 8
  store i64 %subexp, i64* %subexp.addr, align 8
  %0 = load i64, i64* %subexp.addr, align 8
  %call = call i64 @match_limit(i64 %0, i1 zeroext false)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fmatch_data(i64 %integers, i64 %reuse, i64 %reseat) #0 {
entry:
  %retval = alloca i64, align 8
  %integers.addr = alloca i64, align 8
  %reuse.addr = alloca i64, align 8
  %reseat.addr = alloca i64, align 8
  %tail = alloca i64, align 8
  %prev = alloca i64, align 8
  %data = alloca i64*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %start = alloca i64, align 8
  store i64 %integers, i64* %integers.addr, align 8
  store i64 %reuse, i64* %reuse.addr, align 8
  store i64 %reseat, i64* %reseat.addr, align 8
  %0 = load i64, i64* %reseat.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end.18, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %reuse.addr, align 8
  store i64 %1, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i64, i64* %tail, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 0
  %6 = load i64, i64* %car, align 8
  %and3 = and i64 %6, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %tail, align 8
  %sub7 = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub7 to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %car8 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 0
  %10 = load i64, i64* %car8, align 8
  %call9 = call i32 @XMISCTYPE(i64 %10)
  %cmp10 = icmp eq i32 %call9, 24236
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load i64, i64* %tail, align 8
  %sub13 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub13 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %car14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 0
  %14 = load i64, i64* %car14, align 8
  %call15 = call %struct.Lisp_Marker* @XMARKER(i64 %14)
  call void @unchain_marker(%struct.Lisp_Marker* %call15)
  %15 = load i64, i64* %tail, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %15, i64 %call16)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %tail, align 8
  %sub17 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub17 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %19 = load i64, i64* %cdr, align 8
  store i64 %19, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %entry
  %20 = load i64, i64* @last_thing_searched, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp20 = icmp eq i64 %20, %call19
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call25, i64* %prev, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call26 = call i64 @SPECPDL_INDEX()
  store i64 %call26, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %21 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %mul = mul i32 2, %21
  %add = add i32 %mul, 1
  %conv27 = zext i32 %add to i64
  %22 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %22, 8
  %div28 = udiv i64 %div, 1
  %cmp29 = icmp ule i64 %conv27, %div28
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body
  %23 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %mul32 = mul i32 2, %23
  %add33 = add i32 %mul32, 1
  %conv34 = zext i32 %add33 to i64
  %mul35 = mul i64 8, %conv34
  %24 = load i64, i64* %sa_avail, align 8
  %sub36 = sub i64 %24, %mul35
  store i64 %sub36, i64* %sa_avail, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %mul37 = mul i32 2, %25
  %add38 = add i32 %mul37, 1
  %conv39 = zext i32 %add38 to i64
  %mul40 = mul i64 8, %conv39
  %26 = alloca i8, i64 %mul40
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %data, align 8
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %28 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %mul41 = mul i32 2, %28
  %add42 = add i32 %mul41, 1
  %conv43 = zext i32 %add42 to i64
  %call44 = call noalias i8* @xnmalloc(i64 %conv43, i64 8)
  %29 = bitcast i8* %call44 to i64*
  store i64* %29, i64** %data, align 8
  store i8 1, i8* %sa_must_free, align 1
  %30 = load i64*, i64** %data, align 8
  %31 = bitcast i64* %30 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %31)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.45
  store i64 0, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.103, %do.end
  %32 = load i64, i64* %i, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv47 = zext i32 %33 to i64
  %cmp48 = icmp slt i64 %32, %conv47
  br i1 %cmp48, label %for.body.50, label %for.end.104

for.body.50:                                      ; preds = %for.cond.46
  %34 = load i64, i64* %i, align 8
  %35 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %35, i64 %34
  %36 = load i64, i64* %arrayidx, align 8
  store i64 %36, i64* %start, align 8
  %37 = load i64, i64* %start, align 8
  %cmp51 = icmp sge i64 %37, 0
  br i1 %cmp51, label %if.then.53, label %if.else.95

if.then.53:                                       ; preds = %for.body.50
  %38 = load i64, i64* @last_thing_searched, align 8
  %call54 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp55 = icmp eq i64 %38, %call54
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.53
  %39 = load i64, i64* %integers.addr, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp58 = icmp eq i64 %39, %call57
  br i1 %cmp58, label %if.else.69, label %if.then.60

if.then.60:                                       ; preds = %lor.lhs.false, %if.then.53
  %40 = load i64, i64* %start, align 8
  %call61 = call i64 @make_natnum(i64 %40)
  %41 = load i64, i64* %i, align 8
  %mul62 = mul nsw i64 2, %41
  %42 = load i64*, i64** %data, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %42, i64 %mul62
  store i64 %call61, i64* %arrayidx63, align 8
  %43 = load i64, i64* %i, align 8
  %44 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %44, i64 %43
  %45 = load i64, i64* %arrayidx64, align 8
  %call65 = call i64 @make_natnum(i64 %45)
  %46 = load i64, i64* %i, align 8
  %mul66 = mul nsw i64 2, %46
  %add67 = add nsw i64 %mul66, 1
  %47 = load i64*, i64** %data, align 8
  %arrayidx68 = getelementptr inbounds i64, i64* %47, i64 %add67
  store i64 %call65, i64* %arrayidx68, align 8
  br label %if.end.92

if.else.69:                                       ; preds = %lor.lhs.false
  %48 = load i64, i64* @last_thing_searched, align 8
  %call70 = call zeroext i1 @BUFFERP(i64 %48)
  br i1 %call70, label %if.then.71, label %if.else.90

if.then.71:                                       ; preds = %if.else.69
  %call72 = call i64 @Fmake_marker()
  %49 = load i64, i64* %i, align 8
  %mul73 = mul nsw i64 2, %49
  %50 = load i64*, i64** %data, align 8
  %arrayidx74 = getelementptr inbounds i64, i64* %50, i64 %mul73
  store i64 %call72, i64* %arrayidx74, align 8
  %51 = load i64, i64* %i, align 8
  %mul75 = mul nsw i64 2, %51
  %52 = load i64*, i64** %data, align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %52, i64 %mul75
  %53 = load i64, i64* %arrayidx76, align 8
  %54 = load i64, i64* %start, align 8
  %shl = shl i64 %54, 2
  %add77 = add i64 %shl, 2
  %55 = load i64, i64* @last_thing_searched, align 8
  %call78 = call i64 @Fset_marker(i64 %53, i64 %add77, i64 %55)
  %call79 = call i64 @Fmake_marker()
  %56 = load i64, i64* %i, align 8
  %mul80 = mul nsw i64 2, %56
  %add81 = add nsw i64 %mul80, 1
  %57 = load i64*, i64** %data, align 8
  %arrayidx82 = getelementptr inbounds i64, i64* %57, i64 %add81
  store i64 %call79, i64* %arrayidx82, align 8
  %58 = load i64, i64* %i, align 8
  %mul83 = mul nsw i64 2, %58
  %add84 = add nsw i64 %mul83, 1
  %59 = load i64*, i64** %data, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %59, i64 %add84
  %60 = load i64, i64* %arrayidx85, align 8
  %61 = load i64, i64* %i, align 8
  %62 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx86 = getelementptr inbounds i64, i64* %62, i64 %61
  %63 = load i64, i64* %arrayidx86, align 8
  %shl87 = shl i64 %63, 2
  %add88 = add i64 %shl87, 2
  %64 = load i64, i64* @last_thing_searched, align 8
  %call89 = call i64 @Fset_marker(i64 %60, i64 %add88, i64 %64)
  br label %if.end.91

if.else.90:                                       ; preds = %if.else.69
  call void @emacs_abort() #6
  unreachable

if.end.91:                                        ; preds = %if.then.71
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.60
  %65 = load i64, i64* %i, align 8
  %mul93 = mul nsw i64 2, %65
  %add94 = add nsw i64 %mul93, 2
  store i64 %add94, i64* %len, align 8
  br label %if.end.102

if.else.95:                                       ; preds = %for.body.50
  %call96 = call i64 @builtin_lisp_symbol(i32 0)
  %66 = load i64, i64* %i, align 8
  %mul97 = mul nsw i64 2, %66
  %add98 = add nsw i64 %mul97, 1
  %67 = load i64*, i64** %data, align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %67, i64 %add98
  store i64 %call96, i64* %arrayidx99, align 8
  %68 = load i64, i64* %i, align 8
  %mul100 = mul nsw i64 2, %68
  %69 = load i64*, i64** %data, align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %69, i64 %mul100
  store i64 %call96, i64* %arrayidx101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.95, %if.end.92
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %70 = load i64, i64* %i, align 8
  %inc = add nsw i64 %70, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.46

for.end.104:                                      ; preds = %for.cond.46
  %71 = load i64, i64* @last_thing_searched, align 8
  %call105 = call zeroext i1 @BUFFERP(i64 %71)
  br i1 %call105, label %land.lhs.true.107, label %if.end.114

land.lhs.true.107:                                ; preds = %for.end.104
  %72 = load i64, i64* %integers.addr, align 8
  %call108 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp109 = icmp eq i64 %72, %call108
  br i1 %cmp109, label %if.end.114, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.107
  %73 = load i64, i64* @last_thing_searched, align 8
  %74 = load i64, i64* %len, align 8
  %75 = load i64*, i64** %data, align 8
  %arrayidx112 = getelementptr inbounds i64, i64* %75, i64 %74
  store i64 %73, i64* %arrayidx112, align 8
  %76 = load i64, i64* %len, align 8
  %inc113 = add nsw i64 %76, 1
  store i64 %inc113, i64* %len, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %land.lhs.true.107, %for.end.104
  %77 = load i64, i64* %reuse.addr, align 8
  %and115 = and i64 %77, 7
  %conv116 = trunc i64 %and115 to i32
  %cmp117 = icmp eq i32 %conv116, 3
  br i1 %cmp117, label %if.else.121, label %if.then.119

if.then.119:                                      ; preds = %if.end.114
  %78 = load i64, i64* %len, align 8
  %79 = load i64*, i64** %data, align 8
  %call120 = call i64 @Flist(i64 %78, i64* %79)
  store i64 %call120, i64* %reuse.addr, align 8
  br label %if.end.147

if.else.121:                                      ; preds = %if.end.114
  store i64 0, i64* %i, align 8
  %80 = load i64, i64* %reuse.addr, align 8
  store i64 %80, i64* %tail, align 8
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.135, %if.else.121
  %81 = load i64, i64* %tail, align 8
  %and123 = and i64 %81, 7
  %conv124 = trunc i64 %and123 to i32
  %cmp125 = icmp eq i32 %conv124, 3
  br i1 %cmp125, label %for.body.127, label %for.end.140

for.body.127:                                     ; preds = %for.cond.122
  %82 = load i64, i64* %i, align 8
  %83 = load i64, i64* %len, align 8
  %cmp128 = icmp slt i64 %82, %83
  br i1 %cmp128, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %for.body.127
  %84 = load i64, i64* %tail, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load i64*, i64** %data, align 8
  %arrayidx131 = getelementptr inbounds i64, i64* %86, i64 %85
  %87 = load i64, i64* %arrayidx131, align 8
  call void @XSETCAR(i64 %84, i64 %87)
  br label %if.end.134

if.else.132:                                      ; preds = %for.body.127
  %88 = load i64, i64* %tail, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %88, i64 %call133)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132, %if.then.130
  %89 = load i64, i64* %tail, align 8
  store i64 %89, i64* %prev, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %90 = load i64, i64* %i, align 8
  %inc136 = add nsw i64 %90, 1
  store i64 %inc136, i64* %i, align 8
  %91 = load i64, i64* %tail, align 8
  %sub137 = sub nsw i64 %91, 3
  %92 = inttoptr i64 %sub137 to i8*
  %93 = bitcast i8* %92 to %struct.Lisp_Cons*
  %u138 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %93, i32 0, i32 1
  %cdr139 = bitcast %union.anon.0* %u138 to i64*
  %94 = load i64, i64* %cdr139, align 8
  store i64 %94, i64* %tail, align 8
  br label %for.cond.122

for.end.140:                                      ; preds = %for.cond.122
  %95 = load i64, i64* %i, align 8
  %96 = load i64, i64* %len, align 8
  %cmp141 = icmp slt i64 %95, %96
  br i1 %cmp141, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %for.end.140
  %97 = load i64, i64* %prev, align 8
  %98 = load i64, i64* %len, align 8
  %99 = load i64, i64* %i, align 8
  %sub144 = sub nsw i64 %98, %99
  %100 = load i64*, i64** %data, align 8
  %101 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i64, i64* %100, i64 %101
  %call145 = call i64 @Flist(i64 %sub144, i64* %add.ptr)
  call void @XSETCDR(i64 %97, i64 %call145)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %for.end.140
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.119
  br label %do.body.148

do.body.148:                                      ; preds = %if.end.147
  %102 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %102 to i1
  br i1 %tobool, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %do.body.148
  store i8 0, i8* %sa_must_free, align 1
  %103 = load i64, i64* %sa_count, align 8
  %call150 = call i64 @builtin_lisp_symbol(i32 0)
  %call151 = call i64 @unbind_to(i64 %103, i64 %call150)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %do.body.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  %104 = load i64, i64* %reuse.addr, align 8
  store i64 %104, i64* %retval
  br label %return

return:                                           ; preds = %do.end.153, %if.then.22
  %105 = load i64, i64* %retval
  ret i64 %105
}

declare i32 @XMISCTYPE(i64) #1

declare void @unchain_marker(%struct.Lisp_Marker*) #1

declare %struct.Lisp_Marker* @XMARKER(i64) #1

declare void @XSETCAR(i64, i64) #1

declare i64 @SPECPDL_INDEX() #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare i64 @make_natnum(i64) #1

declare zeroext i1 @BUFFERP(i64) #1

declare i64 @Fmake_marker() #1

declare i64 @Fset_marker(i64, i64, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #3

declare i64 @Flist(i64, i64*) #1

declare void @XSETCDR(i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fset_match_data(i64 %list, i64 %reseat) #0 {
entry:
  %list.addr = alloca i64, align 8
  %reseat.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %marker = alloca i64, align 8
  %length = alloca i64, align 8
  %num_regs = alloca i64, align 8
  %from = alloca i64, align 8
  %m = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  store i64 %reseat, i64* %reseat.addr, align 8
  %0 = load i8, i8* @running_asynch_code, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @save_search_regs()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %list.addr, align 8
  call void @CHECK_LIST(i64 %1)
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* @last_thing_searched, align 8
  %2 = load i64, i64* %list.addr, align 8
  %call1 = call i64 @Flength(i64 %2)
  %shr = ashr i64 %call1, 2
  %div = sdiv i64 %shr, 2
  store i64 %div, i64* %length, align 8
  %3 = load i64, i64* %length, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv = zext i32 %4 to i64
  %cmp = icmp sgt i64 %3, %conv
  br i1 %cmp, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv4 = zext i32 %5 to i64
  store i64 %conv4, i64* %num_regs, align 8
  %6 = load i64, i64* %length, align 8
  %cmp5 = icmp slt i64 9223372036854775807, %6
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  call void @memory_full(i64 -1) #6
  unreachable

if.end.8:                                         ; preds = %if.then.3
  %7 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %8 = bitcast i64* %7 to i8*
  %9 = load i64, i64* %length, align 8
  %10 = load i64, i64* %num_regs, align 8
  %sub = sub nsw i64 %9, %10
  %call9 = call i8* @xpalloc(i8* %8, i64* %num_regs, i64 %sub, i64 4294967295, i64 8)
  %11 = bitcast i8* %call9 to i64*
  store i64* %11, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %12 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %13 = bitcast i64* %12 to i8*
  %14 = load i64, i64* %num_regs, align 8
  %mul = mul i64 %14, 8
  %call10 = call i8* @xrealloc(i8* %13, i64 %mul)
  %15 = bitcast i8* %call10 to i64*
  store i64* %15, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv11 = zext i32 %16 to i64
  store i64 %conv11, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %num_regs, align 8
  %cmp12 = icmp slt i64 %17, %18
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %20, i64 %19
  store i64 -1, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add nsw i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %num_regs, align 8
  %conv14 = trunc i64 %22 to i32
  store i32 %conv14, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.191, %if.end.15
  %23 = load i64, i64* %list.addr, align 8
  %and = and i64 %23, 7
  %conv17 = trunc i64 %and to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %for.body.20, label %for.end.193

for.body.20:                                      ; preds = %for.cond.16
  %24 = load i64, i64* %list.addr, align 8
  %sub21 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub21 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 0
  %27 = load i64, i64* %car, align 8
  store i64 %27, i64* %marker, align 8
  %28 = load i64, i64* %marker, align 8
  %call22 = call zeroext i1 @BUFFERP(i64 %28)
  br i1 %call22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.20
  %29 = load i64, i64* %marker, align 8
  store i64 %29, i64* @last_thing_searched, align 8
  br label %for.end.193

if.end.24:                                        ; preds = %for.body.20
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %length, align 8
  %cmp25 = icmp sge i64 %30, %31
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %for.end.193

if.end.28:                                        ; preds = %if.end.24
  %32 = load i64, i64* %marker, align 8
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp30 = icmp eq i64 %32, %call29
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.28
  %33 = load i64, i64* %i, align 8
  %34 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 -1, i64* %arrayidx33, align 8
  %35 = load i64, i64* %list.addr, align 8
  %sub34 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub34 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 1
  %cdr = bitcast %union.anon.0* %u to i64*
  %38 = load i64, i64* %cdr, align 8
  store i64 %38, i64* %list.addr, align 8
  br label %if.end.187

if.else:                                          ; preds = %if.end.28
  %39 = load i64, i64* %marker, align 8
  store i64 %39, i64* %m, align 8
  %40 = load i64, i64* %marker, align 8
  %and35 = and i64 %40, 7
  %conv36 = trunc i64 %and35 to i32
  %cmp37 = icmp eq i32 %conv36, 1
  br i1 %cmp37, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.else
  %41 = load i64, i64* %marker, align 8
  %call39 = call i32 @XMISCTYPE(i64 %41)
  %cmp40 = icmp eq i32 %call39, 24236
  br i1 %cmp40, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %land.lhs.true
  %42 = load i64, i64* %marker, align 8
  %call43 = call %struct.Lisp_Marker* @XMARKER(i64 %42)
  %buffer = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call43, i32 0, i32 1
  %43 = load %struct.buffer*, %struct.buffer** %buffer, align 8
  %cmp44 = icmp eq %struct.buffer* %43, null
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.then.42
  %call47 = call i64 @make_natnum(i64 0)
  store i64 %call47, i64* %marker, align 8
  br label %if.end.52

if.else.48:                                       ; preds = %if.then.42
  %44 = load i64, i64* %marker, align 8
  %call49 = call %struct.Lisp_Marker* @XMARKER(i64 %44)
  %buffer50 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call49, i32 0, i32 1
  %45 = load %struct.buffer*, %struct.buffer** %buffer50, align 8
  %46 = bitcast %struct.buffer* %45 to i8*
  %call51 = call i64 @make_lisp_ptr(i8* %46, i32 5)
  store i64 %call51, i64* @last_thing_searched, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.48, %if.then.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true, %if.else
  br label %do.body

do.body:                                          ; preds = %if.end.53
  %47 = load i64, i64* %marker, align 8
  %and54 = and i64 %47, 7
  %conv55 = trunc i64 %and54 to i32
  %cmp56 = icmp eq i32 %conv55, 1
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.65

land.lhs.true.58:                                 ; preds = %do.body
  %48 = load i64, i64* %marker, align 8
  %call59 = call i32 @XMISCTYPE(i64 %48)
  %cmp60 = icmp eq i32 %call59, 24236
  br i1 %cmp60, label %if.then.62, label %if.else.65

if.then.62:                                       ; preds = %land.lhs.true.58
  %49 = load i64, i64* %marker, align 8
  %call63 = call i64 @marker_position(i64 %49)
  %call64 = call i64 @make_natnum(i64 %call63)
  store i64 %call64, i64* %marker, align 8
  br label %if.end.72

if.else.65:                                       ; preds = %land.lhs.true.58, %do.body
  %50 = load i64, i64* %marker, align 8
  %and66 = and i64 %50, 7
  %conv67 = trunc i64 %and66 to i32
  %and68 = and i32 %conv67, -5
  %cmp69 = icmp eq i32 %and68, 2
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.65
  br label %cond.end

cond.false:                                       ; preds = %if.else.65
  %call71 = call i64 @builtin_lisp_symbol(i32 558)
  %51 = load i64, i64* %marker, align 8
  %52 = call i64 @wrong_type_argument(i64 %call71, i64 %51) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %53, %cond.true
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end, %if.then.62
  br label %do.end

do.end:                                           ; preds = %if.end.72
  %54 = load i64, i64* %marker, align 8
  store i64 %54, i64* %from, align 8
  %55 = load i64, i64* %reseat.addr, align 8
  %call73 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp74 = icmp eq i64 %55, %call73
  br i1 %cmp74, label %if.end.88, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %do.end
  %56 = load i64, i64* %m, align 8
  %and77 = and i64 %56, 7
  %conv78 = trunc i64 %and77 to i32
  %cmp79 = icmp eq i32 %conv78, 1
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.88

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %57 = load i64, i64* %m, align 8
  %call82 = call i32 @XMISCTYPE(i64 %57)
  %cmp83 = icmp eq i32 %call82, 24236
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %land.lhs.true.81
  %58 = load i64, i64* %m, align 8
  %call86 = call %struct.Lisp_Marker* @XMARKER(i64 %58)
  call void @unchain_marker(%struct.Lisp_Marker* %call86)
  %59 = load i64, i64* %list.addr, align 8
  %call87 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %59, i64 %call87)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %land.lhs.true.81, %land.lhs.true.76, %do.end
  %60 = load i64, i64* %list.addr, align 8
  %sub89 = sub nsw i64 %60, 3
  %61 = inttoptr i64 %sub89 to i8*
  %62 = bitcast i8* %61 to %struct.Lisp_Cons*
  %u90 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %62, i32 0, i32 1
  %cdr91 = bitcast %union.anon.0* %u90 to i64*
  %63 = load i64, i64* %cdr91, align 8
  store i64 %63, i64* %list.addr, align 8
  %64 = load i64, i64* %list.addr, align 8
  %and92 = and i64 %64, 7
  %conv93 = trunc i64 %and92 to i32
  %cmp94 = icmp eq i32 %conv93, 3
  %lnot = xor i1 %cmp94, true
  br i1 %lnot, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.88
  br label %for.end.193

if.end.97:                                        ; preds = %if.end.88
  %65 = load i64, i64* %list.addr, align 8
  %sub98 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub98 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %car99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 0
  %68 = load i64, i64* %car99, align 8
  store i64 %68, i64* %marker, align 8
  store i64 %68, i64* %m, align 8
  %69 = load i64, i64* %marker, align 8
  %and100 = and i64 %69, 7
  %conv101 = trunc i64 %and100 to i32
  %cmp102 = icmp eq i32 %conv101, 1
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.115

land.lhs.true.104:                                ; preds = %if.end.97
  %70 = load i64, i64* %marker, align 8
  %call105 = call i32 @XMISCTYPE(i64 %70)
  %cmp106 = icmp eq i32 %call105, 24236
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.115

land.lhs.true.108:                                ; preds = %land.lhs.true.104
  %71 = load i64, i64* %marker, align 8
  %call109 = call %struct.Lisp_Marker* @XMARKER(i64 %71)
  %buffer110 = getelementptr inbounds %struct.Lisp_Marker, %struct.Lisp_Marker* %call109, i32 0, i32 1
  %72 = load %struct.buffer*, %struct.buffer** %buffer110, align 8
  %cmp111 = icmp eq %struct.buffer* %72, null
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.108
  %call114 = call i64 @make_natnum(i64 0)
  store i64 %call114, i64* %marker, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.108, %land.lhs.true.104, %if.end.97
  br label %do.body.116

do.body.116:                                      ; preds = %if.end.115
  %73 = load i64, i64* %marker, align 8
  %and117 = and i64 %73, 7
  %conv118 = trunc i64 %and117 to i32
  %cmp119 = icmp eq i32 %conv118, 1
  br i1 %cmp119, label %land.lhs.true.121, label %if.else.128

land.lhs.true.121:                                ; preds = %do.body.116
  %74 = load i64, i64* %marker, align 8
  %call122 = call i32 @XMISCTYPE(i64 %74)
  %cmp123 = icmp eq i32 %call122, 24236
  br i1 %cmp123, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %land.lhs.true.121
  %75 = load i64, i64* %marker, align 8
  %call126 = call i64 @marker_position(i64 %75)
  %call127 = call i64 @make_natnum(i64 %call126)
  store i64 %call127, i64* %marker, align 8
  br label %if.end.138

if.else.128:                                      ; preds = %land.lhs.true.121, %do.body.116
  %76 = load i64, i64* %marker, align 8
  %and129 = and i64 %76, 7
  %conv130 = trunc i64 %and129 to i32
  %and131 = and i32 %conv130, -5
  %cmp132 = icmp eq i32 %and131, 2
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %if.else.128
  br label %cond.end.137

cond.false.135:                                   ; preds = %if.else.128
  %call136 = call i64 @builtin_lisp_symbol(i32 558)
  %77 = load i64, i64* %marker, align 8
  %78 = call i64 @wrong_type_argument(i64 %call136, i64 %77) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.137

cond.end.137:                                     ; preds = %79, %cond.true.134
  br label %if.end.138

if.end.138:                                       ; preds = %cond.end.137, %if.then.125
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  %80 = load i64, i64* %from, align 8
  %shr140 = ashr i64 %80, 2
  %cmp141 = icmp slt i64 %shr140, 0
  br i1 %cmp141, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %do.end.139
  %81 = load i64, i64* %from, align 8
  %shr144 = ashr i64 %81, 2
  %cmp145 = icmp sle i64 -9223372036854775808, %shr144
  br i1 %cmp145, label %land.lhs.true.151, label %if.else.168

cond.false.147:                                   ; preds = %do.end.139
  %82 = load i64, i64* %from, align 8
  %shr148 = ashr i64 %82, 2
  %cmp149 = icmp sle i64 %shr148, 9223372036854775807
  br i1 %cmp149, label %land.lhs.true.151, label %if.else.168

land.lhs.true.151:                                ; preds = %cond.false.147, %cond.true.143
  %83 = load i64, i64* %marker, align 8
  %shr152 = ashr i64 %83, 2
  %cmp153 = icmp slt i64 %shr152, 0
  br i1 %cmp153, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %land.lhs.true.151
  %84 = load i64, i64* %marker, align 8
  %shr156 = ashr i64 %84, 2
  %cmp157 = icmp sle i64 -9223372036854775808, %shr156
  br i1 %cmp157, label %if.then.163, label %if.else.168

cond.false.159:                                   ; preds = %land.lhs.true.151
  %85 = load i64, i64* %marker, align 8
  %shr160 = ashr i64 %85, 2
  %cmp161 = icmp sle i64 %shr160, 9223372036854775807
  br i1 %cmp161, label %if.then.163, label %if.else.168

if.then.163:                                      ; preds = %cond.false.159, %cond.true.155
  %86 = load i64, i64* %from, align 8
  %shr164 = ashr i64 %86, 2
  %87 = load i64, i64* %i, align 8
  %88 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx165 = getelementptr inbounds i64, i64* %88, i64 %87
  store i64 %shr164, i64* %arrayidx165, align 8
  %89 = load i64, i64* %marker, align 8
  %shr166 = ashr i64 %89, 2
  %90 = load i64, i64* %i, align 8
  %91 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx167 = getelementptr inbounds i64, i64* %91, i64 %90
  store i64 %shr166, i64* %arrayidx167, align 8
  br label %if.end.170

if.else.168:                                      ; preds = %cond.false.159, %cond.true.155, %cond.false.147, %cond.true.143
  %92 = load i64, i64* %i, align 8
  %93 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx169 = getelementptr inbounds i64, i64* %93, i64 %92
  store i64 -1, i64* %arrayidx169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.163
  %94 = load i64, i64* %reseat.addr, align 8
  %call171 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp172 = icmp eq i64 %94, %call171
  br i1 %cmp172, label %if.end.186, label %land.lhs.true.174

land.lhs.true.174:                                ; preds = %if.end.170
  %95 = load i64, i64* %m, align 8
  %and175 = and i64 %95, 7
  %conv176 = trunc i64 %and175 to i32
  %cmp177 = icmp eq i32 %conv176, 1
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.186

land.lhs.true.179:                                ; preds = %land.lhs.true.174
  %96 = load i64, i64* %m, align 8
  %call180 = call i32 @XMISCTYPE(i64 %96)
  %cmp181 = icmp eq i32 %call180, 24236
  br i1 %cmp181, label %if.then.183, label %if.end.186

if.then.183:                                      ; preds = %land.lhs.true.179
  %97 = load i64, i64* %m, align 8
  %call184 = call %struct.Lisp_Marker* @XMARKER(i64 %97)
  call void @unchain_marker(%struct.Lisp_Marker* %call184)
  %98 = load i64, i64* %list.addr, align 8
  %call185 = call i64 @builtin_lisp_symbol(i32 0)
  call void @XSETCAR(i64 %98, i64 %call185)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %land.lhs.true.179, %land.lhs.true.174, %if.end.170
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.32
  %99 = load i64, i64* %list.addr, align 8
  %sub188 = sub nsw i64 %99, 3
  %100 = inttoptr i64 %sub188 to i8*
  %101 = bitcast i8* %100 to %struct.Lisp_Cons*
  %u189 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %101, i32 0, i32 1
  %cdr190 = bitcast %union.anon.0* %u189 to i64*
  %102 = load i64, i64* %cdr190, align 8
  store i64 %102, i64* %list.addr, align 8
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.187
  %103 = load i64, i64* %i, align 8
  %inc192 = add nsw i64 %103, 1
  store i64 %inc192, i64* %i, align 8
  br label %for.cond.16

for.end.193:                                      ; preds = %if.then.96, %if.then.27, %if.then.23, %for.cond.16
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.200, %for.end.193
  %104 = load i64, i64* %i, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv195 = zext i32 %105 to i64
  %cmp196 = icmp slt i64 %104, %conv195
  br i1 %cmp196, label %for.body.198, label %for.end.202

for.body.198:                                     ; preds = %for.cond.194
  %106 = load i64, i64* %i, align 8
  %107 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx199 = getelementptr inbounds i64, i64* %107, i64 %106
  store i64 -1, i64* %arrayidx199, align 8
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.198
  %108 = load i64, i64* %i, align 8
  %inc201 = add nsw i64 %108, 1
  store i64 %inc201, i64* %i, align 8
  br label %for.cond.194

for.end.202:                                      ; preds = %for.cond.194
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call203
}

; Function Attrs: nounwind uwtable
define internal void @save_search_regs() #0 {
entry:
  %0 = load i8, i8* @search_regs_saved, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  store i32 %1, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 0), align 4
  %2 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  store i64* %2, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 1), align 8
  %3 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  store i64* %3, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 2), align 8
  %4 = load i64, i64* @last_thing_searched, align 8
  store i64 %4, i64* @saved_last_thing_searched, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @last_thing_searched, align 8
  store i32 0, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  store i64* null, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  store i64* null, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  store i8 1, i8* @search_regs_saved, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CHECK_LIST(i64) #1

declare i64 @Flength(i64) #1

; Function Attrs: noreturn
declare void @memory_full(i64) #3

declare i64 @make_lisp_ptr(i8*, i32) #1

declare i64 @marker_position(i64) #1

; Function Attrs: nounwind uwtable
define void @restore_search_regs() #0 {
entry:
  %0 = load i8, i8* @search_regs_saved, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %3 = bitcast i64* %2 to i8*
  call void @xfree(i8* %3)
  %4 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %5 = bitcast i64* %4 to i8*
  call void @xfree(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %6 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 0), align 4
  store i32 %6, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %7 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 1), align 8
  store i64* %7, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %8 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @saved_search_regs, i32 0, i32 2), align 8
  store i64* %8, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %9 = load i64, i64* @saved_last_thing_searched, align 8
  store i64 %9, i64* @last_thing_searched, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* @saved_last_thing_searched, align 8
  store i8 0, i8* @search_regs_saved, align 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_search_regs(i64 %oldstart, i64 %oldend, i64 %newend) #0 {
entry:
  %oldstart.addr = alloca i64, align 8
  %oldend.addr = alloca i64, align 8
  %newend.addr = alloca i64, align 8
  %change = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %oldstart, i64* %oldstart.addr, align 8
  store i64 %oldend, i64* %oldend.addr, align 8
  store i64 %newend, i64* %newend.addr, align 8
  %0 = load i64, i64* %newend.addr, align 8
  %1 = load i64, i64* %oldend.addr, align 8
  %sub = sub nsw i64 %0, %1
  store i64 %sub, i64* %change, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv = zext i32 %3 to i64
  %cmp = icmp slt i64 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64, i64* %oldend.addr, align 8
  %cmp2 = icmp sge i64 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %change, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx4, align 8
  %add = add nsw i64 %11, %8
  store i64 %add, i64* %arrayidx4, align 8
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %13 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx5, align 8
  %15 = load i64, i64* %oldstart.addr, align 8
  %cmp6 = icmp sgt i64 %14, %15
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %16 = load i64, i64* %oldstart.addr, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %18, i64 %17
  store i64 %16, i64* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %19 = load i64, i64* %i, align 8
  %20 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx11, align 8
  %22 = load i64, i64* %oldend.addr, align 8
  %cmp12 = icmp sge i64 %21, %22
  br i1 %cmp12, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.end.10
  %23 = load i64, i64* %change, align 8
  %24 = load i64, i64* %i, align 8
  %25 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %25, i64 %24
  %26 = load i64, i64* %arrayidx15, align 8
  %add16 = add nsw i64 %26, %23
  store i64 %add16, i64* %arrayidx15, align 8
  br label %if.end.24

if.else.17:                                       ; preds = %if.end.10
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx18, align 8
  %30 = load i64, i64* %oldstart.addr, align 8
  %cmp19 = icmp sgt i64 %29, %30
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else.17
  %31 = load i64, i64* %oldstart.addr, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %33, i64 %32
  store i64 %31, i64* %arrayidx22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %34 = load i64, i64* %i, align 8
  %inc = add nsw i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @record_unwind_save_match_data() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fmatch_data(i64 %call, i64 %call1, i64 %call2)
  call void @record_unwind_protect(void (i64)* @unwind_set_match_data, i64 %call3)
  ret void
}

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @unwind_set_match_data(i64 %list) #0 {
entry:
  %list.addr = alloca i64, align 8
  store i64 %list, i64* %list.addr, align 8
  %0 = load i64, i64* %list.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %call1 = call i64 @Fset_match_data(i64 %0, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fregexp_quote(i64 %string) #0 {
entry:
  %string.addr = alloca i64, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %end = alloca i8*, align 8
  %temp = alloca i8*, align 8
  %backslashes_added = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %result = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 0, i64* %backslashes_added, align 8
  %0 = load i64, i64* %string.addr, align 8
  call void @CHECK_STRING(i64 %0)
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SBYTES(i64 %1)
  %2 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %2, 1
  %div2 = udiv i64 %div, 2
  %cmp = icmp ule i64 %call1, %div2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load i64, i64* %string.addr, align 8
  %call3 = call i64 @SBYTES(i64 %3)
  %mul = mul i64 2, %call3
  %4 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %4, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %5 = load i64, i64* %string.addr, align 8
  %call4 = call i64 @SBYTES(i64 %5)
  %mul5 = mul i64 2, %call4
  %6 = alloca i8, i64 %mul5
  store i8* %6, i8** %temp, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i64, i64* %string.addr, align 8
  %call6 = call i64 @SBYTES(i64 %7)
  %call7 = call noalias i8* @xnmalloc(i64 %call6, i64 2)
  store i8* %call7, i8** %temp, align 8
  store i8 1, i8* %sa_must_free, align 1
  %8 = load i8*, i8** %temp, align 8
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i64, i64* %string.addr, align 8
  %call8 = call i8* @SSDATA(i64 %9)
  store i8* %call8, i8** %in, align 8
  %10 = load i8*, i8** %in, align 8
  %11 = load i64, i64* %string.addr, align 8
  %call9 = call i64 @SBYTES(i64 %11)
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %call9
  store i8* %add.ptr, i8** %end, align 8
  %12 = load i8*, i8** %temp, align 8
  store i8* %12, i8** %out, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i8*, i8** %in, align 8
  %14 = load i8*, i8** %end, align 8
  %cmp10 = icmp ne i8* %13, %14
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %in, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv, 91
  br i1 %cmp11, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load i8*, i8** %in, align 8
  %18 = load i8, i8* %17, align 1
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 42
  br i1 %cmp14, label %if.then.40, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %19 = load i8*, i8** %in, align 8
  %20 = load i8, i8* %19, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %if.then.40, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %21 = load i8*, i8** %in, align 8
  %22 = load i8, i8* %21, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 92
  br i1 %cmp22, label %if.then.40, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %23 = load i8*, i8** %in, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 63
  br i1 %cmp26, label %if.then.40, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %25 = load i8*, i8** %in, align 8
  %26 = load i8, i8* %25, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 43
  br i1 %cmp30, label %if.then.40, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.28
  %27 = load i8*, i8** %in, align 8
  %28 = load i8, i8* %27, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 94
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %29 = load i8*, i8** %in, align 8
  %30 = load i8, i8* %29, align 1
  %conv37 = sext i8 %30 to i32
  %cmp38 = icmp eq i32 %conv37, 36
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.36, %lor.lhs.false.32, %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false, %for.body
  %31 = load i8*, i8** %out, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %out, align 8
  store i8 92, i8* %31, align 1
  %32 = load i64, i64* %backslashes_added, align 8
  %inc = add nsw i64 %32, 1
  store i64 %inc, i64* %backslashes_added, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %lor.lhs.false.36
  %33 = load i8*, i8** %in, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %out, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr42, i8** %out, align 8
  store i8 %34, i8* %35, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %36 = load i8*, i8** %in, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr43, i8** %in, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i8*, i8** %temp, align 8
  %38 = load i64, i64* %string.addr, align 8
  %call44 = call i64 @SCHARS(i64 %38)
  %39 = load i64, i64* %backslashes_added, align 8
  %add = add nsw i64 %call44, %39
  %40 = load i8*, i8** %out, align 8
  %41 = load i8*, i8** %temp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %42 = load i64, i64* %string.addr, align 8
  %call45 = call zeroext i1 @STRING_MULTIBYTE(i64 %42)
  %call46 = call i64 @make_specified_string(i8* %37, i64 %add, i64 %sub.ptr.sub, i1 zeroext %call45)
  store i64 %call46, i64* %result, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %for.end
  %43 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %43 to i1
  br i1 %tobool, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %do.body.47
  store i8 0, i8* %sa_must_free, align 1
  %44 = load i64, i64* %sa_count, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 0)
  %call50 = call i64 @unbind_to(i64 %44, i64 %call49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %do.body.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %45 = load i64, i64* %result, align 8
  ret i64 %45
}

; Function Attrs: nounwind uwtable
define i64 @Fnewline_cache_check(i64 %buffer) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i64, align 8
  %buf = alloca %struct.buffer*, align 8
  %old = alloca %struct.buffer*, align 8
  %shortage = alloca i64, align 8
  %nl_count_cache = alloca i64, align 8
  %nl_count_buf = alloca i64, align 8
  %cache_newlines = alloca i64, align 8
  %buf_newlines = alloca i64, align 8
  %val = alloca i64, align 8
  %from = alloca i64, align 8
  %found = alloca i64, align 8
  %i = alloca i64, align 8
  %from_byte = alloca i64, align 8
  %from_byte50 = alloca i64, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  store %struct.buffer* null, %struct.buffer** %old, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %1, %struct.buffer** %buf, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %buffer.addr, align 8
  call void @CHECK_BUFFER(i64 %2)
  %3 = load i64, i64* %buffer.addr, align 8
  %call1 = call %struct.buffer* @XBUFFER(i64 %3)
  store %struct.buffer* %call1, %struct.buffer** %buf, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  store %struct.buffer* %4, %struct.buffer** %old, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %base_buffer = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 81
  %6 = load %struct.buffer*, %struct.buffer** %base_buffer, align 8
  %tobool = icmp ne %struct.buffer* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %base_buffer3 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 81
  %8 = load %struct.buffer*, %struct.buffer** %base_buffer3, align 8
  store %struct.buffer* %8, %struct.buffer** %buf, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %cache_long_scans_ = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 43
  %10 = load i64, i64* %cache_long_scans_, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp6 = icmp eq i64 %10, %call5
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %11 = load %struct.buffer*, %struct.buffer** %buf, align 8
  %newline_cache = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 91
  %12 = load %struct.region_cache*, %struct.region_cache** %newline_cache, align 8
  %cmp7 = icmp eq %struct.region_cache* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call9, i64* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %13 = load %struct.buffer*, %struct.buffer** %old, align 8
  %cmp11 = icmp ne %struct.buffer* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.buffer*, %struct.buffer** %buf, align 8
  call void @set_buffer_internal_1(%struct.buffer* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %15 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 77
  %16 = load i64, i64* %begv, align 8
  %17 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 78
  %18 = load i64, i64* %begv_byte, align 8
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 79
  %20 = load i64, i64* %zv, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 80
  %22 = load i64, i64* %zv_byte, align 8
  %call14 = call i64 @find_newline(i64 %16, i64 %18, i64 %20, i64 %22, i64 9223372036854775807, i64* %shortage, i64* null, i1 zeroext true)
  %23 = load i64, i64* %shortage, align 8
  %sub = sub nsw i64 9223372036854775807, %23
  store i64 %sub, i64* %nl_count_cache, align 8
  %24 = load i64, i64* %nl_count_cache, align 8
  %call15 = call i64 @make_uninit_vector(i64 %24)
  store i64 %call15, i64* %cache_newlines, align 8
  %25 = load i64, i64* %nl_count_cache, align 8
  %tobool16 = icmp ne i64 %25, 0
  br i1 %tobool16, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %if.end.13
  %26 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv18 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 77
  %27 = load i64, i64* %begv18, align 8
  store i64 %27, i64* %from, align 8
  %28 = load i64, i64* %from, align 8
  store i64 %28, i64* %found, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %29 = load i64, i64* %from, align 8
  %30 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv19 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 79
  %31 = load i64, i64* %zv19, align 8
  %cmp20 = icmp slt i64 %29, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %33 = load i64, i64* %from, align 8
  %call21 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %32, i64 %33)
  store i64 %call21, i64* %from_byte, align 8
  %34 = load i64, i64* %from, align 8
  %35 = load i64, i64* %from_byte, align 8
  %call22 = call i64 @find_newline(i64 %34, i64 %35, i64 0, i64 -1, i64 1, i64* %shortage, i64* null, i1 zeroext true)
  store i64 %call22, i64* %found, align 8
  %36 = load i64, i64* %shortage, align 8
  %cmp23 = icmp ne i64 %36, 0
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %for.body
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %nl_count_cache, align 8
  %cmp25 = icmp sge i64 %37, %38
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.24, %for.body
  br label %for.end

if.end.27:                                        ; preds = %lor.lhs.false.24
  %39 = load i64, i64* %cache_newlines, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %found, align 8
  %sub28 = sub nsw i64 %41, 1
  %shl = shl i64 %sub28, 2
  %add = add i64 %shl, 2
  call void @ASET(i64 %39, i64 %40, i64 %add)
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %42 = load i64, i64* %found, align 8
  store i64 %42, i64* %from, align 8
  %43 = load i64, i64* %i, align 8
  %inc = add nsw i64 %43, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.26, %for.cond
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.32, %for.end
  %44 = load i64, i64* %i, align 8
  %45 = load i64, i64* %nl_count_cache, align 8
  %cmp30 = icmp slt i64 %44, %45
  br i1 %cmp30, label %for.body.31, label %for.end.34

for.body.31:                                      ; preds = %for.cond.29
  %46 = load i64, i64* %cache_newlines, align 8
  %47 = load i64, i64* %i, align 8
  call void @ASET(i64 %46, i64 %47, i64 -2)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.31
  %48 = load i64, i64* %i, align 8
  %inc33 = add nsw i64 %48, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond.29

for.end.34:                                       ; preds = %for.cond.29
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %if.end.13
  %49 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv36 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 77
  %50 = load i64, i64* %begv36, align 8
  %51 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte37 = getelementptr inbounds %struct.buffer, %struct.buffer* %51, i32 0, i32 78
  %52 = load i64, i64* %begv_byte37, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv38 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 79
  %54 = load i64, i64* %zv38, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte39 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 80
  %56 = load i64, i64* %zv_byte39, align 8
  %call40 = call i64 @find_newline1(i64 %50, i64 %52, i64 %54, i64 %56, i64 9223372036854775807, i64* %shortage, i64* null, i1 zeroext true)
  %57 = load i64, i64* %shortage, align 8
  %sub41 = sub nsw i64 9223372036854775807, %57
  store i64 %sub41, i64* %nl_count_buf, align 8
  %58 = load i64, i64* %nl_count_buf, align 8
  %call42 = call i64 @make_uninit_vector(i64 %58)
  store i64 %call42, i64* %buf_newlines, align 8
  %59 = load i64, i64* %nl_count_buf, align 8
  %tobool43 = icmp ne i64 %59, 0
  br i1 %tobool43, label %if.then.44, label %if.end.70

if.then.44:                                       ; preds = %if.end.35
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv45 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 77
  %61 = load i64, i64* %begv45, align 8
  store i64 %61, i64* %from, align 8
  %62 = load i64, i64* %from, align 8
  store i64 %62, i64* %found, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.61, %if.then.44
  %63 = load i64, i64* %from, align 8
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv47 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 79
  %65 = load i64, i64* %zv47, align 8
  %cmp48 = icmp slt i64 %63, %65
  br i1 %cmp48, label %for.body.49, label %for.end.63

for.body.49:                                      ; preds = %for.cond.46
  %66 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %67 = load i64, i64* %from, align 8
  %call51 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %66, i64 %67)
  store i64 %call51, i64* %from_byte50, align 8
  %68 = load i64, i64* %from, align 8
  %69 = load i64, i64* %from_byte50, align 8
  %call52 = call i64 @find_newline1(i64 %68, i64 %69, i64 0, i64 -1, i64 1, i64* %shortage, i64* null, i1 zeroext true)
  store i64 %call52, i64* %found, align 8
  %70 = load i64, i64* %shortage, align 8
  %cmp53 = icmp ne i64 %70, 0
  br i1 %cmp53, label %if.then.56, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %for.body.49
  %71 = load i64, i64* %i, align 8
  %72 = load i64, i64* %nl_count_buf, align 8
  %cmp55 = icmp sge i64 %71, %72
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false.54, %for.body.49
  br label %for.end.63

if.end.57:                                        ; preds = %lor.lhs.false.54
  %73 = load i64, i64* %buf_newlines, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %found, align 8
  %sub58 = sub nsw i64 %75, 1
  %shl59 = shl i64 %sub58, 2
  %add60 = add i64 %shl59, 2
  call void @ASET(i64 %73, i64 %74, i64 %add60)
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.57
  %76 = load i64, i64* %found, align 8
  store i64 %76, i64* %from, align 8
  %77 = load i64, i64* %i, align 8
  %inc62 = add nsw i64 %77, 1
  store i64 %inc62, i64* %i, align 8
  br label %for.cond.46

for.end.63:                                       ; preds = %if.then.56, %for.cond.46
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.67, %for.end.63
  %78 = load i64, i64* %i, align 8
  %79 = load i64, i64* %nl_count_buf, align 8
  %cmp65 = icmp slt i64 %78, %79
  br i1 %cmp65, label %for.body.66, label %for.end.69

for.body.66:                                      ; preds = %for.cond.64
  %80 = load i64, i64* %buf_newlines, align 8
  %81 = load i64, i64* %i, align 8
  call void @ASET(i64 %80, i64 %81, i64 -2)
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.66
  %82 = load i64, i64* %i, align 8
  %inc68 = add nsw i64 %82, 1
  store i64 %inc68, i64* %i, align 8
  br label %for.cond.64

for.end.69:                                       ; preds = %for.cond.64
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.end.35
  %call71 = call i64 @make_uninit_vector(i64 2)
  store i64 %call71, i64* %val, align 8
  %83 = load i64, i64* %val, align 8
  %84 = load i64, i64* %cache_newlines, align 8
  call void @ASET(i64 %83, i64 0, i64 %84)
  %85 = load i64, i64* %val, align 8
  %86 = load i64, i64* %buf_newlines, align 8
  call void @ASET(i64 %85, i64 1, i64 %86)
  %87 = load %struct.buffer*, %struct.buffer** %old, align 8
  %cmp72 = icmp ne %struct.buffer* %87, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  %88 = load %struct.buffer*, %struct.buffer** %old, align 8
  call void @set_buffer_internal_1(%struct.buffer* %88)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.70
  %89 = load i64, i64* %val, align 8
  store i64 %89, i64* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.8
  %90 = load i64, i64* %retval
  ret i64 %90
}

declare void @CHECK_BUFFER(i64) #1

declare %struct.buffer* @XBUFFER(i64) #1

declare void @set_buffer_internal_1(%struct.buffer*) #1

declare i64 @make_uninit_vector(i64) #1

declare void @ASET(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @find_newline1(i64 %start, i64 %start_byte, i64 %end, i64 %end_byte, i64 %count, i64* %shortage, i64* %bytepos, i1 zeroext %allow_quit) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %start_byte.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %end_byte.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %shortage.addr = alloca i64*, align 8
  %bytepos.addr = alloca i64*, align 8
  %allow_quit.addr = alloca i8, align 1
  %tem = alloca i64, align 8
  %ceiling_byte = alloca i64, align 8
  %lim_addr = alloca i8*, align 8
  %lim_byte = alloca i64, align 8
  %base = alloca i64, align 8
  %cursor = alloca i64, align 8
  %next = alloca i64, align 8
  %nl = alloca i8*, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %start_byte, i64* %start_byte.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %end_byte, i64* %end_byte.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64* %shortage, i64** %shortage.addr, align 8
  store i64* %bytepos, i64** %bytepos.addr, align 8
  %frombool = zext i1 %allow_quit to i8
  store i8 %frombool, i8* %allow_quit.addr, align 1
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %end.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %2 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %2, i32 0, i32 79
  %3 = load i64, i64* %zv, align 8
  store i64 %3, i64* %end.addr, align 8
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 80
  %5 = load i64, i64* %zv_byte, align 8
  store i64 %5, i64* %end_byte.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %end.addr, align 8
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 77
  %8 = load i64, i64* %begv, align 8
  store i64 %8, i64* %end.addr, align 8
  %9 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %9, i32 0, i32 78
  %10 = load i64, i64* %begv_byte, align 8
  store i64 %10, i64* %end_byte.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  %11 = load i64, i64* %end_byte.addr, align 8
  %cmp6 = icmp eq i64 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %13 = load i64, i64* %end.addr, align 8
  %call = call i64 @buf_charpos_to_bytepos(%struct.buffer* %12, i64 %13)
  store i64 %call, i64* %end_byte.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %14 = load i64*, i64** %shortage.addr, align 8
  %cmp9 = icmp ne i64* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %15 = load i64*, i64** %shortage.addr, align 8
  store i64 0, i64* %15, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %16 = load i8, i8* %allow_quit.addr, align 1
  %tobool12 = trunc i8 %16 to i1
  %frombool13 = zext i1 %tobool12 to i8
  store i8 %frombool13, i8* @immediate_quit, align 1
  %17 = load i64, i64* %count.addr, align 8
  %cmp14 = icmp sgt i64 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.end.69

if.then.15:                                       ; preds = %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.15
  %18 = load i64, i64* %start.addr, align 8
  %19 = load i64, i64* %end.addr, align 8
  %cmp16 = icmp ne i64 %18, %19
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i64, i64* %end_byte.addr, align 8
  %sub = sub nsw i64 %20, 1
  store i64 %sub, i64* %ceiling_byte, align 8
  %21 = load i64, i64* %start_byte.addr, align 8
  %cmp17 = icmp eq i64 %21, -1
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %while.body
  %22 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %23 = load i64, i64* %start.addr, align 8
  %call19 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %22, i64 %23)
  store i64 %call19, i64* %start_byte.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %while.body
  %24 = load i64, i64* %start_byte.addr, align 8
  %25 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %25, i32 0, i32 73
  %26 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %26, i32 0, i32 3
  %27 = load i64, i64* %gpt_byte, align 8
  %cmp21 = icmp slt i64 %24, %27
  br i1 %cmp21, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.20
  %28 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text22 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 73
  %29 = load %struct.buffer_text*, %struct.buffer_text** %text22, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %29, i32 0, i32 1
  %30 = load i64, i64* %gpt, align 8
  %31 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv23 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 79
  %32 = load i64, i64* %zv23, align 8
  %cmp24 = icmp slt i64 %30, %32
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %33 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text25 = getelementptr inbounds %struct.buffer, %struct.buffer* %33, i32 0, i32 73
  %34 = load %struct.buffer_text*, %struct.buffer_text** %text25, align 8
  %gpt_byte26 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %34, i32 0, i32 3
  %35 = load i64, i64* %gpt_byte26, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.20
  %36 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte27 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 80
  %37 = load i64, i64* %zv_byte27, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %35, %cond.true ], [ %37, %cond.false ]
  %sub28 = sub nsw i64 %cond, 1
  store i64 %sub28, i64* %tem, align 8
  %38 = load i64, i64* %tem, align 8
  %39 = load i64, i64* %ceiling_byte, align 8
  %cmp29 = icmp slt i64 %38, %39
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end
  %40 = load i64, i64* %tem, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  %41 = load i64, i64* %ceiling_byte, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i64 [ %40, %cond.true.30 ], [ %41, %cond.false.31 ]
  store i64 %cond33, i64* %ceiling_byte, align 8
  %42 = load i64, i64* %ceiling_byte, align 8
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text34 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text34, align 8
  %gpt_byte35 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 3
  %45 = load i64, i64* %gpt_byte35, align 8
  %cmp36 = icmp sge i64 %42, %45
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.32
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 73
  %47 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %47, i32 0, i32 5
  %48 = load i64, i64* %gap_size, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end.32
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi i64 [ %48, %cond.true.37 ], [ 0, %cond.false.39 ]
  %49 = load i64, i64* %ceiling_byte, align 8
  %add = add nsw i64 %cond41, %49
  %50 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text42 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 73
  %51 = load %struct.buffer_text*, %struct.buffer_text** %text42, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %51, i32 0, i32 0
  %52 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %add
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 1
  store i8* %add.ptr44, i8** %lim_addr, align 8
  %53 = load i64, i64* %ceiling_byte, align 8
  %add45 = add nsw i64 %53, 1
  store i64 %add45, i64* %lim_byte, align 8
  %54 = load i64, i64* %start_byte.addr, align 8
  %55 = load i64, i64* %lim_byte, align 8
  %sub46 = sub nsw i64 %54, %55
  store i64 %sub46, i64* %base, align 8
  %56 = load i64, i64* %base, align 8
  store i64 %56, i64* %cursor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.40
  %57 = load i64, i64* %cursor, align 8
  %cmp47 = icmp slt i64 %57, 0
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i8*, i8** %lim_addr, align 8
  %59 = load i64, i64* %cursor, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %58, i64 %59
  %60 = load i64, i64* %cursor, align 8
  %sub49 = sub nsw i64 0, %60
  %call50 = call i8* @memchr(i8* %add.ptr48, i32 10, i64 %sub49) #7
  store i8* %call50, i8** %nl, align 8
  %61 = load i8*, i8** %nl, align 8
  %tobool51 = icmp ne i8* %61, null
  br i1 %tobool51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %for.body
  %62 = load i8*, i8** %nl, align 8
  %63 = load i8*, i8** %lim_addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.54

cond.false.53:                                    ; preds = %for.body
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.52
  %cond55 = phi i64 [ %sub.ptr.sub, %cond.true.52 ], [ 0, %cond.false.53 ]
  store i64 %cond55, i64* %next, align 8
  %64 = load i8*, i8** %nl, align 8
  %tobool56 = icmp ne i8* %64, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %cond.end.54
  br label %for.end

if.end.58:                                        ; preds = %cond.end.54
  %65 = load i64, i64* %next, align 8
  %inc = add nsw i64 %65, 1
  store i64 %inc, i64* %next, align 8
  %66 = load i64, i64* %count.addr, align 8
  %dec = add nsw i64 %66, -1
  store i64 %dec, i64* %count.addr, align 8
  %cmp59 = icmp eq i64 %dec, 0
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.end.58
  store i8 0, i8* @immediate_quit, align 1
  %67 = load i64*, i64** %bytepos.addr, align 8
  %tobool61 = icmp ne i64* %67, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.then.60
  %68 = load i64, i64* %lim_byte, align 8
  %69 = load i64, i64* %next, align 8
  %add63 = add nsw i64 %68, %69
  %70 = load i64*, i64** %bytepos.addr, align 8
  store i64 %add63, i64* %70, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.60
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %72 = load i64, i64* %lim_byte, align 8
  %73 = load i64, i64* %next, align 8
  %add65 = add nsw i64 %72, %73
  %call66 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %71, i64 %add65)
  store i64 %call66, i64* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %74 = load i64, i64* %next, align 8
  store i64 %74, i64* %cursor, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.57, %for.cond
  %75 = load i64, i64* %lim_byte, align 8
  store i64 %75, i64* %start_byte.addr, align 8
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %77 = load i64, i64* %start_byte.addr, align 8
  %call68 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %76, i64 %77)
  store i64 %call68, i64* %start.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.69

if.end.69:                                        ; preds = %while.end, %if.end.11
  store i8 0, i8* @immediate_quit, align 1
  %78 = load i64*, i64** %shortage.addr, align 8
  %tobool70 = icmp ne i64* %78, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  %79 = load i64, i64* %count.addr, align 8
  %80 = load i64*, i64** %shortage.addr, align 8
  store i64 %79, i64* %80, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %81 = load i64*, i64** %bytepos.addr, align 8
  %tobool73 = icmp ne i64* %81, null
  br i1 %tobool73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.72
  %82 = load i64, i64* %start_byte.addr, align 8
  %cmp75 = icmp eq i64 %82, -1
  br i1 %cmp75, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %if.then.74
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %84 = load i64, i64* %start.addr, align 8
  %call77 = call i64 @buf_charpos_to_bytepos(%struct.buffer* %83, i64 %84)
  br label %cond.end.79

cond.false.78:                                    ; preds = %if.then.74
  %85 = load i64, i64* %start_byte.addr, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.76
  %cond80 = phi i64 [ %call77, %cond.true.76 ], [ %85, %cond.false.78 ]
  %86 = load i64*, i64** %bytepos.addr, align 8
  store i64 %cond80, i64* %86, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %if.end.72
  %87 = load i64, i64* %start.addr, align 8
  store i64 %87, i64* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.end.64
  %88 = load i64, i64* %retval
  ret i64 %88
}

; Function Attrs: nounwind uwtable
define void @syms_of_search() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx, i32 0, i32 4
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf, i32 0, i32 1
  store i64 100, i64* %allocated, align 8
  %call = call noalias i8* @xmalloc(i64 100)
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom1
  %buf3 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx2, i32 0, i32 4
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf3, i32 0, i32 0
  store i8* %call, i8** %buffer, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom4
  %fastmap = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx5, i32 0, i32 5
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %fastmap, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom6
  %buf8 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx7, i32 0, i32 4
  %fastmap9 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %buf8, i32 0, i32 4
  store i8* %arraydecay, i8** %fastmap9, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %5 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom11
  %regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx12, i32 0, i32 1
  store i64 %call10, i64* %regexp, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %6 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom14
  %whitespace_regexp = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx15, i32 0, i32 2
  store i64 %call13, i64* %whitespace_regexp, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %7 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %7 to i64
  %arrayidx18 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom17
  %syntax_table = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx18, i32 0, i32 3
  store i64 %call16, i64* %syntax_table, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %8 to i64
  %arrayidx20 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom19
  %regexp21 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx20, i32 0, i32 1
  call void @staticpro(i64* %regexp21)
  %9 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %9 to i64
  %arrayidx23 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom22
  %whitespace_regexp24 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx23, i32 0, i32 2
  call void @staticpro(i64* %whitespace_regexp24)
  %10 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom25
  %syntax_table27 = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx26, i32 0, i32 3
  call void @staticpro(i64* %syntax_table27)
  %11 = load i32, i32* %i, align 4
  %cmp28 = icmp eq i32 %11, 19
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.regexp_cache* [ null, %cond.true ], [ %arrayidx30, %cond.false ]
  %13 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %13 to i64
  %arrayidx32 = getelementptr inbounds [20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 %idxprom31
  %next = getelementptr inbounds %struct.regexp_cache, %struct.regexp_cache* %arrayidx32, i32 0, i32 0
  store %struct.regexp_cache* %cond, %struct.regexp_cache** %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.regexp_cache* getelementptr inbounds ([20 x %struct.regexp_cache], [20 x %struct.regexp_cache]* @searchbufs, i32 0, i64 0), %struct.regexp_cache** @searchbuf_head, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 839)
  %call34 = call i64 @builtin_lisp_symbol(i32 373)
  %call35 = call i64 @builtin_lisp_symbol(i32 839)
  %call36 = call i64 @builtin_lisp_symbol(i32 372)
  %call37 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 2, i64 %call35, i64 %call36)
  %call38 = call i64 @Fput(i64 %call33, i64 %call34, i64 %call37)
  %call39 = call i64 @builtin_lisp_symbol(i32 839)
  %call40 = call i64 @builtin_lisp_symbol(i32 374)
  %call41 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  %call42 = call i64 @Fput(i64 %call39, i64 %call40, i64 %call41)
  %call43 = call i64 @builtin_lisp_symbol(i32 572)
  %call44 = call i64 @builtin_lisp_symbol(i32 373)
  %call45 = call i64 @builtin_lisp_symbol(i32 572)
  %call46 = call i64 @builtin_lisp_symbol(i32 372)
  %call47 = call i64 (i32, i64, i64, ...) @listn(i32 1, i64 2, i64 %call45, i64 %call46)
  %call48 = call i64 @Fput(i64 %call43, i64 %call44, i64 %call47)
  %call49 = call i64 @builtin_lisp_symbol(i32 572)
  %call50 = call i64 @builtin_lisp_symbol(i32 374)
  %call51 = call i64 @build_pure_c_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %call52 = call i64 @Fput(i64 %call49, i64 %call50, i64 %call51)
  %call53 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call53, i64* @last_thing_searched, align 8
  call void @staticpro(i64* @last_thing_searched)
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* @saved_last_thing_searched, align 8
  call void @staticpro(i64* @saved_last_thing_searched)
  br label %do.body

do.body:                                          ; preds = %for.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_search.o_fwd, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call55, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  br label %do.body.56

do.body.56:                                       ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_search.o_fwd.7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132))
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.56
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call58, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Slooking_at to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sposix_looking_at to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sstring_match to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sposix_string_match to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssearch_forward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Ssearch_backward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sre_search_forward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sre_search_backward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sposix_search_forward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sposix_search_backward to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sreplace_match to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smatch_beginning to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Smatch_end to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Smatch_data to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sset_match_data to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sregexp_quote to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Snewline_cache_check to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @Fput(i64, i64, i64) #1

declare i64 @listn(i32, i64, i64, ...) #1

declare i64 @build_pure_c_string(i8*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare i64 @re_set_syntax(i64) #1

declare void @re_set_whitespace_regexp(i8*) #1

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) #1

; Function Attrs: noreturn
declare void @xsignal1(i64, i64) #3

declare i64 @build_string(i8*) #1

declare i64 @Fcopy_sequence(i64) #1

declare void @set_char_table_extras(i64, i64, i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

; Function Attrs: noreturn nounwind uwtable
define internal void @matcher_overflow() #5 {
entry:
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @string_byte_to_char(i64, i64) #1

declare void @free_region_cache(%struct.region_cache*) #1

declare %struct.region_cache* @new_region_cache() #1

; Function Attrs: nounwind uwtable
define internal i64 @search_buffer(i64 %string, i64 %pos, i64 %pos_byte, i64 %lim, i64 %lim_byte, i64 %n, i32 %RE, i64 %trt, i64 %inverse_trt, i1 zeroext %posix) #0 {
entry:
  %retval = alloca i64, align 8
  %string.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %lim.addr = alloca i64, align 8
  %lim_byte.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %RE.addr = alloca i32, align 4
  %trt.addr = alloca i64, align 8
  %inverse_trt.addr = alloca i64, align 8
  %posix.addr = alloca i8, align 1
  %len = alloca i64, align 8
  %len_byte = alloca i64, align 8
  %i = alloca i64, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  %val = alloca i64, align 8
  %val116 = alloca i64, align 8
  %raw_pattern = alloca i8*, align 8
  %pat = alloca i8*, align 8
  %raw_pattern_size = alloca i64, align 8
  %raw_pattern_size_byte = alloca i64, align 8
  %patbuf = alloca i8*, align 8
  %multibyte = alloca i8, align 1
  %base_pat = alloca i8*, align 8
  %char_base = alloca i32, align 4
  %boyer_moore_ok = alloca i8, align 1
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %str_base = alloca [5 x i8], align 1
  %str = alloca i8*, align 8
  %c = alloca i32, align 4
  %translated = alloca i32, align 4
  %inverse = alloca i32, align 4
  %in_charlen = alloca i32, align 4
  %charlen = alloca i32, align 4
  %temp = alloca i64, align 8
  %temp412 = alloca i64, align 8
  %this_char_base = alloca i32, align 4
  %temp490 = alloca i64, align 8
  %c528 = alloca i32, align 4
  %translated529 = alloca i32, align 4
  %inverse530 = alloca i32, align 4
  %temp548 = alloca i64, align 8
  %temp573 = alloca i64, align 8
  %temp606 = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %string, i64* %string.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %lim, i64* %lim.addr, align 8
  store i64 %lim_byte, i64* %lim_byte.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %RE, i32* %RE.addr, align 4
  store i64 %trt, i64* %trt.addr, align 8
  store i64 %inverse_trt, i64* %inverse_trt.addr, align 8
  %frombool = zext i1 %posix to i8
  store i8 %frombool, i8* %posix.addr, align 1
  %0 = load i64, i64* %string.addr, align 8
  %call = call i64 @SCHARS(i64 %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %string.addr, align 8
  %call1 = call i64 @SBYTES(i64 %1)
  store i64 %call1, i64* %len_byte, align 8
  %2 = load i8, i8* @running_asynch_code, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @save_search_regs()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load i64, i64* %pos_byte.addr, align 8
  call void @set_search_regs(i64 %5, i64 0)
  %6 = load i64, i64* %pos.addr, align 8
  store i64 %6, i64* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %RE.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else.179

land.lhs.true:                                    ; preds = %if.end.4
  %8 = load i64, i64* %string.addr, align 8
  %call6 = call zeroext i1 @trivial_regexp_p(i64 %8)
  br i1 %call6, label %land.lhs.true.7, label %if.then.10

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 262), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %9, %call8
  br i1 %cmp9, label %if.else.179, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.7, %land.lhs.true
  %10 = load i64, i64* %string.addr, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call11 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp12 = icmp eq i64 %11, %call11
  %cond = select i1 %cmp12, %struct.re_registers* @search_regs, %struct.re_registers* @search_regs_1
  %12 = load i64, i64* %trt.addr, align 8
  %13 = load i8, i8* %posix.addr, align 1
  %tobool13 = trunc i8 %13 to i1
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %14, i32 0, i32 39
  %15 = load i64, i64* %enable_multibyte_characters_, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %15, %call14
  %lnot = xor i1 %cmp15, true
  %call16 = call %struct.re_pattern_buffer* @compile_pattern(i64 %10, %struct.re_registers* %cond, i64 %12, i1 zeroext %tobool13, i1 zeroext %lnot)
  store %struct.re_pattern_buffer* %call16, %struct.re_pattern_buffer** %bufp, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp18 = icmp eq i64 %16, %call17
  br i1 %cmp18, label %if.else, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %do.body
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp21 = icmp eq i64 %17, %call20
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true.19
  call void @process_quit_flag()
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.19, %do.body
  %18 = load volatile i8, i8* @pending_signals, align 1
  %tobool23 = trunc i8 %18 to i1
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %19 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 78
  %20 = load i64, i64* %begv_byte, align 8
  %21 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 73
  %22 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %22, i32 0, i32 3
  %23 = load i64, i64* %gpt_byte, align 8
  %cmp27 = icmp sge i64 %20, %23
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %24 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text28 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i32 0, i32 73
  %25 = load %struct.buffer_text*, %struct.buffer_text** %text28, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %25, i32 0, i32 5
  %26 = load i64, i64* %gap_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi i64 [ %26, %cond.true ], [ 0, %cond.false ]
  %27 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte30 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 78
  %28 = load i64, i64* %begv_byte30, align 8
  %add = add nsw i64 %cond29, %28
  %29 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text31 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 73
  %30 = load %struct.buffer_text*, %struct.buffer_text** %text31, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %30, i32 0, i32 0
  %31 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %add
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr32, i8** %p1, align 8
  %32 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 73
  %33 = load %struct.buffer_text*, %struct.buffer_text** %text33, align 8
  %gpt_byte34 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %33, i32 0, i32 3
  %34 = load i64, i64* %gpt_byte34, align 8
  %35 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte35 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 78
  %36 = load i64, i64* %begv_byte35, align 8
  %sub = sub nsw i64 %34, %36
  store i64 %sub, i64* %s1, align 8
  %37 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text36 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i32 0, i32 73
  %38 = load %struct.buffer_text*, %struct.buffer_text** %text36, align 8
  %beg37 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %38, i32 0, i32 0
  %39 = load i8*, i8** %beg37, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text38 = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text38, align 8
  %gpt_byte39 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 3
  %42 = load i64, i64* %gpt_byte39, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %39, i64 %42
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text41 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text41, align 8
  %gap_size42 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 5
  %45 = load i64, i64* %gap_size42, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr40, i64 %45
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 -1
  store i8* %add.ptr44, i8** %p2, align 8
  %46 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 80
  %47 = load i64, i64* %zv_byte, align 8
  %48 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text45 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 73
  %49 = load %struct.buffer_text*, %struct.buffer_text** %text45, align 8
  %gpt_byte46 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %49, i32 0, i32 3
  %50 = load i64, i64* %gpt_byte46, align 8
  %sub47 = sub nsw i64 %47, %50
  store i64 %sub47, i64* %s2, align 8
  %51 = load i64, i64* %s1, align 8
  %cmp48 = icmp slt i64 %51, 0
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %cond.end
  %52 = load i8*, i8** %p1, align 8
  store i8* %52, i8** %p2, align 8
  %53 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte50 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i32 0, i32 80
  %54 = load i64, i64* %zv_byte50, align 8
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte51 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 78
  %56 = load i64, i64* %begv_byte51, align 8
  %sub52 = sub nsw i64 %54, %56
  store i64 %sub52, i64* %s2, align 8
  store i64 0, i64* %s1, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %cond.end
  %57 = load i64, i64* %s2, align 8
  %cmp54 = icmp slt i64 %57, 0
  br i1 %cmp54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %if.end.53
  %58 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte56 = getelementptr inbounds %struct.buffer, %struct.buffer* %58, i32 0, i32 80
  %59 = load i64, i64* %zv_byte56, align 8
  %60 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte57 = getelementptr inbounds %struct.buffer, %struct.buffer* %60, i32 0, i32 78
  %61 = load i64, i64* %begv_byte57, align 8
  %sub58 = sub nsw i64 %59, %61
  store i64 %sub58, i64* %s1, align 8
  store i64 0, i64* %s2, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %if.end.53
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call60, i64* @re_match_object, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.110, %if.end.59
  %62 = load i64, i64* %n.addr, align 8
  %cmp61 = icmp slt i64 %62, 0
  br i1 %cmp61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %63 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %64 = load i8*, i8** %p1, align 8
  %65 = load i64, i64* %s1, align 8
  %66 = load i8*, i8** %p2, align 8
  %67 = load i64, i64* %s2, align 8
  %68 = load i64, i64* %pos_byte.addr, align 8
  %69 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte62 = getelementptr inbounds %struct.buffer, %struct.buffer* %69, i32 0, i32 78
  %70 = load i64, i64* %begv_byte62, align 8
  %sub63 = sub nsw i64 %68, %70
  %71 = load i64, i64* %lim_byte.addr, align 8
  %72 = load i64, i64* %pos_byte.addr, align 8
  %sub64 = sub nsw i64 %71, %72
  %73 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call65 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp66 = icmp eq i64 %73, %call65
  %cond67 = select i1 %cmp66, %struct.re_registers* @search_regs, %struct.re_registers* @search_regs_1
  %74 = load i64, i64* %pos_byte.addr, align 8
  %75 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte68 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 78
  %76 = load i64, i64* %begv_byte68, align 8
  %sub69 = sub nsw i64 %74, %76
  %call70 = call i64 @re_search_2(%struct.re_pattern_buffer* %63, i8* %64, i64 %65, i8* %66, i64 %67, i64 %sub63, i64 %sub64, %struct.re_registers* %cond67, i64 %sub69)
  store i64 %call70, i64* %val, align 8
  %77 = load i64, i64* %val, align 8
  %cmp71 = icmp eq i64 %77, -2
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.body
  call void @matcher_overflow() #6
  unreachable

if.end.73:                                        ; preds = %while.body
  %78 = load i64, i64* %val, align 8
  %cmp74 = icmp sge i64 %78, 0
  br i1 %cmp74, label %if.then.75, label %if.else.109

if.then.75:                                       ; preds = %if.end.73
  %79 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %79, %call76
  br i1 %cmp77, label %if.then.78, label %if.else.100

if.then.78:                                       ; preds = %if.then.75
  %80 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %80, i64 0
  %81 = load i64, i64* %arrayidx, align 8
  %82 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte79 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 78
  %83 = load i64, i64* %begv_byte79, align 8
  %add80 = add nsw i64 %81, %83
  store i64 %add80, i64* %pos_byte.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.78
  %84 = load i64, i64* %i, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv = zext i32 %85 to i64
  %cmp81 = icmp slt i64 %84, %conv
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load i64, i64* %i, align 8
  %87 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %87, i64 %86
  %88 = load i64, i64* %arrayidx83, align 8
  %cmp84 = icmp sge i64 %88, 0
  br i1 %cmp84, label %if.then.86, label %if.end.97

if.then.86:                                       ; preds = %for.body
  %89 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %90 = load i64, i64* %i, align 8
  %91 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %91, i64 %90
  %92 = load i64, i64* %arrayidx87, align 8
  %93 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte88 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 78
  %94 = load i64, i64* %begv_byte88, align 8
  %add89 = add nsw i64 %92, %94
  %call90 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %89, i64 %add89)
  %95 = load i64, i64* %i, align 8
  %96 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx91 = getelementptr inbounds i64, i64* %96, i64 %95
  store i64 %call90, i64* %arrayidx91, align 8
  %97 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %98 = load i64, i64* %i, align 8
  %99 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx92 = getelementptr inbounds i64, i64* %99, i64 %98
  %100 = load i64, i64* %arrayidx92, align 8
  %101 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte93 = getelementptr inbounds %struct.buffer, %struct.buffer* %101, i32 0, i32 78
  %102 = load i64, i64* %begv_byte93, align 8
  %add94 = add nsw i64 %100, %102
  %call95 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %97, i64 %add94)
  %103 = load i64, i64* %i, align 8
  %104 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %104, i64 %103
  store i64 %call95, i64* %arrayidx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.86, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %105 = load i64, i64* %i, align 8
  %inc = add nsw i64 %105, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %107 = bitcast %struct.buffer* %106 to i8*
  %call98 = call i64 @make_lisp_ptr(i8* %107, i32 5)
  store i64 %call98, i64* @last_thing_searched, align 8
  %108 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %108, i64 0
  %109 = load i64, i64* %arrayidx99, align 8
  store i64 %109, i64* %pos.addr, align 8
  br label %if.end.108

if.else.100:                                      ; preds = %if.then.75
  %110 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs_1, i32 0, i32 1), align 8
  %arrayidx101 = getelementptr inbounds i64, i64* %110, i64 0
  %111 = load i64, i64* %arrayidx101, align 8
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte102 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 78
  %113 = load i64, i64* %begv_byte102, align 8
  %add103 = add nsw i64 %111, %113
  store i64 %add103, i64* %pos_byte.addr, align 8
  %114 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %115 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs_1, i32 0, i32 1), align 8
  %arrayidx104 = getelementptr inbounds i64, i64* %115, i64 0
  %116 = load i64, i64* %arrayidx104, align 8
  %117 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte105 = getelementptr inbounds %struct.buffer, %struct.buffer* %117, i32 0, i32 78
  %118 = load i64, i64* %begv_byte105, align 8
  %add106 = add nsw i64 %116, %118
  %call107 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %114, i64 %add106)
  store i64 %call107, i64* %pos.addr, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.100, %for.end
  br label %if.end.110

if.else.109:                                      ; preds = %if.end.73
  store i8 0, i8* @immediate_quit, align 1
  %119 = load i64, i64* %n.addr, align 8
  store i64 %119, i64* %retval
  br label %return

if.end.110:                                       ; preds = %if.end.108
  %120 = load i64, i64* %n.addr, align 8
  %inc111 = add nsw i64 %120, 1
  store i64 %inc111, i64* %n.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.112

while.cond.112:                                   ; preds = %if.end.177, %while.end
  %121 = load i64, i64* %n.addr, align 8
  %cmp113 = icmp sgt i64 %121, 0
  br i1 %cmp113, label %while.body.115, label %while.end.178

while.body.115:                                   ; preds = %while.cond.112
  %122 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %123 = load i8*, i8** %p1, align 8
  %124 = load i64, i64* %s1, align 8
  %125 = load i8*, i8** %p2, align 8
  %126 = load i64, i64* %s2, align 8
  %127 = load i64, i64* %pos_byte.addr, align 8
  %128 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte117 = getelementptr inbounds %struct.buffer, %struct.buffer* %128, i32 0, i32 78
  %129 = load i64, i64* %begv_byte117, align 8
  %sub118 = sub nsw i64 %127, %129
  %130 = load i64, i64* %lim_byte.addr, align 8
  %131 = load i64, i64* %pos_byte.addr, align 8
  %sub119 = sub nsw i64 %130, %131
  %132 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call120 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp121 = icmp eq i64 %132, %call120
  %cond123 = select i1 %cmp121, %struct.re_registers* @search_regs, %struct.re_registers* @search_regs_1
  %133 = load i64, i64* %lim_byte.addr, align 8
  %134 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte124 = getelementptr inbounds %struct.buffer, %struct.buffer* %134, i32 0, i32 78
  %135 = load i64, i64* %begv_byte124, align 8
  %sub125 = sub nsw i64 %133, %135
  %call126 = call i64 @re_search_2(%struct.re_pattern_buffer* %122, i8* %123, i64 %124, i8* %125, i64 %126, i64 %sub118, i64 %sub119, %struct.re_registers* %cond123, i64 %sub125)
  store i64 %call126, i64* %val116, align 8
  %136 = load i64, i64* %val116, align 8
  %cmp127 = icmp eq i64 %136, -2
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %while.body.115
  call void @matcher_overflow() #6
  unreachable

if.end.130:                                       ; preds = %while.body.115
  %137 = load i64, i64* %val116, align 8
  %cmp131 = icmp sge i64 %137, 0
  br i1 %cmp131, label %if.then.133, label %if.else.175

if.then.133:                                      ; preds = %if.end.130
  %138 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call134 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp135 = icmp eq i64 %138, %call134
  br i1 %cmp135, label %if.then.137, label %if.else.166

if.then.137:                                      ; preds = %if.then.133
  %139 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx138 = getelementptr inbounds i64, i64* %139, i64 0
  %140 = load i64, i64* %arrayidx138, align 8
  %141 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte139 = getelementptr inbounds %struct.buffer, %struct.buffer* %141, i32 0, i32 78
  %142 = load i64, i64* %begv_byte139, align 8
  %add140 = add nsw i64 %140, %142
  store i64 %add140, i64* %pos_byte.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.161, %if.then.137
  %143 = load i64, i64* %i, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv142 = zext i32 %144 to i64
  %cmp143 = icmp slt i64 %143, %conv142
  br i1 %cmp143, label %for.body.145, label %for.end.163

for.body.145:                                     ; preds = %for.cond.141
  %145 = load i64, i64* %i, align 8
  %146 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx146 = getelementptr inbounds i64, i64* %146, i64 %145
  %147 = load i64, i64* %arrayidx146, align 8
  %cmp147 = icmp sge i64 %147, 0
  br i1 %cmp147, label %if.then.149, label %if.end.160

if.then.149:                                      ; preds = %for.body.145
  %148 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %149 = load i64, i64* %i, align 8
  %150 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx150 = getelementptr inbounds i64, i64* %150, i64 %149
  %151 = load i64, i64* %arrayidx150, align 8
  %152 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte151 = getelementptr inbounds %struct.buffer, %struct.buffer* %152, i32 0, i32 78
  %153 = load i64, i64* %begv_byte151, align 8
  %add152 = add nsw i64 %151, %153
  %call153 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %148, i64 %add152)
  %154 = load i64, i64* %i, align 8
  %155 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx154 = getelementptr inbounds i64, i64* %155, i64 %154
  store i64 %call153, i64* %arrayidx154, align 8
  %156 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %157 = load i64, i64* %i, align 8
  %158 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx155 = getelementptr inbounds i64, i64* %158, i64 %157
  %159 = load i64, i64* %arrayidx155, align 8
  %160 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte156 = getelementptr inbounds %struct.buffer, %struct.buffer* %160, i32 0, i32 78
  %161 = load i64, i64* %begv_byte156, align 8
  %add157 = add nsw i64 %159, %161
  %call158 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %156, i64 %add157)
  %162 = load i64, i64* %i, align 8
  %163 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx159 = getelementptr inbounds i64, i64* %163, i64 %162
  store i64 %call158, i64* %arrayidx159, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.149, %for.body.145
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %164 = load i64, i64* %i, align 8
  %inc162 = add nsw i64 %164, 1
  store i64 %inc162, i64* %i, align 8
  br label %for.cond.141

for.end.163:                                      ; preds = %for.cond.141
  %165 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %166 = bitcast %struct.buffer* %165 to i8*
  %call164 = call i64 @make_lisp_ptr(i8* %166, i32 5)
  store i64 %call164, i64* @last_thing_searched, align 8
  %167 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx165 = getelementptr inbounds i64, i64* %167, i64 0
  %168 = load i64, i64* %arrayidx165, align 8
  store i64 %168, i64* %pos.addr, align 8
  br label %if.end.174

if.else.166:                                      ; preds = %if.then.133
  %169 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs_1, i32 0, i32 2), align 8
  %arrayidx167 = getelementptr inbounds i64, i64* %169, i64 0
  %170 = load i64, i64* %arrayidx167, align 8
  %171 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte168 = getelementptr inbounds %struct.buffer, %struct.buffer* %171, i32 0, i32 78
  %172 = load i64, i64* %begv_byte168, align 8
  %add169 = add nsw i64 %170, %172
  store i64 %add169, i64* %pos_byte.addr, align 8
  %173 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %174 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs_1, i32 0, i32 2), align 8
  %arrayidx170 = getelementptr inbounds i64, i64* %174, i64 0
  %175 = load i64, i64* %arrayidx170, align 8
  %176 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte171 = getelementptr inbounds %struct.buffer, %struct.buffer* %176, i32 0, i32 78
  %177 = load i64, i64* %begv_byte171, align 8
  %add172 = add nsw i64 %175, %177
  %call173 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %173, i64 %add172)
  store i64 %call173, i64* %pos.addr, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.166, %for.end.163
  br label %if.end.177

if.else.175:                                      ; preds = %if.end.130
  store i8 0, i8* @immediate_quit, align 1
  %178 = load i64, i64* %n.addr, align 8
  %sub176 = sub nsw i64 0, %178
  store i64 %sub176, i64* %retval
  br label %return

if.end.177:                                       ; preds = %if.end.174
  %179 = load i64, i64* %n.addr, align 8
  %dec = add nsw i64 %179, -1
  store i64 %dec, i64* %n.addr, align 8
  br label %while.cond.112

while.end.178:                                    ; preds = %while.cond.112
  store i8 0, i8* @immediate_quit, align 1
  %180 = load i64, i64* %pos.addr, align 8
  store i64 %180, i64* %retval
  br label %return

if.else.179:                                      ; preds = %land.lhs.true.7, %if.end.4
  %181 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_180 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 39
  %182 = load i64, i64* %enable_multibyte_characters_180, align 8
  %call181 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp182 = icmp eq i64 %182, %call181
  %lnot184 = xor i1 %cmp182, true
  %frombool185 = zext i1 %lnot184 to i8
  store i8 %frombool185, i8* %multibyte, align 1
  store i32 -1, i32* %char_base, align 4
  store i8 1, i8* %boyer_moore_ok, align 1
  store i64 16384, i64* %sa_avail, align 8
  %call186 = call i64 @SPECPDL_INDEX()
  store i64 %call186, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %183 = load i8, i8* %multibyte, align 1
  %tobool187 = trunc i8 %183 to i1
  %conv188 = zext i1 %tobool187 to i32
  %184 = load i64, i64* %string.addr, align 8
  %call189 = call zeroext i1 @STRING_MULTIBYTE(i64 %184)
  %conv190 = zext i1 %call189 to i32
  %cmp191 = icmp eq i32 %conv188, %conv190
  br i1 %cmp191, label %if.then.193, label %if.else.197

if.then.193:                                      ; preds = %if.else.179
  %185 = load i64, i64* %string.addr, align 8
  %call194 = call i8* @SDATA(i64 %185)
  store i8* %call194, i8** %raw_pattern, align 8
  %186 = load i64, i64* %string.addr, align 8
  %call195 = call i64 @SCHARS(i64 %186)
  store i64 %call195, i64* %raw_pattern_size, align 8
  %187 = load i64, i64* %string.addr, align 8
  %call196 = call i64 @SBYTES(i64 %187)
  store i64 %call196, i64* %raw_pattern_size_byte, align 8
  br label %if.end.237

if.else.197:                                      ; preds = %if.else.179
  %188 = load i8, i8* %multibyte, align 1
  %tobool198 = trunc i8 %188 to i1
  br i1 %tobool198, label %if.then.199, label %if.else.218

if.then.199:                                      ; preds = %if.else.197
  %189 = load i64, i64* %string.addr, align 8
  %call200 = call i64 @SCHARS(i64 %189)
  store i64 %call200, i64* %raw_pattern_size, align 8
  %190 = load i64, i64* %string.addr, align 8
  %call201 = call i8* @SDATA(i64 %190)
  %191 = load i64, i64* %raw_pattern_size, align 8
  %call202 = call i64 @count_size_as_multibyte(i8* %call201, i64 %191)
  store i64 %call202, i64* %raw_pattern_size_byte, align 8
  %192 = load i64, i64* %raw_pattern_size_byte, align 8
  %add203 = add nsw i64 %192, 1
  %193 = load i64, i64* %sa_avail, align 8
  %cmp204 = icmp sle i64 %add203, %193
  br i1 %cmp204, label %cond.true.206, label %cond.false.210

cond.true.206:                                    ; preds = %if.then.199
  %194 = load i64, i64* %raw_pattern_size_byte, align 8
  %add207 = add nsw i64 %194, 1
  %195 = load i64, i64* %sa_avail, align 8
  %sub208 = sub nsw i64 %195, %add207
  store i64 %sub208, i64* %sa_avail, align 8
  %196 = load i64, i64* %raw_pattern_size_byte, align 8
  %add209 = add nsw i64 %196, 1
  %197 = alloca i8, i64 %add209
  br label %cond.end.213

cond.false.210:                                   ; preds = %if.then.199
  store i8 1, i8* %sa_must_free, align 1
  %198 = load i64, i64* %raw_pattern_size_byte, align 8
  %add211 = add nsw i64 %198, 1
  %call212 = call i8* @record_xmalloc(i64 %add211)
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.206
  %cond214 = phi i8* [ %197, %cond.true.206 ], [ %call212, %cond.false.210 ]
  store i8* %cond214, i8** %raw_pattern, align 8
  %199 = load i64, i64* %string.addr, align 8
  %call215 = call i8* @SDATA(i64 %199)
  %200 = load i8*, i8** %raw_pattern, align 8
  %201 = load i64, i64* %string.addr, align 8
  %call216 = call i64 @SCHARS(i64 %201)
  %call217 = call i64 @copy_text(i8* %call215, i8* %200, i64 %call216, i1 zeroext false, i1 zeroext true)
  br label %if.end.236

if.else.218:                                      ; preds = %if.else.197
  %202 = load i64, i64* %string.addr, align 8
  %call219 = call i64 @SCHARS(i64 %202)
  store i64 %call219, i64* %raw_pattern_size, align 8
  %203 = load i64, i64* %string.addr, align 8
  %call220 = call i64 @SCHARS(i64 %203)
  store i64 %call220, i64* %raw_pattern_size_byte, align 8
  %204 = load i64, i64* %raw_pattern_size, align 8
  %add221 = add nsw i64 %204, 1
  %205 = load i64, i64* %sa_avail, align 8
  %cmp222 = icmp sle i64 %add221, %205
  br i1 %cmp222, label %cond.true.224, label %cond.false.228

cond.true.224:                                    ; preds = %if.else.218
  %206 = load i64, i64* %raw_pattern_size, align 8
  %add225 = add nsw i64 %206, 1
  %207 = load i64, i64* %sa_avail, align 8
  %sub226 = sub nsw i64 %207, %add225
  store i64 %sub226, i64* %sa_avail, align 8
  %208 = load i64, i64* %raw_pattern_size, align 8
  %add227 = add nsw i64 %208, 1
  %209 = alloca i8, i64 %add227
  br label %cond.end.231

cond.false.228:                                   ; preds = %if.else.218
  store i8 1, i8* %sa_must_free, align 1
  %210 = load i64, i64* %raw_pattern_size, align 8
  %add229 = add nsw i64 %210, 1
  %call230 = call i8* @record_xmalloc(i64 %add229)
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.228, %cond.true.224
  %cond232 = phi i8* [ %209, %cond.true.224 ], [ %call230, %cond.false.228 ]
  store i8* %cond232, i8** %raw_pattern, align 8
  %211 = load i64, i64* %string.addr, align 8
  %call233 = call i8* @SDATA(i64 %211)
  %212 = load i8*, i8** %raw_pattern, align 8
  %213 = load i64, i64* %string.addr, align 8
  %call234 = call i64 @SBYTES(i64 %213)
  %call235 = call i64 @copy_text(i8* %call233, i8* %212, i64 %call234, i1 zeroext true, i1 zeroext false)
  br label %if.end.236

if.end.236:                                       ; preds = %cond.end.231, %cond.end.213
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.193
  %214 = load i64, i64* %raw_pattern_size, align 8
  store i64 %214, i64* %len, align 8
  %215 = load i64, i64* %raw_pattern_size_byte, align 8
  store i64 %215, i64* %len_byte, align 8
  br label %do.body.238

do.body.238:                                      ; preds = %if.end.237
  %216 = load i64, i64* %len, align 8
  %217 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %217, 1
  %div239 = udiv i64 %div, 5
  %cmp240 = icmp ule i64 %216, %div239
  br i1 %cmp240, label %if.then.242, label %if.else.245

if.then.242:                                      ; preds = %do.body.238
  %218 = load i64, i64* %len, align 8
  %mul = mul i64 5, %218
  %219 = load i64, i64* %sa_avail, align 8
  %sub243 = sub i64 %219, %mul
  store i64 %sub243, i64* %sa_avail, align 8
  %220 = load i64, i64* %len, align 8
  %mul244 = mul i64 5, %220
  %221 = alloca i8, i64 %mul244
  store i8* %221, i8** %patbuf, align 8
  br label %if.end.247

if.else.245:                                      ; preds = %do.body.238
  %222 = load i64, i64* %len, align 8
  %call246 = call noalias i8* @xnmalloc(i64 %222, i64 5)
  store i8* %call246, i8** %patbuf, align 8
  store i8 1, i8* %sa_must_free, align 1
  %223 = load i8*, i8** %patbuf, align 8
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %223)
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.245, %if.then.242
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  %224 = load i8*, i8** %patbuf, align 8
  store i8* %224, i8** %pat, align 8
  %225 = load i8*, i8** %raw_pattern, align 8
  store i8* %225, i8** %base_pat, align 8
  %226 = load i8, i8* %multibyte, align 1
  %tobool249 = trunc i8 %226 to i1
  br i1 %tobool249, label %if.then.250, label %if.else.522

if.then.250:                                      ; preds = %do.end.248
  br label %while.cond.251

while.cond.251:                                   ; preds = %if.end.510, %if.then.250
  %227 = load i64, i64* %len, align 8
  %dec252 = add nsw i64 %227, -1
  store i64 %dec252, i64* %len, align 8
  %cmp253 = icmp sge i64 %dec252, 0
  br i1 %cmp253, label %while.body.255, label %while.end.517

while.body.255:                                   ; preds = %while.cond.251
  %228 = load i32, i32* %RE.addr, align 4
  %tobool256 = icmp ne i32 %228, 0
  br i1 %tobool256, label %land.lhs.true.257, label %if.end.265

land.lhs.true.257:                                ; preds = %while.body.255
  %229 = load i8*, i8** %base_pat, align 8
  %230 = load i8, i8* %229, align 1
  %conv258 = zext i8 %230 to i32
  %cmp259 = icmp eq i32 %conv258, 92
  br i1 %cmp259, label %if.then.261, label %if.end.265

if.then.261:                                      ; preds = %land.lhs.true.257
  %231 = load i64, i64* %len, align 8
  %dec262 = add nsw i64 %231, -1
  store i64 %dec262, i64* %len, align 8
  %232 = load i64, i64* %raw_pattern_size, align 8
  %dec263 = add nsw i64 %232, -1
  store i64 %dec263, i64* %raw_pattern_size, align 8
  %233 = load i64, i64* %len_byte, align 8
  %dec264 = add nsw i64 %233, -1
  store i64 %dec264, i64* %len_byte, align 8
  %234 = load i8*, i8** %base_pat, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %incdec.ptr, i8** %base_pat, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.261, %land.lhs.true.257, %while.body.255
  %235 = load i8*, i8** %base_pat, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %235, i64 0
  %236 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %236 to i32
  %and = and i32 %conv267, 128
  %tobool268 = icmp ne i32 %and, 0
  br i1 %tobool268, label %cond.false.272, label %cond.true.269

cond.true.269:                                    ; preds = %if.end.265
  store i32 1, i32* %in_charlen, align 4
  %237 = load i8*, i8** %base_pat, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %237, i64 0
  %238 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %238 to i32
  br label %cond.end.315

cond.false.272:                                   ; preds = %if.end.265
  %239 = load i8*, i8** %base_pat, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %239, i64 0
  %240 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %240 to i32
  %and275 = and i32 %conv274, 32
  %tobool276 = icmp ne i32 %and275, 0
  br i1 %tobool276, label %cond.false.290, label %cond.true.277

cond.true.277:                                    ; preds = %cond.false.272
  store i32 2, i32* %in_charlen, align 4
  %241 = load i8*, i8** %base_pat, align 8
  %arrayidx278 = getelementptr inbounds i8, i8* %241, i64 0
  %242 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %242 to i32
  %and280 = and i32 %conv279, 31
  %shl = shl i32 %and280, 6
  %243 = load i8*, i8** %base_pat, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %243, i64 1
  %244 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %244 to i32
  %and283 = and i32 %conv282, 63
  %or = or i32 %shl, %and283
  %245 = load i8*, i8** %base_pat, align 8
  %arrayidx284 = getelementptr inbounds i8, i8* %245, i64 0
  %246 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %246 to i32
  %cmp286 = icmp slt i32 %conv285, 194
  %cond288 = select i1 %cmp286, i32 4194176, i32 0
  %add289 = add nsw i32 %or, %cond288
  br label %cond.end.313

cond.false.290:                                   ; preds = %cond.false.272
  %247 = load i8*, i8** %base_pat, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %248 to i32
  %and293 = and i32 %conv292, 16
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %cond.false.309, label %cond.true.295

cond.true.295:                                    ; preds = %cond.false.290
  store i32 3, i32* %in_charlen, align 4
  %249 = load i8*, i8** %base_pat, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %249, i64 0
  %250 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %250 to i32
  %and298 = and i32 %conv297, 15
  %shl299 = shl i32 %and298, 12
  %251 = load i8*, i8** %base_pat, align 8
  %arrayidx300 = getelementptr inbounds i8, i8* %251, i64 1
  %252 = load i8, i8* %arrayidx300, align 1
  %conv301 = zext i8 %252 to i32
  %and302 = and i32 %conv301, 63
  %shl303 = shl i32 %and302, 6
  %or304 = or i32 %shl299, %shl303
  %253 = load i8*, i8** %base_pat, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %253, i64 2
  %254 = load i8, i8* %arrayidx305, align 1
  %conv306 = zext i8 %254 to i32
  %and307 = and i32 %conv306, 63
  %or308 = or i32 %or304, %and307
  br label %cond.end.311

cond.false.309:                                   ; preds = %cond.false.290
  %255 = load i8*, i8** %base_pat, align 8
  %call310 = call i32 @string_char(i8* %255, i8** null, i32* %in_charlen)
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.false.309, %cond.true.295
  %cond312 = phi i32 [ %or308, %cond.true.295 ], [ %call310, %cond.false.309 ]
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.end.311, %cond.true.277
  %cond314 = phi i32 [ %add289, %cond.true.277 ], [ %cond312, %cond.end.311 ]
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.end.313, %cond.true.269
  %cond316 = phi i32 [ %conv271, %cond.true.269 ], [ %cond314, %cond.end.313 ]
  store i32 %cond316, i32* %c, align 4
  %256 = load i64, i64* %trt.addr, align 8
  %call317 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp318 = icmp eq i64 %256, %call317
  br i1 %cmp318, label %if.then.320, label %if.else.321

if.then.320:                                      ; preds = %cond.end.315
  %257 = load i8*, i8** %base_pat, align 8
  store i8* %257, i8** %str, align 8
  %258 = load i32, i32* %in_charlen, align 4
  store i32 %258, i32* %charlen, align 4
  br label %if.end.510

if.else.321:                                      ; preds = %cond.end.315
  br label %do.body.322

do.body.322:                                      ; preds = %if.else.321
  %259 = load i64, i64* %trt.addr, align 8
  %call323 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp324 = icmp eq i64 %259, %call323
  br i1 %cmp324, label %if.else.340, label %if.then.326

if.then.326:                                      ; preds = %do.body.322
  %260 = load i64, i64* %trt.addr, align 8
  %261 = load i32, i32* %c, align 4
  %conv327 = sext i32 %261 to i64
  %shl328 = shl i64 %conv327, 2
  %add329 = add i64 %shl328, 2
  %call330 = call i64 @Faref(i64 %260, i64 %add329)
  store i64 %call330, i64* %temp, align 8
  %262 = load i64, i64* %temp, align 8
  %and331 = and i64 %262, 7
  %conv332 = trunc i64 %and331 to i32
  %and333 = and i32 %conv332, -5
  %cmp334 = icmp eq i32 %and333, 2
  br i1 %cmp334, label %if.then.336, label %if.else.338

if.then.336:                                      ; preds = %if.then.326
  %263 = load i64, i64* %temp, align 8
  %shr = ashr i64 %263, 2
  %conv337 = trunc i64 %shr to i32
  store i32 %conv337, i32* %translated, align 4
  br label %if.end.339

if.else.338:                                      ; preds = %if.then.326
  %264 = load i32, i32* %c, align 4
  store i32 %264, i32* %translated, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.338, %if.then.336
  br label %if.end.341

if.else.340:                                      ; preds = %do.body.322
  %265 = load i32, i32* %c, align 4
  store i32 %265, i32* %translated, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.340, %if.end.339
  br label %do.end.342

do.end.342:                                       ; preds = %if.end.341
  br i1 true, label %cond.true.343, label %cond.false.347

cond.true.343:                                    ; preds = %do.end.342
  %266 = load i32, i32* %translated, align 4
  %add344 = add i32 %266, 0
  %cmp345 = icmp ule i32 %add344, 127
  br i1 %cmp345, label %cond.true.352, label %cond.false.355

cond.false.347:                                   ; preds = %do.end.342
  %267 = load i32, i32* %translated, align 4
  %conv348 = sext i32 %267 to i64
  %add349 = add i64 %conv348, 0
  %cmp350 = icmp ule i64 %add349, 127
  br i1 %cmp350, label %cond.true.352, label %cond.false.355

cond.true.352:                                    ; preds = %cond.false.347, %cond.true.343
  %268 = load i32, i32* %translated, align 4
  %conv353 = trunc i32 %268 to i8
  %arrayidx354 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 0
  store i8 %conv353, i8* %arrayidx354, align 1
  br label %cond.end.404

cond.false.355:                                   ; preds = %cond.false.347, %cond.true.343
  br i1 true, label %cond.true.356, label %cond.false.360

cond.true.356:                                    ; preds = %cond.false.355
  %269 = load i32, i32* %translated, align 4
  %add357 = add i32 %269, 0
  %cmp358 = icmp ule i32 %add357, 2047
  br i1 %cmp358, label %cond.true.365, label %cond.false.374

cond.false.360:                                   ; preds = %cond.false.355
  %270 = load i32, i32* %translated, align 4
  %conv361 = sext i32 %270 to i64
  %add362 = add i64 %conv361, 0
  %cmp363 = icmp ule i64 %add362, 2047
  br i1 %cmp363, label %cond.true.365, label %cond.false.374

cond.true.365:                                    ; preds = %cond.false.360, %cond.true.356
  %271 = load i32, i32* %translated, align 4
  %shr366 = ashr i32 %271, 6
  %or367 = or i32 192, %shr366
  %conv368 = trunc i32 %or367 to i8
  %arrayidx369 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 0
  store i8 %conv368, i8* %arrayidx369, align 1
  %272 = load i32, i32* %translated, align 4
  %and370 = and i32 %272, 63
  %or371 = or i32 128, %and370
  %conv372 = trunc i32 %or371 to i8
  %arrayidx373 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 1
  store i8 %conv372, i8* %arrayidx373, align 1
  br label %cond.end.402

cond.false.374:                                   ; preds = %cond.false.360, %cond.true.356
  br i1 true, label %cond.true.375, label %cond.false.379

cond.true.375:                                    ; preds = %cond.false.374
  %273 = load i32, i32* %translated, align 4
  %add376 = add i32 %273, 0
  %cmp377 = icmp ule i32 %add376, 65535
  br i1 %cmp377, label %cond.true.384, label %cond.false.398

cond.false.379:                                   ; preds = %cond.false.374
  %274 = load i32, i32* %translated, align 4
  %conv380 = sext i32 %274 to i64
  %add381 = add i64 %conv380, 0
  %cmp382 = icmp ule i64 %add381, 65535
  br i1 %cmp382, label %cond.true.384, label %cond.false.398

cond.true.384:                                    ; preds = %cond.false.379, %cond.true.375
  %275 = load i32, i32* %translated, align 4
  %shr385 = ashr i32 %275, 12
  %or386 = or i32 224, %shr385
  %conv387 = trunc i32 %or386 to i8
  %arrayidx388 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 0
  store i8 %conv387, i8* %arrayidx388, align 1
  %276 = load i32, i32* %translated, align 4
  %shr389 = ashr i32 %276, 6
  %and390 = and i32 %shr389, 63
  %or391 = or i32 128, %and390
  %conv392 = trunc i32 %or391 to i8
  %arrayidx393 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 1
  store i8 %conv392, i8* %arrayidx393, align 1
  %277 = load i32, i32* %translated, align 4
  %and394 = and i32 %277, 63
  %or395 = or i32 128, %and394
  %conv396 = trunc i32 %or395 to i8
  %arrayidx397 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i64 2
  store i8 %conv396, i8* %arrayidx397, align 1
  br label %cond.end.400

cond.false.398:                                   ; preds = %cond.false.379, %cond.true.375
  %278 = load i32, i32* %translated, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i32 0
  %call399 = call i32 @char_string(i32 %278, i8* %arraydecay)
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.398, %cond.true.384
  %cond401 = phi i32 [ 3, %cond.true.384 ], [ %call399, %cond.false.398 ]
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.end.400, %cond.true.365
  %cond403 = phi i32 [ 2, %cond.true.365 ], [ %cond401, %cond.end.400 ]
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.end.402, %cond.true.352
  %cond405 = phi i32 [ 1, %cond.true.352 ], [ %cond403, %cond.end.402 ]
  store i32 %cond405, i32* %charlen, align 4
  %arraydecay406 = getelementptr inbounds [5 x i8], [5 x i8]* %str_base, i32 0, i32 0
  store i8* %arraydecay406, i8** %str, align 8
  br label %do.body.407

do.body.407:                                      ; preds = %cond.end.404
  %279 = load i64, i64* %inverse_trt.addr, align 8
  %call408 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp409 = icmp eq i64 %279, %call408
  br i1 %cmp409, label %if.else.427, label %if.then.411

if.then.411:                                      ; preds = %do.body.407
  %280 = load i64, i64* %inverse_trt.addr, align 8
  %281 = load i32, i32* %c, align 4
  %conv413 = sext i32 %281 to i64
  %shl414 = shl i64 %conv413, 2
  %add415 = add i64 %shl414, 2
  %call416 = call i64 @Faref(i64 %280, i64 %add415)
  store i64 %call416, i64* %temp412, align 8
  %282 = load i64, i64* %temp412, align 8
  %and417 = and i64 %282, 7
  %conv418 = trunc i64 %and417 to i32
  %and419 = and i32 %conv418, -5
  %cmp420 = icmp eq i32 %and419, 2
  br i1 %cmp420, label %if.then.422, label %if.else.425

if.then.422:                                      ; preds = %if.then.411
  %283 = load i64, i64* %temp412, align 8
  %shr423 = ashr i64 %283, 2
  %conv424 = trunc i64 %shr423 to i32
  store i32 %conv424, i32* %inverse, align 4
  br label %if.end.426

if.else.425:                                      ; preds = %if.then.411
  %284 = load i32, i32* %c, align 4
  store i32 %284, i32* %inverse, align 4
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.425, %if.then.422
  br label %if.end.428

if.else.427:                                      ; preds = %do.body.407
  %285 = load i32, i32* %c, align 4
  store i32 %285, i32* %inverse, align 4
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.427, %if.end.426
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.428
  %286 = load i32, i32* %c, align 4
  %287 = load i32, i32* %inverse, align 4
  %cmp430 = icmp ne i32 %286, %287
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.509

land.lhs.true.432:                                ; preds = %do.end.429
  %288 = load i8, i8* %boyer_moore_ok, align 1
  %tobool433 = trunc i8 %288 to i1
  br i1 %tobool433, label %if.then.435, label %if.end.509

if.then.435:                                      ; preds = %land.lhs.true.432
  store i32 -1, i32* %this_char_base, align 4
  br label %while.cond.436

while.cond.436:                                   ; preds = %do.end.507, %if.then.435
  %289 = load i8, i8* %boyer_moore_ok, align 1
  %tobool437 = trunc i8 %289 to i1
  br i1 %tobool437, label %while.body.438, label %while.end.508

while.body.438:                                   ; preds = %while.cond.436
  br i1 true, label %cond.true.439, label %cond.false.443

cond.true.439:                                    ; preds = %while.body.438
  %290 = load i32, i32* %inverse, align 4
  %add440 = add i32 %290, 0
  %cmp441 = icmp ult i32 %add440, 128
  br i1 %cmp441, label %if.then.448, label %if.else.454

cond.false.443:                                   ; preds = %while.body.438
  %291 = load i32, i32* %inverse, align 4
  %conv444 = sext i32 %291 to i64
  %add445 = add i64 %conv444, 0
  %cmp446 = icmp ult i64 %add445, 128
  br i1 %cmp446, label %if.then.448, label %if.else.454

if.then.448:                                      ; preds = %cond.false.443, %cond.true.439
  %292 = load i32, i32* %this_char_base, align 4
  %cmp449 = icmp sgt i32 %292, 0
  br i1 %cmp449, label %if.then.451, label %if.else.452

if.then.451:                                      ; preds = %if.then.448
  store i8 0, i8* %boyer_moore_ok, align 1
  br label %if.end.453

if.else.452:                                      ; preds = %if.then.448
  store i32 0, i32* %this_char_base, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.else.452, %if.then.451
  br label %if.end.480

if.else.454:                                      ; preds = %cond.false.443, %cond.true.439
  %293 = load i32, i32* %inverse, align 4
  %cmp455 = icmp sgt i32 %293, 4194175
  br i1 %cmp455, label %if.then.457, label %if.else.458

if.then.457:                                      ; preds = %if.else.454
  store i8 0, i8* %boyer_moore_ok, align 1
  br label %if.end.479

if.else.458:                                      ; preds = %if.else.454
  %294 = load i32, i32* %this_char_base, align 4
  %cmp459 = icmp slt i32 %294, 0
  br i1 %cmp459, label %if.then.461, label %if.else.472

if.then.461:                                      ; preds = %if.else.458
  %295 = load i32, i32* %inverse, align 4
  %and462 = and i32 %295, -64
  store i32 %and462, i32* %this_char_base, align 4
  %296 = load i32, i32* %char_base, align 4
  %cmp463 = icmp slt i32 %296, 0
  br i1 %cmp463, label %if.then.465, label %if.else.466

if.then.465:                                      ; preds = %if.then.461
  %297 = load i32, i32* %this_char_base, align 4
  store i32 %297, i32* %char_base, align 4
  br label %if.end.471

if.else.466:                                      ; preds = %if.then.461
  %298 = load i32, i32* %this_char_base, align 4
  %299 = load i32, i32* %char_base, align 4
  %cmp467 = icmp ne i32 %298, %299
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %if.else.466
  store i8 0, i8* %boyer_moore_ok, align 1
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.469, %if.else.466
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.then.465
  br label %if.end.478

if.else.472:                                      ; preds = %if.else.458
  %300 = load i32, i32* %inverse, align 4
  %and473 = and i32 %300, -64
  %301 = load i32, i32* %this_char_base, align 4
  %cmp474 = icmp ne i32 %and473, %301
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %if.else.472
  store i8 0, i8* %boyer_moore_ok, align 1
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %if.else.472
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %if.end.471
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %if.then.457
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.end.453
  %302 = load i32, i32* %c, align 4
  %303 = load i32, i32* %inverse, align 4
  %cmp481 = icmp eq i32 %302, %303
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %if.end.480
  br label %while.end.508

if.end.484:                                       ; preds = %if.end.480
  br label %do.body.485

do.body.485:                                      ; preds = %if.end.484
  %304 = load i64, i64* %inverse_trt.addr, align 8
  %call486 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp487 = icmp eq i64 %304, %call486
  br i1 %cmp487, label %if.else.505, label %if.then.489

if.then.489:                                      ; preds = %do.body.485
  %305 = load i64, i64* %inverse_trt.addr, align 8
  %306 = load i32, i32* %inverse, align 4
  %conv491 = sext i32 %306 to i64
  %shl492 = shl i64 %conv491, 2
  %add493 = add i64 %shl492, 2
  %call494 = call i64 @Faref(i64 %305, i64 %add493)
  store i64 %call494, i64* %temp490, align 8
  %307 = load i64, i64* %temp490, align 8
  %and495 = and i64 %307, 7
  %conv496 = trunc i64 %and495 to i32
  %and497 = and i32 %conv496, -5
  %cmp498 = icmp eq i32 %and497, 2
  br i1 %cmp498, label %if.then.500, label %if.else.503

if.then.500:                                      ; preds = %if.then.489
  %308 = load i64, i64* %temp490, align 8
  %shr501 = ashr i64 %308, 2
  %conv502 = trunc i64 %shr501 to i32
  store i32 %conv502, i32* %inverse, align 4
  br label %if.end.504

if.else.503:                                      ; preds = %if.then.489
  %309 = load i32, i32* %inverse, align 4
  store i32 %309, i32* %inverse, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.else.503, %if.then.500
  br label %if.end.506

if.else.505:                                      ; preds = %do.body.485
  %310 = load i32, i32* %inverse, align 4
  store i32 %310, i32* %inverse, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.505, %if.end.504
  br label %do.end.507

do.end.507:                                       ; preds = %if.end.506
  br label %while.cond.436

while.end.508:                                    ; preds = %if.then.483, %while.cond.436
  br label %if.end.509

if.end.509:                                       ; preds = %while.end.508, %land.lhs.true.432, %do.end.429
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.320
  %311 = load i8*, i8** %pat, align 8
  %312 = load i8*, i8** %str, align 8
  %313 = load i32, i32* %charlen, align 4
  %conv511 = sext i32 %313 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %311, i8* %312, i64 %conv511, i32 1, i1 false)
  %314 = load i32, i32* %charlen, align 4
  %315 = load i8*, i8** %pat, align 8
  %idx.ext = sext i32 %314 to i64
  %add.ptr512 = getelementptr inbounds i8, i8* %315, i64 %idx.ext
  store i8* %add.ptr512, i8** %pat, align 8
  %316 = load i32, i32* %in_charlen, align 4
  %317 = load i8*, i8** %base_pat, align 8
  %idx.ext513 = sext i32 %316 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %317, i64 %idx.ext513
  store i8* %add.ptr514, i8** %base_pat, align 8
  %318 = load i32, i32* %in_charlen, align 4
  %conv515 = sext i32 %318 to i64
  %319 = load i64, i64* %len_byte, align 8
  %sub516 = sub nsw i64 %319, %conv515
  store i64 %sub516, i64* %len_byte, align 8
  br label %while.cond.251

while.end.517:                                    ; preds = %while.cond.251
  %320 = load i32, i32* %char_base, align 4
  %cmp518 = icmp slt i32 %320, 0
  br i1 %cmp518, label %if.then.520, label %if.end.521

if.then.520:                                      ; preds = %while.end.517
  store i32 0, i32* %char_base, align 4
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.520, %while.end.517
  br label %if.end.626

if.else.522:                                      ; preds = %do.end.248
  store i32 0, i32* %char_base, align 4
  br label %while.cond.523

while.cond.523:                                   ; preds = %while.end.624, %if.else.522
  %321 = load i64, i64* %len, align 8
  %dec524 = add nsw i64 %321, -1
  store i64 %dec524, i64* %len, align 8
  %cmp525 = icmp sge i64 %dec524, 0
  br i1 %cmp525, label %while.body.527, label %while.end.625

while.body.527:                                   ; preds = %while.cond.523
  %322 = load i32, i32* %RE.addr, align 4
  %tobool531 = icmp ne i32 %322, 0
  br i1 %tobool531, label %land.lhs.true.532, label %if.end.540

land.lhs.true.532:                                ; preds = %while.body.527
  %323 = load i8*, i8** %base_pat, align 8
  %324 = load i8, i8* %323, align 1
  %conv533 = zext i8 %324 to i32
  %cmp534 = icmp eq i32 %conv533, 92
  br i1 %cmp534, label %if.then.536, label %if.end.540

if.then.536:                                      ; preds = %land.lhs.true.532
  %325 = load i64, i64* %len, align 8
  %dec537 = add nsw i64 %325, -1
  store i64 %dec537, i64* %len, align 8
  %326 = load i64, i64* %raw_pattern_size, align 8
  %dec538 = add nsw i64 %326, -1
  store i64 %dec538, i64* %raw_pattern_size, align 8
  %327 = load i8*, i8** %base_pat, align 8
  %incdec.ptr539 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %incdec.ptr539, i8** %base_pat, align 8
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.536, %land.lhs.true.532, %while.body.527
  %328 = load i8*, i8** %base_pat, align 8
  %incdec.ptr541 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr541, i8** %base_pat, align 8
  %329 = load i8, i8* %328, align 1
  %conv542 = zext i8 %329 to i32
  store i32 %conv542, i32* %c528, align 4
  br label %do.body.543

do.body.543:                                      ; preds = %if.end.540
  %330 = load i64, i64* %trt.addr, align 8
  %call544 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp545 = icmp eq i64 %330, %call544
  br i1 %cmp545, label %if.else.563, label %if.then.547

if.then.547:                                      ; preds = %do.body.543
  %331 = load i64, i64* %trt.addr, align 8
  %332 = load i32, i32* %c528, align 4
  %conv549 = sext i32 %332 to i64
  %shl550 = shl i64 %conv549, 2
  %add551 = add i64 %shl550, 2
  %call552 = call i64 @Faref(i64 %331, i64 %add551)
  store i64 %call552, i64* %temp548, align 8
  %333 = load i64, i64* %temp548, align 8
  %and553 = and i64 %333, 7
  %conv554 = trunc i64 %and553 to i32
  %and555 = and i32 %conv554, -5
  %cmp556 = icmp eq i32 %and555, 2
  br i1 %cmp556, label %if.then.558, label %if.else.561

if.then.558:                                      ; preds = %if.then.547
  %334 = load i64, i64* %temp548, align 8
  %shr559 = ashr i64 %334, 2
  %conv560 = trunc i64 %shr559 to i32
  store i32 %conv560, i32* %translated529, align 4
  br label %if.end.562

if.else.561:                                      ; preds = %if.then.547
  %335 = load i32, i32* %c528, align 4
  store i32 %335, i32* %translated529, align 4
  br label %if.end.562

if.end.562:                                       ; preds = %if.else.561, %if.then.558
  br label %if.end.564

if.else.563:                                      ; preds = %do.body.543
  %336 = load i32, i32* %c528, align 4
  store i32 %336, i32* %translated529, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.else.563, %if.end.562
  br label %do.end.565

do.end.565:                                       ; preds = %if.end.564
  %337 = load i32, i32* %translated529, align 4
  %conv566 = trunc i32 %337 to i8
  %338 = load i8*, i8** %pat, align 8
  %incdec.ptr567 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %incdec.ptr567, i8** %pat, align 8
  store i8 %conv566, i8* %338, align 1
  br label %do.body.568

do.body.568:                                      ; preds = %do.end.565
  %339 = load i64, i64* %inverse_trt.addr, align 8
  %call569 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp570 = icmp eq i64 %339, %call569
  br i1 %cmp570, label %if.else.588, label %if.then.572

if.then.572:                                      ; preds = %do.body.568
  %340 = load i64, i64* %inverse_trt.addr, align 8
  %341 = load i32, i32* %c528, align 4
  %conv574 = sext i32 %341 to i64
  %shl575 = shl i64 %conv574, 2
  %add576 = add i64 %shl575, 2
  %call577 = call i64 @Faref(i64 %340, i64 %add576)
  store i64 %call577, i64* %temp573, align 8
  %342 = load i64, i64* %temp573, align 8
  %and578 = and i64 %342, 7
  %conv579 = trunc i64 %and578 to i32
  %and580 = and i32 %conv579, -5
  %cmp581 = icmp eq i32 %and580, 2
  br i1 %cmp581, label %if.then.583, label %if.else.586

if.then.583:                                      ; preds = %if.then.572
  %343 = load i64, i64* %temp573, align 8
  %shr584 = ashr i64 %343, 2
  %conv585 = trunc i64 %shr584 to i32
  store i32 %conv585, i32* %inverse530, align 4
  br label %if.end.587

if.else.586:                                      ; preds = %if.then.572
  %344 = load i32, i32* %c528, align 4
  store i32 %344, i32* %inverse530, align 4
  br label %if.end.587

if.end.587:                                       ; preds = %if.else.586, %if.then.583
  br label %if.end.589

if.else.588:                                      ; preds = %do.body.568
  %345 = load i32, i32* %c528, align 4
  store i32 %345, i32* %inverse530, align 4
  br label %if.end.589

if.end.589:                                       ; preds = %if.else.588, %if.end.587
  br label %do.end.590

do.end.590:                                       ; preds = %if.end.589
  br label %while.body.592

while.body.592:                                   ; preds = %do.end.590, %do.end.623
  %346 = load i32, i32* %inverse530, align 4
  %cmp593 = icmp sge i32 %346, 128
  br i1 %cmp593, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %while.body.592
  store i8 0, i8* %boyer_moore_ok, align 1
  br label %while.end.624

if.end.596:                                       ; preds = %while.body.592
  %347 = load i32, i32* %c528, align 4
  %348 = load i32, i32* %inverse530, align 4
  %cmp597 = icmp eq i32 %347, %348
  br i1 %cmp597, label %if.then.599, label %if.end.600

if.then.599:                                      ; preds = %if.end.596
  br label %while.end.624

if.end.600:                                       ; preds = %if.end.596
  br label %do.body.601

do.body.601:                                      ; preds = %if.end.600
  %349 = load i64, i64* %inverse_trt.addr, align 8
  %call602 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp603 = icmp eq i64 %349, %call602
  br i1 %cmp603, label %if.else.621, label %if.then.605

if.then.605:                                      ; preds = %do.body.601
  %350 = load i64, i64* %inverse_trt.addr, align 8
  %351 = load i32, i32* %inverse530, align 4
  %conv607 = sext i32 %351 to i64
  %shl608 = shl i64 %conv607, 2
  %add609 = add i64 %shl608, 2
  %call610 = call i64 @Faref(i64 %350, i64 %add609)
  store i64 %call610, i64* %temp606, align 8
  %352 = load i64, i64* %temp606, align 8
  %and611 = and i64 %352, 7
  %conv612 = trunc i64 %and611 to i32
  %and613 = and i32 %conv612, -5
  %cmp614 = icmp eq i32 %and613, 2
  br i1 %cmp614, label %if.then.616, label %if.else.619

if.then.616:                                      ; preds = %if.then.605
  %353 = load i64, i64* %temp606, align 8
  %shr617 = ashr i64 %353, 2
  %conv618 = trunc i64 %shr617 to i32
  store i32 %conv618, i32* %inverse530, align 4
  br label %if.end.620

if.else.619:                                      ; preds = %if.then.605
  %354 = load i32, i32* %inverse530, align 4
  store i32 %354, i32* %inverse530, align 4
  br label %if.end.620

if.end.620:                                       ; preds = %if.else.619, %if.then.616
  br label %if.end.622

if.else.621:                                      ; preds = %do.body.601
  %355 = load i32, i32* %inverse530, align 4
  store i32 %355, i32* %inverse530, align 4
  br label %if.end.622

if.end.622:                                       ; preds = %if.else.621, %if.end.620
  br label %do.end.623

do.end.623:                                       ; preds = %if.end.622
  br label %while.body.592

while.end.624:                                    ; preds = %if.then.599, %if.then.595
  br label %while.cond.523

while.end.625:                                    ; preds = %while.cond.523
  br label %if.end.626

if.end.626:                                       ; preds = %while.end.625, %if.end.521
  %356 = load i8*, i8** %pat, align 8
  %357 = load i8*, i8** %patbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %356 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %357 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len_byte, align 8
  %358 = load i8*, i8** %patbuf, align 8
  store i8* %358, i8** %base_pat, align 8
  store i8* %358, i8** %pat, align 8
  %359 = load i8, i8* %boyer_moore_ok, align 1
  %tobool627 = trunc i8 %359 to i1
  br i1 %tobool627, label %cond.true.629, label %cond.false.631

cond.true.629:                                    ; preds = %if.end.626
  %360 = load i64, i64* %n.addr, align 8
  %361 = load i8*, i8** %pat, align 8
  %362 = load i64, i64* %len_byte, align 8
  %363 = load i64, i64* %trt.addr, align 8
  %364 = load i64, i64* %inverse_trt.addr, align 8
  %365 = load i64, i64* %pos_byte.addr, align 8
  %366 = load i64, i64* %lim_byte.addr, align 8
  %367 = load i32, i32* %char_base, align 4
  %call630 = call i64 @boyer_moore(i64 %360, i8* %361, i64 %362, i64 %363, i64 %364, i64 %365, i64 %366, i32 %367)
  br label %cond.end.633

cond.false.631:                                   ; preds = %if.end.626
  %368 = load i64, i64* %n.addr, align 8
  %369 = load i8*, i8** %pat, align 8
  %370 = load i64, i64* %raw_pattern_size, align 8
  %371 = load i64, i64* %len_byte, align 8
  %372 = load i64, i64* %trt.addr, align 8
  %373 = load i64, i64* %pos.addr, align 8
  %374 = load i64, i64* %pos_byte.addr, align 8
  %375 = load i64, i64* %lim.addr, align 8
  %376 = load i64, i64* %lim_byte.addr, align 8
  %call632 = call i64 @simple_search(i64 %368, i8* %369, i64 %370, i64 %371, i64 %372, i64 %373, i64 %374, i64 %375, i64 %376)
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.631, %cond.true.629
  %cond634 = phi i64 [ %call630, %cond.true.629 ], [ %call632, %cond.false.631 ]
  store i64 %cond634, i64* %result, align 8
  br label %do.body.635

do.body.635:                                      ; preds = %cond.end.633
  %377 = load i8, i8* %sa_must_free, align 1
  %tobool636 = trunc i8 %377 to i1
  br i1 %tobool636, label %if.then.637, label %if.end.640

if.then.637:                                      ; preds = %do.body.635
  store i8 0, i8* %sa_must_free, align 1
  %378 = load i64, i64* %sa_count, align 8
  %call638 = call i64 @builtin_lisp_symbol(i32 0)
  %call639 = call i64 @unbind_to(i64 %378, i64 %call638)
  br label %if.end.640

if.end.640:                                       ; preds = %if.then.637, %do.body.635
  br label %do.end.641

do.end.641:                                       ; preds = %if.end.640
  %379 = load i64, i64* %result, align 8
  store i64 %379, i64* %retval
  br label %return

return:                                           ; preds = %do.end.641, %while.end.178, %if.else.175, %if.else.109, %if.then.3
  %380 = load i64, i64* %retval
  ret i64 %380
}

declare void @set_point_both(i64, i64) #1

declare void @set_point(i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_search_regs(i64 %beg_byte, i64 %nbytes) #0 {
entry:
  %beg_byte.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %beg_byte, i64* %beg_byte.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %call3 = call noalias i8* @xmalloc(i64 16)
  %2 = bitcast i8* %call3 to i64*
  store i64* %2, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %call4 = call noalias i8* @xmalloc(i64 16)
  %3 = bitcast i8* %call4 to i64*
  store i64* %3, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %4 = load i64, i64* %i, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 0), align 4
  %conv = zext i32 %5 to i64
  %cmp6 = icmp slt i64 %4, %conv
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %6
  store i64 -1, i64* %arrayidx, align 8
  %8 = load i64, i64* %i, align 8
  %9 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %9, i64 %8
  store i64 -1, i64* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %12 = load i64, i64* %beg_byte.addr, align 8
  %call9 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %11, i64 %12)
  %13 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %call9, i64* %arrayidx10, align 8
  %14 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %15 = load i64, i64* %beg_byte.addr, align 8
  %16 = load i64, i64* %nbytes.addr, align 8
  %add = add nsw i64 %15, %16
  %call11 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %14, i64 %add)
  %17 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %call11, i64* %arrayidx12, align 8
  %18 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %19 = bitcast %struct.buffer* %18 to i8*
  %call13 = call i64 @make_lisp_ptr(i8* %19, i32 5)
  store i64 %call13, i64* @last_thing_searched, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @trivial_regexp_p(i64 %regexp) #0 {
entry:
  %retval = alloca i1, align 1
  %regexp.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  store i64 %regexp, i64* %regexp.addr, align 8
  %0 = load i64, i64* %regexp.addr, align 8
  %call = call i64 @SBYTES(i64 %0)
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %regexp.addr, align 8
  %call1 = call i8* @SDATA(i64 %1)
  store i8* %call1, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.9, %entry
  %2 = load i64, i64* %len, align 8
  %dec = add nsw i64 %2, -1
  store i64 %dec, i64* %len, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.epilog.9 [
    i32 46, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 63, label %sw.bb
    i32 91, label %sw.bb
    i32 94, label %sw.bb
    i32 36, label %sw.bb
    i32 92, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  store i1 false, i1* %retval
  br label %return

sw.bb.2:                                          ; preds = %while.body
  %5 = load i64, i64* %len, align 8
  %dec3 = add nsw i64 %5, -1
  store i64 %dec3, i64* %len, align 8
  %cmp4 = icmp slt i64 %dec3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %6 = load i8*, i8** %s, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = zext i8 %7 to i32
  switch i32 %conv7, label %sw.epilog [
    i32 124, label %sw.bb.8
    i32 40, label %sw.bb.8
    i32 41, label %sw.bb.8
    i32 96, label %sw.bb.8
    i32 39, label %sw.bb.8
    i32 98, label %sw.bb.8
    i32 66, label %sw.bb.8
    i32 60, label %sw.bb.8
    i32 62, label %sw.bb.8
    i32 119, label %sw.bb.8
    i32 87, label %sw.bb.8
    i32 115, label %sw.bb.8
    i32 83, label %sw.bb.8
    i32 61, label %sw.bb.8
    i32 123, label %sw.bb.8
    i32 125, label %sw.bb.8
    i32 95, label %sw.bb.8
    i32 99, label %sw.bb.8
    i32 67, label %sw.bb.8
    i32 49, label %sw.bb.8
    i32 50, label %sw.bb.8
    i32 51, label %sw.bb.8
    i32 52, label %sw.bb.8
    i32 53, label %sw.bb.8
    i32 54, label %sw.bb.8
    i32 55, label %sw.bb.8
    i32 56, label %sw.bb.8
    i32 57, label %sw.bb.8
  ]

sw.bb.8:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i1 false, i1* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %sw.epilog, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.8, %if.then, %sw.bb
  %8 = load i1, i1* %retval
  ret i1 %8
}

declare i64 @re_search_2(%struct.re_pattern_buffer*, i8*, i64, i8*, i64, i64, i64, %struct.re_registers*, i64) #1

declare i64 @count_size_as_multibyte(i8*, i64) #1

declare i8* @record_xmalloc(i64) #1

declare i64 @copy_text(i8*, i8*, i64, i1 zeroext, i1 zeroext) #1

declare i64 @Faref(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @boyer_moore(i64 %n, i8* %base_pat, i64 %len_byte, i64 %trt, i64 %inverse_trt, i64 %pos_byte, i64 %lim_byte, i32 %char_base) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %base_pat.addr = alloca i8*, align 8
  %len_byte.addr = alloca i64, align 8
  %trt.addr = alloca i64, align 8
  %inverse_trt.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %lim_byte.addr = alloca i64, align 8
  %char_base.addr = alloca i32, align 4
  %direction = alloca i32, align 4
  %dirlen = alloca i64, align 8
  %limit = alloca i64, align 8
  %stride_for_teases = alloca i32, align 4
  %BM_tab = alloca [256 x i32], align 16
  %cursor = alloca i8*, align 8
  %p_limit = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %pat = alloca i8*, align 8
  %pat_end = alloca i8*, align 8
  %multibyte = alloca i8, align 1
  %simple_translate = alloca [256 x i8], align 16
  %translate_prev_byte1 = alloca i32, align 4
  %translate_prev_byte2 = alloca i32, align 4
  %translate_prev_byte3 = alloca i32, align 4
  %str = alloca [5 x i8], align 1
  %cblen = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %ch = alloca i32, align 4
  %charstart = alloca i8*, align 8
  %starting_ch = alloca i32, align 4
  %starting_j = alloca i32, align 4
  %temp = alloca i64, align 8
  %tail_end = alloca i64, align 8
  %tail_end_ptr = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %ch503 = alloca i32, align 4
  %position = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %ch717 = alloca i32, align 4
  %ch755 = alloca i32, align 4
  %ptr756 = alloca i8*, align 8
  %position836 = alloca i64, align 8
  %start837 = alloca i64, align 8
  %end838 = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %base_pat, i8** %base_pat.addr, align 8
  store i64 %len_byte, i64* %len_byte.addr, align 8
  store i64 %trt, i64* %trt.addr, align 8
  store i64 %inverse_trt, i64* %inverse_trt.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %lim_byte, i64* %lim_byte.addr, align 8
  store i32 %char_base, i32* %char_base.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  %cond = select i1 %cmp, i32 1, i32 -1
  store i32 %cond, i32* %direction, align 4
  store i32 0, i32* %stride_for_teases, align 4
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 39
  %2 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp1 = icmp eq i64 %2, %call
  %lnot = xor i1 %cmp1, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  store i32 0, i32* %translate_prev_byte1, align 4
  store i32 0, i32* %translate_prev_byte2, align 4
  store i32 0, i32* %translate_prev_byte3, align 4
  %3 = load i64, i64* %len_byte.addr, align 8
  %4 = load i32, i32* %direction, align 4
  %conv = sext i32 %4 to i64
  %mul = mul nsw i64 %3, %conv
  store i64 %mul, i64* %dirlen, align 8
  %5 = load i8*, i8** %base_pat.addr, align 8
  %6 = load i64, i64* %len_byte.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  store i8* %add.ptr, i8** %pat_end, align 8
  %7 = load i32, i32* %direction, align 4
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %pat_end, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 -1
  store i8* %add.ptr4, i8** %base_pat.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %i, align 8
  %cmp5 = icmp slt i64 %9, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %dirlen, align 8
  %conv7 = trunc i64 %10 to i32
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %11
  store i32 %conv7, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %for.end
  %13 = load i64, i64* %i, align 8
  %cmp9 = icmp slt i64 %13, 256
  br i1 %cmp9, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.8
  %14 = load i64, i64* %i, align 8
  %conv12 = trunc i64 %14 to i8
  %15 = load i64, i64* %i, align 8
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* %simple_translate, i32 0, i64 %15
  store i8 %conv12, i8* %arrayidx13, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %16 = load i64, i64* %i, align 8
  %inc15 = add nsw i64 %16, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  %17 = load i32, i32* %char_base.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.17, label %if.end.92

if.then.17:                                       ; preds = %for.end.16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %18 = load i32, i32* %char_base.addr, align 4
  %add = add i32 %18, 0
  %cmp18 = icmp ule i32 %add, 127
  br i1 %cmp18, label %cond.true.24, label %cond.false.27

cond.false:                                       ; preds = %if.then.17
  %19 = load i32, i32* %char_base.addr, align 4
  %conv20 = sext i32 %19 to i64
  %add21 = add i64 %conv20, 0
  %cmp22 = icmp ule i64 %add21, 127
  br i1 %cmp22, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.false, %cond.true
  %20 = load i32, i32* %char_base.addr, align 4
  %conv25 = trunc i32 %20 to i8
  %arrayidx26 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv25, i8* %arrayidx26, align 1
  br label %cond.end.72

cond.false.27:                                    ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %cond.false.27
  %21 = load i32, i32* %char_base.addr, align 4
  %add29 = add i32 %21, 0
  %cmp30 = icmp ule i32 %add29, 2047
  br i1 %cmp30, label %cond.true.37, label %cond.false.43

cond.false.32:                                    ; preds = %cond.false.27
  %22 = load i32, i32* %char_base.addr, align 4
  %conv33 = sext i32 %22 to i64
  %add34 = add i64 %conv33, 0
  %cmp35 = icmp ule i64 %add34, 2047
  br i1 %cmp35, label %cond.true.37, label %cond.false.43

cond.true.37:                                     ; preds = %cond.false.32, %cond.true.28
  %23 = load i32, i32* %char_base.addr, align 4
  %shr = ashr i32 %23, 6
  %or = or i32 192, %shr
  %conv38 = trunc i32 %or to i8
  %arrayidx39 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv38, i8* %arrayidx39, align 1
  %24 = load i32, i32* %char_base.addr, align 4
  %and = and i32 %24, 63
  %or40 = or i32 128, %and
  %conv41 = trunc i32 %or40 to i8
  %arrayidx42 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv41, i8* %arrayidx42, align 1
  br label %cond.end.70

cond.false.43:                                    ; preds = %cond.false.32, %cond.true.28
  br i1 true, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.false.43
  %25 = load i32, i32* %char_base.addr, align 4
  %add45 = add i32 %25, 0
  %cmp46 = icmp ule i32 %add45, 65535
  br i1 %cmp46, label %cond.true.53, label %cond.false.67

cond.false.48:                                    ; preds = %cond.false.43
  %26 = load i32, i32* %char_base.addr, align 4
  %conv49 = sext i32 %26 to i64
  %add50 = add i64 %conv49, 0
  %cmp51 = icmp ule i64 %add50, 65535
  br i1 %cmp51, label %cond.true.53, label %cond.false.67

cond.true.53:                                     ; preds = %cond.false.48, %cond.true.44
  %27 = load i32, i32* %char_base.addr, align 4
  %shr54 = ashr i32 %27, 12
  %or55 = or i32 224, %shr54
  %conv56 = trunc i32 %or55 to i8
  %arrayidx57 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 0
  store i8 %conv56, i8* %arrayidx57, align 1
  %28 = load i32, i32* %char_base.addr, align 4
  %shr58 = ashr i32 %28, 6
  %and59 = and i32 %shr58, 63
  %or60 = or i32 128, %and59
  %conv61 = trunc i32 %or60 to i8
  %arrayidx62 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 1
  store i8 %conv61, i8* %arrayidx62, align 1
  %29 = load i32, i32* %char_base.addr, align 4
  %and63 = and i32 %29, 63
  %or64 = or i32 128, %and63
  %conv65 = trunc i32 %or64 to i8
  %arrayidx66 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 2
  store i8 %conv65, i8* %arrayidx66, align 1
  br label %cond.end

cond.false.67:                                    ; preds = %cond.false.48, %cond.true.44
  %30 = load i32, i32* %char_base.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i32 0
  %call68 = call i32 @char_string(i32 %30, i8* %arraydecay)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.67, %cond.true.53
  %cond69 = phi i32 [ 3, %cond.true.53 ], [ %call68, %cond.false.67 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end, %cond.true.37
  %cond71 = phi i32 [ 2, %cond.true.37 ], [ %cond69, %cond.end ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.true.24
  %cond73 = phi i32 [ 1, %cond.true.24 ], [ %cond71, %cond.end.70 ]
  store i32 %cond73, i32* %cblen, align 4
  %31 = load i32, i32* %cblen, align 4
  %sub = sub nsw i32 %31, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx74 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 %idxprom
  %32 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %32 to i32
  store i32 %conv75, i32* %translate_prev_byte1, align 4
  %33 = load i32, i32* %cblen, align 4
  %cmp76 = icmp sgt i32 %33, 2
  br i1 %cmp76, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %cond.end.72
  %34 = load i32, i32* %cblen, align 4
  %sub79 = sub nsw i32 %34, 3
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 %idxprom80
  %35 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %35 to i32
  store i32 %conv82, i32* %translate_prev_byte2, align 4
  %36 = load i32, i32* %cblen, align 4
  %cmp83 = icmp sgt i32 %36, 3
  br i1 %cmp83, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %if.then.78
  %37 = load i32, i32* %cblen, align 4
  %sub86 = sub nsw i32 %37, 4
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds [5 x i8], [5 x i8]* %str, i32 0, i64 %idxprom87
  %38 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %38 to i32
  store i32 %conv89, i32* %translate_prev_byte3, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.85, %if.then.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %cond.end.72
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.end.16
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.274, %if.end.92
  %39 = load i64, i64* %i, align 8
  %40 = load i64, i64* %dirlen, align 8
  %cmp93 = icmp ne i64 %39, %40
  br i1 %cmp93, label %while.body, label %while.end.275

while.body:                                       ; preds = %while.cond
  %41 = load i8*, i8** %base_pat.addr, align 8
  %42 = load i64, i64* %i, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %add.ptr95, i8** %ptr, align 8
  %43 = load i32, i32* %direction, align 4
  %conv96 = sext i32 %43 to i64
  %44 = load i64, i64* %i, align 8
  %add97 = add nsw i64 %44, %conv96
  store i64 %add97, i64* %i, align 8
  %45 = load i64, i64* %trt.addr, align 8
  %call98 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp99 = icmp eq i64 %45, %call98
  br i1 %cmp99, label %if.else.262, label %if.then.101

if.then.101:                                      ; preds = %while.body
  store i32 -1, i32* %ch, align 4
  br i1 true, label %cond.true.102, label %cond.false.107

cond.true.102:                                    ; preds = %if.then.101
  %46 = load i8*, i8** %ptr, align 8
  %47 = load i8, i8* %46, align 1
  %conv103 = zext i8 %47 to i32
  %add104 = add i32 %conv103, 0
  %cmp105 = icmp ult i32 %add104, 128
  br i1 %cmp105, label %if.then.113, label %lor.lhs.false

cond.false.107:                                   ; preds = %if.then.101
  %48 = load i8*, i8** %ptr, align 8
  %49 = load i8, i8* %48, align 1
  %conv108 = zext i8 %49 to i64
  %add109 = add i64 %conv108, 0
  %cmp110 = icmp ult i64 %add109, 128
  br i1 %cmp110, label %if.then.113, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.107, %cond.true.102
  %50 = load i8, i8* %multibyte, align 1
  %tobool112 = trunc i8 %50 to i1
  br i1 %tobool112, label %if.else, label %if.then.113

if.then.113:                                      ; preds = %lor.lhs.false, %cond.false.107, %cond.true.102
  %51 = load i8*, i8** %ptr, align 8
  %52 = load i8, i8* %51, align 1
  %conv114 = zext i8 %52 to i32
  store i32 %conv114, i32* %ch, align 4
  br label %if.end.192

if.else:                                          ; preds = %lor.lhs.false
  %53 = load i32, i32* %char_base.addr, align 4
  %tobool115 = icmp ne i32 %53, 0
  br i1 %tobool115, label %land.lhs.true, label %if.end.191

land.lhs.true:                                    ; preds = %if.else
  %54 = load i8*, i8** %pat_end, align 8
  %55 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp116 = icmp eq i64 %sub.ptr.sub, 1
  br i1 %cmp116, label %if.then.124, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true
  %56 = load i8*, i8** %ptr, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %57 to i32
  %and121 = and i32 %conv120, 192
  %cmp122 = icmp ne i32 %and121, 128
  br i1 %cmp122, label %if.then.124, label %if.end.191

if.then.124:                                      ; preds = %lor.lhs.false.118, %land.lhs.true
  %58 = load i8*, i8** %ptr, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8* %add.ptr125, i8** %charstart, align 8
  br label %while.cond.126

while.cond.126:                                   ; preds = %while.body.132, %if.then.124
  %59 = load i8*, i8** %charstart, align 8
  %60 = load i8, i8* %59, align 1
  %conv127 = zext i8 %60 to i32
  %and128 = and i32 %conv127, 192
  %cmp129 = icmp ne i32 %and128, 128
  %lnot131 = xor i1 %cmp129, true
  br i1 %lnot131, label %while.body.132, label %while.end

while.body.132:                                   ; preds = %while.cond.126
  %61 = load i8*, i8** %charstart, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr, i8** %charstart, align 8
  br label %while.cond.126

while.end:                                        ; preds = %while.cond.126
  %62 = load i8*, i8** %charstart, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %63 to i32
  %and135 = and i32 %conv134, 128
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %cond.false.140, label %cond.true.137

cond.true.137:                                    ; preds = %while.end
  %64 = load i8*, i8** %charstart, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %65 to i32
  br label %cond.end.184

cond.false.140:                                   ; preds = %while.end
  %66 = load i8*, i8** %charstart, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %67 to i32
  %and143 = and i32 %conv142, 32
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %cond.false.159, label %cond.true.145

cond.true.145:                                    ; preds = %cond.false.140
  %68 = load i8*, i8** %charstart, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %69 to i32
  %and148 = and i32 %conv147, 31
  %shl = shl i32 %and148, 6
  %70 = load i8*, i8** %charstart, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %71 to i32
  %and151 = and i32 %conv150, 63
  %or152 = or i32 %shl, %and151
  %72 = load i8*, i8** %charstart, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %73 to i32
  %cmp155 = icmp slt i32 %conv154, 194
  %cond157 = select i1 %cmp155, i32 4194176, i32 0
  %add158 = add nsw i32 %or152, %cond157
  br label %cond.end.182

cond.false.159:                                   ; preds = %cond.false.140
  %74 = load i8*, i8** %charstart, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %75 to i32
  %and162 = and i32 %conv161, 16
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %cond.false.178, label %cond.true.164

cond.true.164:                                    ; preds = %cond.false.159
  %76 = load i8*, i8** %charstart, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %77 to i32
  %and167 = and i32 %conv166, 15
  %shl168 = shl i32 %and167, 12
  %78 = load i8*, i8** %charstart, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %78, i64 1
  %79 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %79 to i32
  %and171 = and i32 %conv170, 63
  %shl172 = shl i32 %and171, 6
  %or173 = or i32 %shl168, %shl172
  %80 = load i8*, i8** %charstart, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %80, i64 2
  %81 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %81 to i32
  %and176 = and i32 %conv175, 63
  %or177 = or i32 %or173, %and176
  br label %cond.end.180

cond.false.178:                                   ; preds = %cond.false.159
  %82 = load i8*, i8** %charstart, align 8
  %call179 = call i32 @string_char(i8* %82, i8** null, i32* null)
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.178, %cond.true.164
  %cond181 = phi i32 [ %or177, %cond.true.164 ], [ %call179, %cond.false.178 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.145
  %cond183 = phi i32 [ %add158, %cond.true.145 ], [ %cond181, %cond.end.180 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.182, %cond.true.137
  %cond185 = phi i32 [ %conv139, %cond.true.137 ], [ %cond183, %cond.end.182 ]
  store i32 %cond185, i32* %ch, align 4
  %83 = load i32, i32* %char_base.addr, align 4
  %84 = load i32, i32* %ch, align 4
  %and186 = and i32 %84, -64
  %cmp187 = icmp ne i32 %83, %and186
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %cond.end.184
  store i32 -1, i32* %ch, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %cond.end.184
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %lor.lhs.false.118, %if.else
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.113
  %85 = load i32, i32* %ch, align 4
  %cmp193 = icmp sge i32 %85, 128
  br i1 %cmp193, label %land.lhs.true.195, label %if.else.201

land.lhs.true.195:                                ; preds = %if.end.192
  %86 = load i8, i8* %multibyte, align 1
  %tobool196 = trunc i8 %86 to i1
  br i1 %tobool196, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %land.lhs.true.195
  %87 = load i32, i32* %ch, align 4
  %and199 = and i32 %87, 63
  %or200 = or i32 %and199, 128
  store i32 %or200, i32* %j, align 4
  br label %if.end.203

if.else.201:                                      ; preds = %land.lhs.true.195, %if.end.192
  %88 = load i8*, i8** %ptr, align 8
  %89 = load i8, i8* %88, align 1
  %conv202 = zext i8 %89 to i32
  store i32 %conv202, i32* %j, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.201, %if.then.198
  %90 = load i64, i64* %i, align 8
  %91 = load i64, i64* %dirlen, align 8
  %cmp204 = icmp eq i64 %90, %91
  br i1 %cmp204, label %if.then.206, label %if.end.209

if.then.206:                                      ; preds = %if.end.203
  %92 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %92 to i64
  %arrayidx208 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom207
  %93 = load i32, i32* %arrayidx208, align 4
  store i32 %93, i32* %stride_for_teases, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.206, %if.end.203
  %94 = load i64, i64* %dirlen, align 8
  %95 = load i64, i64* %i, align 8
  %sub210 = sub nsw i64 %94, %95
  %conv211 = trunc i64 %sub210 to i32
  %96 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %96 to i64
  %arrayidx213 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom212
  store i32 %conv211, i32* %arrayidx213, align 4
  %97 = load i32, i32* %ch, align 4
  %cmp214 = icmp sge i32 %97, 0
  br i1 %cmp214, label %if.then.216, label %if.end.261

if.then.216:                                      ; preds = %if.end.209
  %98 = load i32, i32* %ch, align 4
  store i32 %98, i32* %starting_ch, align 4
  %99 = load i32, i32* %j, align 4
  store i32 %99, i32* %starting_j, align 4
  br label %while.body.218

while.body.218:                                   ; preds = %if.then.216, %if.end.255
  br label %do.body

do.body:                                          ; preds = %while.body.218
  %100 = load i64, i64* %inverse_trt.addr, align 8
  %call219 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp220 = icmp eq i64 %100, %call219
  br i1 %cmp220, label %if.else.237, label %if.then.222

if.then.222:                                      ; preds = %do.body
  %101 = load i64, i64* %inverse_trt.addr, align 8
  %102 = load i32, i32* %ch, align 4
  %conv223 = sext i32 %102 to i64
  %shl224 = shl i64 %conv223, 2
  %add225 = add i64 %shl224, 2
  %call226 = call i64 @Faref(i64 %101, i64 %add225)
  store i64 %call226, i64* %temp, align 8
  %103 = load i64, i64* %temp, align 8
  %and227 = and i64 %103, 7
  %conv228 = trunc i64 %and227 to i32
  %and229 = and i32 %conv228, -5
  %cmp230 = icmp eq i32 %and229, 2
  br i1 %cmp230, label %if.then.232, label %if.else.235

if.then.232:                                      ; preds = %if.then.222
  %104 = load i64, i64* %temp, align 8
  %shr233 = ashr i64 %104, 2
  %conv234 = trunc i64 %shr233 to i32
  store i32 %conv234, i32* %ch, align 4
  br label %if.end.236

if.else.235:                                      ; preds = %if.then.222
  %105 = load i32, i32* %ch, align 4
  store i32 %105, i32* %ch, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.235, %if.then.232
  br label %if.end.238

if.else.237:                                      ; preds = %do.body
  %106 = load i32, i32* %ch, align 4
  store i32 %106, i32* %ch, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.237, %if.end.236
  br label %do.end

do.end:                                           ; preds = %if.end.238
  %107 = load i32, i32* %ch, align 4
  %cmp239 = icmp sge i32 %107, 128
  br i1 %cmp239, label %land.lhs.true.241, label %if.else.247

land.lhs.true.241:                                ; preds = %do.end
  %108 = load i8, i8* %multibyte, align 1
  %tobool242 = trunc i8 %108 to i1
  br i1 %tobool242, label %if.then.244, label %if.else.247

if.then.244:                                      ; preds = %land.lhs.true.241
  %109 = load i32, i32* %ch, align 4
  %and245 = and i32 %109, 63
  %or246 = or i32 %and245, 128
  store i32 %or246, i32* %j, align 4
  br label %if.end.248

if.else.247:                                      ; preds = %land.lhs.true.241, %do.end
  %110 = load i32, i32* %ch, align 4
  store i32 %110, i32* %j, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.247, %if.then.244
  %111 = load i32, i32* %starting_j, align 4
  %conv249 = trunc i32 %111 to i8
  %112 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %112 to i64
  %arrayidx251 = getelementptr inbounds [256 x i8], [256 x i8]* %simple_translate, i32 0, i64 %idxprom250
  store i8 %conv249, i8* %arrayidx251, align 1
  %113 = load i32, i32* %ch, align 4
  %114 = load i32, i32* %starting_ch, align 4
  %cmp252 = icmp eq i32 %113, %114
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.248
  br label %while.end.260

if.end.255:                                       ; preds = %if.end.248
  %115 = load i64, i64* %dirlen, align 8
  %116 = load i64, i64* %i, align 8
  %sub256 = sub nsw i64 %115, %116
  %conv257 = trunc i64 %sub256 to i32
  %117 = load i32, i32* %j, align 4
  %idxprom258 = sext i32 %117 to i64
  %arrayidx259 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom258
  store i32 %conv257, i32* %arrayidx259, align 4
  br label %while.body.218

while.end.260:                                    ; preds = %if.then.254
  br label %if.end.261

if.end.261:                                       ; preds = %while.end.260, %if.end.209
  br label %if.end.274

if.else.262:                                      ; preds = %while.body
  %118 = load i8*, i8** %ptr, align 8
  %119 = load i8, i8* %118, align 1
  %conv263 = zext i8 %119 to i32
  store i32 %conv263, i32* %j, align 4
  %120 = load i64, i64* %i, align 8
  %121 = load i64, i64* %dirlen, align 8
  %cmp264 = icmp eq i64 %120, %121
  br i1 %cmp264, label %if.then.266, label %if.end.269

if.then.266:                                      ; preds = %if.else.262
  %122 = load i32, i32* %j, align 4
  %idxprom267 = sext i32 %122 to i64
  %arrayidx268 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom267
  %123 = load i32, i32* %arrayidx268, align 4
  store i32 %123, i32* %stride_for_teases, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.266, %if.else.262
  %124 = load i64, i64* %dirlen, align 8
  %125 = load i64, i64* %i, align 8
  %sub270 = sub nsw i64 %124, %125
  %conv271 = trunc i64 %sub270 to i32
  %126 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %126 to i64
  %arrayidx273 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom272
  store i32 %conv271, i32* %arrayidx273, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.269, %if.end.261
  br label %while.cond

while.end.275:                                    ; preds = %while.cond
  %127 = load i64, i64* %dirlen, align 8
  %128 = load i32, i32* %direction, align 4
  %cmp276 = icmp sgt i32 %128, 0
  br i1 %cmp276, label %cond.true.278, label %cond.false.279

cond.true.278:                                    ; preds = %while.end.275
  %129 = load i32, i32* %direction, align 4
  br label %cond.end.280

cond.false.279:                                   ; preds = %while.end.275
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.279, %cond.true.278
  %cond281 = phi i32 [ %129, %cond.true.278 ], [ 0, %cond.false.279 ]
  %conv282 = sext i32 %cond281 to i64
  %sub283 = sub nsw i64 %127, %conv282
  %130 = load i64, i64* %pos_byte.addr, align 8
  %add284 = add nsw i64 %130, %sub283
  store i64 %add284, i64* %pos_byte.addr, align 8
  br label %while.cond.285

while.cond.285:                                   ; preds = %if.end.889, %cond.end.280
  %131 = load i64, i64* %n.addr, align 8
  %cmp286 = icmp ne i64 %131, 0
  br i1 %cmp286, label %while.body.288, label %while.end.890

while.body.288:                                   ; preds = %while.cond.285
  %132 = load i64, i64* %lim_byte.addr, align 8
  %133 = load i64, i64* %pos_byte.addr, align 8
  %sub289 = sub nsw i64 %132, %133
  %134 = load i32, i32* %direction, align 4
  %cmp290 = icmp sgt i32 %134, 0
  %cond292 = select i1 %cmp290, i32 1, i32 0
  %conv293 = sext i32 %cond292 to i64
  %sub294 = sub nsw i64 %sub289, %conv293
  %135 = load i32, i32* %direction, align 4
  %conv295 = sext i32 %135 to i64
  %mul296 = mul nsw i64 %sub294, %conv295
  %cmp297 = icmp slt i64 %mul296, 0
  br i1 %cmp297, label %if.then.299, label %if.end.303

if.then.299:                                      ; preds = %while.body.288
  %136 = load i64, i64* %n.addr, align 8
  %137 = load i32, i32* %direction, align 4
  %sub300 = sub nsw i32 0, %137
  %conv301 = sext i32 %sub300 to i64
  %mul302 = mul nsw i64 %136, %conv301
  store i64 %mul302, i64* %retval
  br label %return

if.end.303:                                       ; preds = %while.body.288
  br label %do.body.304

do.body.304:                                      ; preds = %if.end.303
  %138 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call305 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp306 = icmp eq i64 %138, %call305
  br i1 %cmp306, label %if.else.313, label %land.lhs.true.308

land.lhs.true.308:                                ; preds = %do.body.304
  %139 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call309 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp310 = icmp eq i64 %139, %call309
  br i1 %cmp310, label %if.then.312, label %if.else.313

if.then.312:                                      ; preds = %land.lhs.true.308
  call void @process_quit_flag()
  br label %if.end.317

if.else.313:                                      ; preds = %land.lhs.true.308, %do.body.304
  %140 = load volatile i8, i8* @pending_signals, align 1
  %tobool314 = trunc i8 %140 to i1
  br i1 %tobool314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.else.313
  call void @process_pending_signals()
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.else.313
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.then.312
  br label %do.end.318

do.end.318:                                       ; preds = %if.end.317
  %141 = load i8*, i8** %base_pat.addr, align 8
  store i8* %141, i8** %pat, align 8
  %142 = load i64, i64* %pos_byte.addr, align 8
  %143 = load i64, i64* %dirlen, align 8
  %sub319 = sub nsw i64 %142, %143
  %144 = load i32, i32* %direction, align 4
  %conv320 = sext i32 %144 to i64
  %add321 = add nsw i64 %sub319, %conv320
  store i64 %add321, i64* %limit, align 8
  %145 = load i32, i32* %direction, align 4
  %cmp322 = icmp sgt i32 %145, 0
  br i1 %cmp322, label %if.then.324, label %if.else.354

if.then.324:                                      ; preds = %do.end.318
  %146 = load i64, i64* %limit, align 8
  %147 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %147, i32 0, i32 73
  %148 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %148, i32 0, i32 3
  %149 = load i64, i64* %gpt_byte, align 8
  %cmp325 = icmp slt i64 %146, %149
  br i1 %cmp325, label %land.lhs.true.327, label %cond.false.334

land.lhs.true.327:                                ; preds = %if.then.324
  %150 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text328 = getelementptr inbounds %struct.buffer, %struct.buffer* %150, i32 0, i32 73
  %151 = load %struct.buffer_text*, %struct.buffer_text** %text328, align 8
  %gpt = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %151, i32 0, i32 1
  %152 = load i64, i64* %gpt, align 8
  %153 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv = getelementptr inbounds %struct.buffer, %struct.buffer* %153, i32 0, i32 79
  %154 = load i64, i64* %zv, align 8
  %cmp329 = icmp slt i64 %152, %154
  br i1 %cmp329, label %cond.true.331, label %cond.false.334

cond.true.331:                                    ; preds = %land.lhs.true.327
  %155 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text332 = getelementptr inbounds %struct.buffer, %struct.buffer* %155, i32 0, i32 73
  %156 = load %struct.buffer_text*, %struct.buffer_text** %text332, align 8
  %gpt_byte333 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %156, i32 0, i32 3
  %157 = load i64, i64* %gpt_byte333, align 8
  br label %cond.end.335

cond.false.334:                                   ; preds = %land.lhs.true.327, %if.then.324
  %158 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %158, i32 0, i32 80
  %159 = load i64, i64* %zv_byte, align 8
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.331
  %cond336 = phi i64 [ %157, %cond.true.331 ], [ %159, %cond.false.334 ]
  %sub337 = sub nsw i64 %cond336, 1
  store i64 %sub337, i64* %limit, align 8
  %160 = load i64, i64* %limit, align 8
  %161 = load i64, i64* %pos_byte.addr, align 8
  %add338 = add nsw i64 %161, 20000
  %cmp339 = icmp slt i64 %160, %add338
  br i1 %cmp339, label %cond.true.341, label %cond.false.342

cond.true.341:                                    ; preds = %cond.end.335
  %162 = load i64, i64* %limit, align 8
  br label %cond.end.344

cond.false.342:                                   ; preds = %cond.end.335
  %163 = load i64, i64* %pos_byte.addr, align 8
  %add343 = add nsw i64 %163, 20000
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.342, %cond.true.341
  %cond345 = phi i64 [ %162, %cond.true.341 ], [ %add343, %cond.false.342 ]
  store i64 %cond345, i64* %limit, align 8
  %164 = load i64, i64* %limit, align 8
  %165 = load i64, i64* %lim_byte.addr, align 8
  %sub346 = sub nsw i64 %165, 1
  %cmp347 = icmp slt i64 %164, %sub346
  br i1 %cmp347, label %cond.true.349, label %cond.false.350

cond.true.349:                                    ; preds = %cond.end.344
  %166 = load i64, i64* %limit, align 8
  br label %cond.end.352

cond.false.350:                                   ; preds = %cond.end.344
  %167 = load i64, i64* %lim_byte.addr, align 8
  %sub351 = sub nsw i64 %167, 1
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.350, %cond.true.349
  %cond353 = phi i64 [ %166, %cond.true.349 ], [ %sub351, %cond.false.350 ]
  store i64 %cond353, i64* %limit, align 8
  br label %if.end.384

if.else.354:                                      ; preds = %do.end.318
  %168 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv = getelementptr inbounds %struct.buffer, %struct.buffer* %168, i32 0, i32 77
  %169 = load i64, i64* %begv, align 8
  %170 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text355 = getelementptr inbounds %struct.buffer, %struct.buffer* %170, i32 0, i32 73
  %171 = load %struct.buffer_text*, %struct.buffer_text** %text355, align 8
  %gpt356 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %171, i32 0, i32 1
  %172 = load i64, i64* %gpt356, align 8
  %cmp357 = icmp sle i64 %169, %172
  br i1 %cmp357, label %land.lhs.true.359, label %cond.false.367

land.lhs.true.359:                                ; preds = %if.else.354
  %173 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text360 = getelementptr inbounds %struct.buffer, %struct.buffer* %173, i32 0, i32 73
  %174 = load %struct.buffer_text*, %struct.buffer_text** %text360, align 8
  %gpt_byte361 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %174, i32 0, i32 3
  %175 = load i64, i64* %gpt_byte361, align 8
  %176 = load i64, i64* %limit, align 8
  %cmp362 = icmp sle i64 %175, %176
  br i1 %cmp362, label %cond.true.364, label %cond.false.367

cond.true.364:                                    ; preds = %land.lhs.true.359
  %177 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text365 = getelementptr inbounds %struct.buffer, %struct.buffer* %177, i32 0, i32 73
  %178 = load %struct.buffer_text*, %struct.buffer_text** %text365, align 8
  %gpt_byte366 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %178, i32 0, i32 3
  %179 = load i64, i64* %gpt_byte366, align 8
  br label %cond.end.368

cond.false.367:                                   ; preds = %land.lhs.true.359, %if.else.354
  %180 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %180, i32 0, i32 78
  %181 = load i64, i64* %begv_byte, align 8
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.367, %cond.true.364
  %cond369 = phi i64 [ %179, %cond.true.364 ], [ %181, %cond.false.367 ]
  store i64 %cond369, i64* %limit, align 8
  %182 = load i64, i64* %limit, align 8
  %183 = load i64, i64* %pos_byte.addr, align 8
  %sub370 = sub nsw i64 %183, 20000
  %cmp371 = icmp sgt i64 %182, %sub370
  br i1 %cmp371, label %cond.true.373, label %cond.false.374

cond.true.373:                                    ; preds = %cond.end.368
  %184 = load i64, i64* %limit, align 8
  br label %cond.end.376

cond.false.374:                                   ; preds = %cond.end.368
  %185 = load i64, i64* %pos_byte.addr, align 8
  %sub375 = sub nsw i64 %185, 20000
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.374, %cond.true.373
  %cond377 = phi i64 [ %184, %cond.true.373 ], [ %sub375, %cond.false.374 ]
  store i64 %cond377, i64* %limit, align 8
  %186 = load i64, i64* %limit, align 8
  %187 = load i64, i64* %lim_byte.addr, align 8
  %cmp378 = icmp sgt i64 %186, %187
  br i1 %cmp378, label %cond.true.380, label %cond.false.381

cond.true.380:                                    ; preds = %cond.end.376
  %188 = load i64, i64* %limit, align 8
  br label %cond.end.382

cond.false.381:                                   ; preds = %cond.end.376
  %189 = load i64, i64* %lim_byte.addr, align 8
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.381, %cond.true.380
  %cond383 = phi i64 [ %188, %cond.true.380 ], [ %189, %cond.false.381 ]
  store i64 %cond383, i64* %limit, align 8
  br label %if.end.384

if.end.384:                                       ; preds = %cond.end.382, %cond.end.352
  %190 = load i64, i64* %pos_byte.addr, align 8
  %191 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text385 = getelementptr inbounds %struct.buffer, %struct.buffer* %191, i32 0, i32 73
  %192 = load %struct.buffer_text*, %struct.buffer_text** %text385, align 8
  %gpt_byte386 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %192, i32 0, i32 3
  %193 = load i64, i64* %gpt_byte386, align 8
  %cmp387 = icmp slt i64 %190, %193
  br i1 %cmp387, label %land.lhs.true.389, label %cond.false.398

land.lhs.true.389:                                ; preds = %if.end.384
  %194 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text390 = getelementptr inbounds %struct.buffer, %struct.buffer* %194, i32 0, i32 73
  %195 = load %struct.buffer_text*, %struct.buffer_text** %text390, align 8
  %gpt391 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %195, i32 0, i32 1
  %196 = load i64, i64* %gpt391, align 8
  %197 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv392 = getelementptr inbounds %struct.buffer, %struct.buffer* %197, i32 0, i32 79
  %198 = load i64, i64* %zv392, align 8
  %cmp393 = icmp slt i64 %196, %198
  br i1 %cmp393, label %cond.true.395, label %cond.false.398

cond.true.395:                                    ; preds = %land.lhs.true.389
  %199 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text396 = getelementptr inbounds %struct.buffer, %struct.buffer* %199, i32 0, i32 73
  %200 = load %struct.buffer_text*, %struct.buffer_text** %text396, align 8
  %gpt_byte397 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %200, i32 0, i32 3
  %201 = load i64, i64* %gpt_byte397, align 8
  br label %cond.end.400

cond.false.398:                                   ; preds = %land.lhs.true.389, %if.end.384
  %202 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte399 = getelementptr inbounds %struct.buffer, %struct.buffer* %202, i32 0, i32 80
  %203 = load i64, i64* %zv_byte399, align 8
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.398, %cond.true.395
  %cond401 = phi i64 [ %201, %cond.true.395 ], [ %203, %cond.false.398 ]
  %sub402 = sub nsw i64 %cond401, 1
  %add403 = add nsw i64 %sub402, 1
  store i64 %add403, i64* %tail_end, align 8
  %204 = load i64, i64* %tail_end, align 8
  %205 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text404 = getelementptr inbounds %struct.buffer, %struct.buffer* %205, i32 0, i32 73
  %206 = load %struct.buffer_text*, %struct.buffer_text** %text404, align 8
  %gpt_byte405 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %206, i32 0, i32 3
  %207 = load i64, i64* %gpt_byte405, align 8
  %cmp406 = icmp sge i64 %204, %207
  br i1 %cmp406, label %cond.true.408, label %cond.false.410

cond.true.408:                                    ; preds = %cond.end.400
  %208 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text409 = getelementptr inbounds %struct.buffer, %struct.buffer* %208, i32 0, i32 73
  %209 = load %struct.buffer_text*, %struct.buffer_text** %text409, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %209, i32 0, i32 5
  %210 = load i64, i64* %gap_size, align 8
  br label %cond.end.411

cond.false.410:                                   ; preds = %cond.end.400
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.false.410, %cond.true.408
  %cond412 = phi i64 [ %210, %cond.true.408 ], [ 0, %cond.false.410 ]
  %211 = load i64, i64* %tail_end, align 8
  %add413 = add nsw i64 %cond412, %211
  %212 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text414 = getelementptr inbounds %struct.buffer, %struct.buffer* %212, i32 0, i32 73
  %213 = load %struct.buffer_text*, %struct.buffer_text** %text414, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %213, i32 0, i32 0
  %214 = load i8*, i8** %beg, align 8
  %add.ptr415 = getelementptr inbounds i8, i8* %214, i64 %add413
  %add.ptr416 = getelementptr inbounds i8, i8* %add.ptr415, i64 -1
  store i8* %add.ptr416, i8** %tail_end_ptr, align 8
  %215 = load i64, i64* %limit, align 8
  %216 = load i64, i64* %pos_byte.addr, align 8
  %sub417 = sub nsw i64 %215, %216
  %217 = load i32, i32* %direction, align 4
  %conv418 = sext i32 %217 to i64
  %mul419 = mul nsw i64 %sub417, %conv418
  %cmp420 = icmp sgt i64 %mul419, 20
  br i1 %cmp420, label %if.then.422, label %if.else.638

if.then.422:                                      ; preds = %cond.end.411
  %218 = load i64, i64* %limit, align 8
  %219 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text423 = getelementptr inbounds %struct.buffer, %struct.buffer* %219, i32 0, i32 73
  %220 = load %struct.buffer_text*, %struct.buffer_text** %text423, align 8
  %gpt_byte424 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %220, i32 0, i32 3
  %221 = load i64, i64* %gpt_byte424, align 8
  %cmp425 = icmp sge i64 %218, %221
  br i1 %cmp425, label %cond.true.427, label %cond.false.430

cond.true.427:                                    ; preds = %if.then.422
  %222 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text428 = getelementptr inbounds %struct.buffer, %struct.buffer* %222, i32 0, i32 73
  %223 = load %struct.buffer_text*, %struct.buffer_text** %text428, align 8
  %gap_size429 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %223, i32 0, i32 5
  %224 = load i64, i64* %gap_size429, align 8
  br label %cond.end.431

cond.false.430:                                   ; preds = %if.then.422
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.430, %cond.true.427
  %cond432 = phi i64 [ %224, %cond.true.427 ], [ 0, %cond.false.430 ]
  %225 = load i64, i64* %limit, align 8
  %add433 = add nsw i64 %cond432, %225
  %226 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text434 = getelementptr inbounds %struct.buffer, %struct.buffer* %226, i32 0, i32 73
  %227 = load %struct.buffer_text*, %struct.buffer_text** %text434, align 8
  %beg435 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %227, i32 0, i32 0
  %228 = load i8*, i8** %beg435, align 8
  %add.ptr436 = getelementptr inbounds i8, i8* %228, i64 %add433
  %add.ptr437 = getelementptr inbounds i8, i8* %add.ptr436, i64 -1
  store i8* %add.ptr437, i8** %p_limit, align 8
  %229 = load i64, i64* %pos_byte.addr, align 8
  %230 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text438 = getelementptr inbounds %struct.buffer, %struct.buffer* %230, i32 0, i32 73
  %231 = load %struct.buffer_text*, %struct.buffer_text** %text438, align 8
  %gpt_byte439 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %231, i32 0, i32 3
  %232 = load i64, i64* %gpt_byte439, align 8
  %cmp440 = icmp sge i64 %229, %232
  br i1 %cmp440, label %cond.true.442, label %cond.false.445

cond.true.442:                                    ; preds = %cond.end.431
  %233 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text443 = getelementptr inbounds %struct.buffer, %struct.buffer* %233, i32 0, i32 73
  %234 = load %struct.buffer_text*, %struct.buffer_text** %text443, align 8
  %gap_size444 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %234, i32 0, i32 5
  %235 = load i64, i64* %gap_size444, align 8
  br label %cond.end.446

cond.false.445:                                   ; preds = %cond.end.431
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.445, %cond.true.442
  %cond447 = phi i64 [ %235, %cond.true.442 ], [ 0, %cond.false.445 ]
  %236 = load i64, i64* %pos_byte.addr, align 8
  %add448 = add nsw i64 %cond447, %236
  %237 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text449 = getelementptr inbounds %struct.buffer, %struct.buffer* %237, i32 0, i32 73
  %238 = load %struct.buffer_text*, %struct.buffer_text** %text449, align 8
  %beg450 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %238, i32 0, i32 0
  %239 = load i8*, i8** %beg450, align 8
  %add.ptr451 = getelementptr inbounds i8, i8* %239, i64 %add448
  %add.ptr452 = getelementptr inbounds i8, i8* %add.ptr451, i64 -1
  store i8* %add.ptr452, i8** %cursor, align 8
  store i8* %add.ptr452, i8** %p2, align 8
  br label %while.body.454

while.body.454:                                   ; preds = %cond.end.446, %if.end.632
  %240 = load i32, i32* %direction, align 4
  %cmp455 = icmp sgt i32 %240, 0
  br i1 %cmp455, label %if.then.457, label %if.else.472

if.then.457:                                      ; preds = %while.body.454
  br label %while.cond.458

while.cond.458:                                   ; preds = %if.end.467, %if.then.457
  %241 = load i8*, i8** %cursor, align 8
  %242 = load i8*, i8** %p_limit, align 8
  %cmp459 = icmp ule i8* %241, %242
  br i1 %cmp459, label %while.body.461, label %while.end.471

while.body.461:                                   ; preds = %while.cond.458
  %243 = load i8*, i8** %cursor, align 8
  %244 = load i8, i8* %243, align 1
  %idxprom462 = zext i8 %244 to i64
  %arrayidx463 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom462
  %245 = load i32, i32* %arrayidx463, align 4
  %cmp464 = icmp eq i32 %245, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %while.body.461
  br label %hit

if.end.467:                                       ; preds = %while.body.461
  %246 = load i8*, i8** %cursor, align 8
  %247 = load i8, i8* %246, align 1
  %idxprom468 = zext i8 %247 to i64
  %arrayidx469 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom468
  %248 = load i32, i32* %arrayidx469, align 4
  %249 = load i8*, i8** %cursor, align 8
  %idx.ext = sext i32 %248 to i64
  %add.ptr470 = getelementptr inbounds i8, i8* %249, i64 %idx.ext
  store i8* %add.ptr470, i8** %cursor, align 8
  br label %while.cond.458

while.end.471:                                    ; preds = %while.cond.458
  br label %if.end.488

if.else.472:                                      ; preds = %while.body.454
  br label %while.cond.473

while.cond.473:                                   ; preds = %if.end.482, %if.else.472
  %250 = load i8*, i8** %cursor, align 8
  %251 = load i8*, i8** %p_limit, align 8
  %cmp474 = icmp uge i8* %250, %251
  br i1 %cmp474, label %while.body.476, label %while.end.487

while.body.476:                                   ; preds = %while.cond.473
  %252 = load i8*, i8** %cursor, align 8
  %253 = load i8, i8* %252, align 1
  %idxprom477 = zext i8 %253 to i64
  %arrayidx478 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom477
  %254 = load i32, i32* %arrayidx478, align 4
  %cmp479 = icmp eq i32 %254, 0
  br i1 %cmp479, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %while.body.476
  br label %hit

if.end.482:                                       ; preds = %while.body.476
  %255 = load i8*, i8** %cursor, align 8
  %256 = load i8, i8* %255, align 1
  %idxprom483 = zext i8 %256 to i64
  %arrayidx484 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom483
  %257 = load i32, i32* %arrayidx484, align 4
  %258 = load i8*, i8** %cursor, align 8
  %idx.ext485 = sext i32 %257 to i64
  %add.ptr486 = getelementptr inbounds i8, i8* %258, i64 %idx.ext485
  store i8* %add.ptr486, i8** %cursor, align 8
  br label %while.cond.473

while.end.487:                                    ; preds = %while.cond.473
  br label %if.end.488

if.end.488:                                       ; preds = %while.end.487, %while.end.471
  br label %while.end.633

hit:                                              ; preds = %if.then.481, %if.then.466
  %259 = load i64, i64* %dirlen, align 8
  %260 = load i32, i32* %direction, align 4
  %conv489 = sext i32 %260 to i64
  %sub490 = sub nsw i64 %259, %conv489
  store i64 %sub490, i64* %i, align 8
  %261 = load i64, i64* %trt.addr, align 8
  %call491 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp492 = icmp eq i64 %261, %call491
  br i1 %cmp492, label %if.else.559, label %if.then.494

if.then.494:                                      ; preds = %hit
  br label %while.cond.495

while.cond.495:                                   ; preds = %if.end.557, %if.then.494
  %262 = load i32, i32* %direction, align 4
  %conv496 = sext i32 %262 to i64
  %263 = load i64, i64* %i, align 8
  %sub497 = sub nsw i64 %263, %conv496
  store i64 %sub497, i64* %i, align 8
  %264 = load i32, i32* %direction, align 4
  %conv498 = sext i32 %264 to i64
  %add499 = add nsw i64 %sub497, %conv498
  %cmp500 = icmp ne i64 %add499, 0
  br i1 %cmp500, label %while.body.502, label %while.end.558

while.body.502:                                   ; preds = %while.cond.495
  %265 = load i32, i32* %direction, align 4
  %266 = load i8*, i8** %cursor, align 8
  %idx.ext504 = sext i32 %265 to i64
  %idx.neg = sub i64 0, %idx.ext504
  %add.ptr505 = getelementptr inbounds i8, i8* %266, i64 %idx.neg
  store i8* %add.ptr505, i8** %cursor, align 8
  %267 = load i8, i8* %multibyte, align 1
  %tobool506 = trunc i8 %267 to i1
  br i1 %tobool506, label %lor.lhs.false.507, label %if.then.545

lor.lhs.false.507:                                ; preds = %while.body.502
  %268 = load i8*, i8** %cursor, align 8
  %269 = load i8*, i8** %tail_end_ptr, align 8
  %cmp508 = icmp eq i8* %268, %269
  br i1 %cmp508, label %land.lhs.true.516, label %lor.lhs.false.510

lor.lhs.false.510:                                ; preds = %lor.lhs.false.507
  %270 = load i8*, i8** %cursor, align 8
  %arrayidx511 = getelementptr inbounds i8, i8* %270, i64 1
  %271 = load i8, i8* %arrayidx511, align 1
  %conv512 = zext i8 %271 to i32
  %and513 = and i32 %conv512, 192
  %cmp514 = icmp ne i32 %and513, 128
  br i1 %cmp514, label %land.lhs.true.516, label %if.else.549

land.lhs.true.516:                                ; preds = %lor.lhs.false.510, %lor.lhs.false.507
  %272 = load i8*, i8** %cursor, align 8
  %arrayidx517 = getelementptr inbounds i8, i8* %272, i64 0
  %273 = load i8, i8* %arrayidx517, align 1
  %conv518 = zext i8 %273 to i32
  %and519 = and i32 %conv518, 192
  %cmp520 = icmp ne i32 %and519, 128
  br i1 %cmp520, label %if.then.545, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %land.lhs.true.516
  %274 = load i32, i32* %translate_prev_byte1, align 4
  %275 = load i8*, i8** %cursor, align 8
  %arrayidx523 = getelementptr inbounds i8, i8* %275, i64 -1
  %276 = load i8, i8* %arrayidx523, align 1
  %conv524 = zext i8 %276 to i32
  %cmp525 = icmp eq i32 %274, %conv524
  br i1 %cmp525, label %land.lhs.true.527, label %if.else.549

land.lhs.true.527:                                ; preds = %lor.lhs.false.522
  %277 = load i32, i32* %translate_prev_byte1, align 4
  %and528 = and i32 %277, 192
  %cmp529 = icmp ne i32 %and528, 128
  br i1 %cmp529, label %if.then.545, label %lor.lhs.false.531

lor.lhs.false.531:                                ; preds = %land.lhs.true.527
  %278 = load i32, i32* %translate_prev_byte2, align 4
  %279 = load i8*, i8** %cursor, align 8
  %arrayidx532 = getelementptr inbounds i8, i8* %279, i64 -2
  %280 = load i8, i8* %arrayidx532, align 1
  %conv533 = zext i8 %280 to i32
  %cmp534 = icmp eq i32 %278, %conv533
  br i1 %cmp534, label %land.lhs.true.536, label %if.else.549

land.lhs.true.536:                                ; preds = %lor.lhs.false.531
  %281 = load i32, i32* %translate_prev_byte2, align 4
  %and537 = and i32 %281, 192
  %cmp538 = icmp ne i32 %and537, 128
  br i1 %cmp538, label %if.then.545, label %lor.lhs.false.540

lor.lhs.false.540:                                ; preds = %land.lhs.true.536
  %282 = load i32, i32* %translate_prev_byte3, align 4
  %283 = load i8*, i8** %cursor, align 8
  %arrayidx541 = getelementptr inbounds i8, i8* %283, i64 -3
  %284 = load i8, i8* %arrayidx541, align 1
  %conv542 = zext i8 %284 to i32
  %cmp543 = icmp eq i32 %282, %conv542
  br i1 %cmp543, label %if.then.545, label %if.else.549

if.then.545:                                      ; preds = %lor.lhs.false.540, %land.lhs.true.536, %land.lhs.true.527, %land.lhs.true.516, %while.body.502
  %285 = load i8*, i8** %cursor, align 8
  %286 = load i8, i8* %285, align 1
  %idxprom546 = zext i8 %286 to i64
  %arrayidx547 = getelementptr inbounds [256 x i8], [256 x i8]* %simple_translate, i32 0, i64 %idxprom546
  %287 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %287 to i32
  store i32 %conv548, i32* %ch503, align 4
  br label %if.end.551

if.else.549:                                      ; preds = %lor.lhs.false.540, %lor.lhs.false.531, %lor.lhs.false.522, %lor.lhs.false.510
  %288 = load i8*, i8** %cursor, align 8
  %289 = load i8, i8* %288, align 1
  %conv550 = zext i8 %289 to i32
  store i32 %conv550, i32* %ch503, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.else.549, %if.then.545
  %290 = load i64, i64* %i, align 8
  %291 = load i8*, i8** %pat, align 8
  %arrayidx552 = getelementptr inbounds i8, i8* %291, i64 %290
  %292 = load i8, i8* %arrayidx552, align 1
  %conv553 = zext i8 %292 to i32
  %293 = load i32, i32* %ch503, align 4
  %cmp554 = icmp ne i32 %conv553, %293
  br i1 %cmp554, label %if.then.556, label %if.end.557

if.then.556:                                      ; preds = %if.end.551
  br label %while.end.558

if.end.557:                                       ; preds = %if.end.551
  br label %while.cond.495

while.end.558:                                    ; preds = %if.then.556, %while.cond.495
  br label %if.end.579

if.else.559:                                      ; preds = %hit
  br label %while.cond.560

while.cond.560:                                   ; preds = %if.end.577, %if.else.559
  %294 = load i32, i32* %direction, align 4
  %conv561 = sext i32 %294 to i64
  %295 = load i64, i64* %i, align 8
  %sub562 = sub nsw i64 %295, %conv561
  store i64 %sub562, i64* %i, align 8
  %296 = load i32, i32* %direction, align 4
  %conv563 = sext i32 %296 to i64
  %add564 = add nsw i64 %sub562, %conv563
  %cmp565 = icmp ne i64 %add564, 0
  br i1 %cmp565, label %while.body.567, label %while.end.578

while.body.567:                                   ; preds = %while.cond.560
  %297 = load i32, i32* %direction, align 4
  %298 = load i8*, i8** %cursor, align 8
  %idx.ext568 = sext i32 %297 to i64
  %idx.neg569 = sub i64 0, %idx.ext568
  %add.ptr570 = getelementptr inbounds i8, i8* %298, i64 %idx.neg569
  store i8* %add.ptr570, i8** %cursor, align 8
  %299 = load i64, i64* %i, align 8
  %300 = load i8*, i8** %pat, align 8
  %arrayidx571 = getelementptr inbounds i8, i8* %300, i64 %299
  %301 = load i8, i8* %arrayidx571, align 1
  %conv572 = zext i8 %301 to i32
  %302 = load i8*, i8** %cursor, align 8
  %303 = load i8, i8* %302, align 1
  %conv573 = zext i8 %303 to i32
  %cmp574 = icmp ne i32 %conv572, %conv573
  br i1 %cmp574, label %if.then.576, label %if.end.577

if.then.576:                                      ; preds = %while.body.567
  br label %while.end.578

if.end.577:                                       ; preds = %while.body.567
  br label %while.cond.560

while.end.578:                                    ; preds = %if.then.576, %while.cond.560
  br label %if.end.579

if.end.579:                                       ; preds = %while.end.578, %while.end.558
  %304 = load i64, i64* %dirlen, align 8
  %305 = load i64, i64* %i, align 8
  %sub580 = sub nsw i64 %304, %305
  %306 = load i32, i32* %direction, align 4
  %conv581 = sext i32 %306 to i64
  %sub582 = sub nsw i64 %sub580, %conv581
  %307 = load i8*, i8** %cursor, align 8
  %add.ptr583 = getelementptr inbounds i8, i8* %307, i64 %sub582
  store i8* %add.ptr583, i8** %cursor, align 8
  %308 = load i64, i64* %i, align 8
  %309 = load i32, i32* %direction, align 4
  %conv584 = sext i32 %309 to i64
  %add585 = add nsw i64 %308, %conv584
  %cmp586 = icmp eq i64 %add585, 0
  br i1 %cmp586, label %if.then.588, label %if.else.629

if.then.588:                                      ; preds = %if.end.579
  %310 = load i32, i32* %direction, align 4
  %311 = load i8*, i8** %cursor, align 8
  %idx.ext589 = sext i32 %310 to i64
  %idx.neg590 = sub i64 0, %idx.ext589
  %add.ptr591 = getelementptr inbounds i8, i8* %311, i64 %idx.neg590
  store i8* %add.ptr591, i8** %cursor, align 8
  %312 = load i64, i64* %pos_byte.addr, align 8
  %313 = load i8*, i8** %cursor, align 8
  %add.ptr592 = getelementptr inbounds i8, i8* %313, i64 %312
  %314 = load i8*, i8** %p2, align 8
  %sub.ptr.lhs.cast593 = ptrtoint i8* %add.ptr592 to i64
  %sub.ptr.rhs.cast594 = ptrtoint i8* %314 to i64
  %sub.ptr.sub595 = sub i64 %sub.ptr.lhs.cast593, %sub.ptr.rhs.cast594
  %315 = load i32, i32* %direction, align 4
  %cmp596 = icmp sgt i32 %315, 0
  br i1 %cmp596, label %cond.true.598, label %cond.false.600

cond.true.598:                                    ; preds = %if.then.588
  %316 = load i64, i64* %len_byte.addr, align 8
  %sub599 = sub nsw i64 1, %316
  br label %cond.end.601

cond.false.600:                                   ; preds = %if.then.588
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.600, %cond.true.598
  %cond602 = phi i64 [ %sub599, %cond.true.598 ], [ 0, %cond.false.600 ]
  %add603 = add nsw i64 %sub.ptr.sub595, %cond602
  store i64 %add603, i64* %position, align 8
  %317 = load i64, i64* %position, align 8
  %318 = load i64, i64* %len_byte.addr, align 8
  call void @set_search_regs(i64 %317, i64 %318)
  %319 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call604 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp605 = icmp eq i64 %319, %call604
  br i1 %cmp605, label %if.then.607, label %if.else.610

if.then.607:                                      ; preds = %cond.end.601
  %320 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx608 = getelementptr inbounds i64, i64* %320, i64 0
  %321 = load i64, i64* %arrayidx608, align 8
  store i64 %321, i64* %start, align 8
  %322 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx609 = getelementptr inbounds i64, i64* %322, i64 0
  %323 = load i64, i64* %arrayidx609, align 8
  store i64 %323, i64* %end, align 8
  br label %if.end.614

if.else.610:                                      ; preds = %cond.end.601
  %324 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %325 = load i64, i64* %position, align 8
  %call611 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %324, i64 %325)
  store i64 %call611, i64* %start, align 8
  %326 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %327 = load i64, i64* %position, align 8
  %328 = load i64, i64* %len_byte.addr, align 8
  %add612 = add nsw i64 %327, %328
  %call613 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %326, i64 %add612)
  store i64 %call613, i64* %end, align 8
  br label %if.end.614

if.end.614:                                       ; preds = %if.else.610, %if.then.607
  %329 = load i32, i32* %direction, align 4
  %conv615 = sext i32 %329 to i64
  %330 = load i64, i64* %n.addr, align 8
  %sub616 = sub nsw i64 %330, %conv615
  store i64 %sub616, i64* %n.addr, align 8
  %cmp617 = icmp ne i64 %sub616, 0
  br i1 %cmp617, label %if.then.619, label %if.else.621

if.then.619:                                      ; preds = %if.end.614
  %331 = load i64, i64* %dirlen, align 8
  %332 = load i8*, i8** %cursor, align 8
  %add.ptr620 = getelementptr inbounds i8, i8* %332, i64 %331
  store i8* %add.ptr620, i8** %cursor, align 8
  br label %if.end.628

if.else.621:                                      ; preds = %if.end.614
  %333 = load i32, i32* %direction, align 4
  %cmp622 = icmp sgt i32 %333, 0
  br i1 %cmp622, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %if.else.621
  %334 = load i64, i64* %end, align 8
  br label %cond.end.626

cond.false.625:                                   ; preds = %if.else.621
  %335 = load i64, i64* %start, align 8
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.false.625, %cond.true.624
  %cond627 = phi i64 [ %334, %cond.true.624 ], [ %335, %cond.false.625 ]
  store i64 %cond627, i64* %retval
  br label %return

if.end.628:                                       ; preds = %if.then.619
  br label %if.end.632

if.else.629:                                      ; preds = %if.end.579
  %336 = load i32, i32* %stride_for_teases, align 4
  %337 = load i8*, i8** %cursor, align 8
  %idx.ext630 = sext i32 %336 to i64
  %add.ptr631 = getelementptr inbounds i8, i8* %337, i64 %idx.ext630
  store i8* %add.ptr631, i8** %cursor, align 8
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.629, %if.end.628
  br label %while.body.454

while.end.633:                                    ; preds = %if.end.488
  %338 = load i8*, i8** %cursor, align 8
  %339 = load i8*, i8** %p2, align 8
  %sub.ptr.lhs.cast634 = ptrtoint i8* %338 to i64
  %sub.ptr.rhs.cast635 = ptrtoint i8* %339 to i64
  %sub.ptr.sub636 = sub i64 %sub.ptr.lhs.cast634, %sub.ptr.rhs.cast635
  %340 = load i64, i64* %pos_byte.addr, align 8
  %add637 = add nsw i64 %340, %sub.ptr.sub636
  store i64 %add637, i64* %pos_byte.addr, align 8
  br label %if.end.879

if.else.638:                                      ; preds = %cond.end.411
  %341 = load i32, i32* %direction, align 4
  %cmp639 = icmp sgt i32 %341, 0
  br i1 %cmp639, label %cond.true.641, label %cond.false.662

cond.true.641:                                    ; preds = %if.else.638
  %342 = load i64, i64* %pos_byte.addr, align 8
  %343 = load i64, i64* %dirlen, align 8
  %sub642 = sub nsw i64 %342, %343
  %add643 = add nsw i64 %sub642, 1
  %344 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text644 = getelementptr inbounds %struct.buffer, %struct.buffer* %344, i32 0, i32 73
  %345 = load %struct.buffer_text*, %struct.buffer_text** %text644, align 8
  %gpt_byte645 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %345, i32 0, i32 3
  %346 = load i64, i64* %gpt_byte645, align 8
  %cmp646 = icmp slt i64 %add643, %346
  br i1 %cmp646, label %land.lhs.true.648, label %cond.false.657

land.lhs.true.648:                                ; preds = %cond.true.641
  %347 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text649 = getelementptr inbounds %struct.buffer, %struct.buffer* %347, i32 0, i32 73
  %348 = load %struct.buffer_text*, %struct.buffer_text** %text649, align 8
  %gpt650 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %348, i32 0, i32 1
  %349 = load i64, i64* %gpt650, align 8
  %350 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv651 = getelementptr inbounds %struct.buffer, %struct.buffer* %350, i32 0, i32 79
  %351 = load i64, i64* %zv651, align 8
  %cmp652 = icmp slt i64 %349, %351
  br i1 %cmp652, label %cond.true.654, label %cond.false.657

cond.true.654:                                    ; preds = %land.lhs.true.648
  %352 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text655 = getelementptr inbounds %struct.buffer, %struct.buffer* %352, i32 0, i32 73
  %353 = load %struct.buffer_text*, %struct.buffer_text** %text655, align 8
  %gpt_byte656 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %353, i32 0, i32 3
  %354 = load i64, i64* %gpt_byte656, align 8
  br label %cond.end.659

cond.false.657:                                   ; preds = %land.lhs.true.648, %cond.true.641
  %355 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %zv_byte658 = getelementptr inbounds %struct.buffer, %struct.buffer* %355, i32 0, i32 80
  %356 = load i64, i64* %zv_byte658, align 8
  br label %cond.end.659

cond.end.659:                                     ; preds = %cond.false.657, %cond.true.654
  %cond660 = phi i64 [ %354, %cond.true.654 ], [ %356, %cond.false.657 ]
  %sub661 = sub nsw i64 %cond660, 1
  br label %cond.end.682

cond.false.662:                                   ; preds = %if.else.638
  %357 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv663 = getelementptr inbounds %struct.buffer, %struct.buffer* %357, i32 0, i32 77
  %358 = load i64, i64* %begv663, align 8
  %359 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text664 = getelementptr inbounds %struct.buffer, %struct.buffer* %359, i32 0, i32 73
  %360 = load %struct.buffer_text*, %struct.buffer_text** %text664, align 8
  %gpt665 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %360, i32 0, i32 1
  %361 = load i64, i64* %gpt665, align 8
  %cmp666 = icmp sle i64 %358, %361
  br i1 %cmp666, label %land.lhs.true.668, label %cond.false.678

land.lhs.true.668:                                ; preds = %cond.false.662
  %362 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text669 = getelementptr inbounds %struct.buffer, %struct.buffer* %362, i32 0, i32 73
  %363 = load %struct.buffer_text*, %struct.buffer_text** %text669, align 8
  %gpt_byte670 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %363, i32 0, i32 3
  %364 = load i64, i64* %gpt_byte670, align 8
  %365 = load i64, i64* %pos_byte.addr, align 8
  %366 = load i64, i64* %dirlen, align 8
  %sub671 = sub nsw i64 %365, %366
  %sub672 = sub nsw i64 %sub671, 1
  %cmp673 = icmp sle i64 %364, %sub672
  br i1 %cmp673, label %cond.true.675, label %cond.false.678

cond.true.675:                                    ; preds = %land.lhs.true.668
  %367 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text676 = getelementptr inbounds %struct.buffer, %struct.buffer* %367, i32 0, i32 73
  %368 = load %struct.buffer_text*, %struct.buffer_text** %text676, align 8
  %gpt_byte677 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %368, i32 0, i32 3
  %369 = load i64, i64* %gpt_byte677, align 8
  br label %cond.end.680

cond.false.678:                                   ; preds = %land.lhs.true.668, %cond.false.662
  %370 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %begv_byte679 = getelementptr inbounds %struct.buffer, %struct.buffer* %370, i32 0, i32 78
  %371 = load i64, i64* %begv_byte679, align 8
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.678, %cond.true.675
  %cond681 = phi i64 [ %369, %cond.true.675 ], [ %371, %cond.false.678 ]
  br label %cond.end.682

cond.end.682:                                     ; preds = %cond.end.680, %cond.end.659
  %cond683 = phi i64 [ %sub661, %cond.end.659 ], [ %cond681, %cond.end.680 ]
  store i64 %cond683, i64* %limit, align 8
  %372 = load i32, i32* %direction, align 4
  %cmp684 = icmp sgt i32 %372, 0
  br i1 %cmp684, label %cond.true.686, label %cond.false.697

cond.true.686:                                    ; preds = %cond.end.682
  %373 = load i64, i64* %limit, align 8
  %374 = load i64, i64* %len_byte.addr, align 8
  %add687 = add nsw i64 %373, %374
  %375 = load i64, i64* %lim_byte.addr, align 8
  %sub688 = sub nsw i64 %375, 1
  %cmp689 = icmp slt i64 %add687, %sub688
  br i1 %cmp689, label %cond.true.691, label %cond.false.693

cond.true.691:                                    ; preds = %cond.true.686
  %376 = load i64, i64* %limit, align 8
  %377 = load i64, i64* %len_byte.addr, align 8
  %add692 = add nsw i64 %376, %377
  br label %cond.end.695

cond.false.693:                                   ; preds = %cond.true.686
  %378 = load i64, i64* %lim_byte.addr, align 8
  %sub694 = sub nsw i64 %378, 1
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.false.693, %cond.true.691
  %cond696 = phi i64 [ %add692, %cond.true.691 ], [ %sub694, %cond.false.693 ]
  br label %cond.end.706

cond.false.697:                                   ; preds = %cond.end.682
  %379 = load i64, i64* %limit, align 8
  %380 = load i64, i64* %len_byte.addr, align 8
  %sub698 = sub nsw i64 %379, %380
  %381 = load i64, i64* %lim_byte.addr, align 8
  %cmp699 = icmp sgt i64 %sub698, %381
  br i1 %cmp699, label %cond.true.701, label %cond.false.703

cond.true.701:                                    ; preds = %cond.false.697
  %382 = load i64, i64* %limit, align 8
  %383 = load i64, i64* %len_byte.addr, align 8
  %sub702 = sub nsw i64 %382, %383
  br label %cond.end.704

cond.false.703:                                   ; preds = %cond.false.697
  %384 = load i64, i64* %lim_byte.addr, align 8
  br label %cond.end.704

cond.end.704:                                     ; preds = %cond.false.703, %cond.true.701
  %cond705 = phi i64 [ %sub702, %cond.true.701 ], [ %384, %cond.false.703 ]
  br label %cond.end.706

cond.end.706:                                     ; preds = %cond.end.704, %cond.end.695
  %cond707 = phi i64 [ %cond696, %cond.end.695 ], [ %cond705, %cond.end.704 ]
  store i64 %cond707, i64* %limit, align 8
  br label %while.body.709

while.body.709:                                   ; preds = %cond.end.706, %if.end.877
  br label %while.cond.710

while.cond.710:                                   ; preds = %if.end.739, %while.body.709
  %385 = load i64, i64* %limit, align 8
  %386 = load i64, i64* %pos_byte.addr, align 8
  %sub711 = sub nsw i64 %385, %386
  %387 = load i32, i32* %direction, align 4
  %conv712 = sext i32 %387 to i64
  %mul713 = mul nsw i64 %sub711, %conv712
  %cmp714 = icmp sge i64 %mul713, 0
  br i1 %cmp714, label %while.body.716, label %while.end.744

while.body.716:                                   ; preds = %while.cond.710
  %388 = load i64, i64* %pos_byte.addr, align 8
  %389 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text718 = getelementptr inbounds %struct.buffer, %struct.buffer* %389, i32 0, i32 73
  %390 = load %struct.buffer_text*, %struct.buffer_text** %text718, align 8
  %gpt_byte719 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %390, i32 0, i32 3
  %391 = load i64, i64* %gpt_byte719, align 8
  %cmp720 = icmp sge i64 %388, %391
  br i1 %cmp720, label %cond.true.722, label %cond.false.725

cond.true.722:                                    ; preds = %while.body.716
  %392 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text723 = getelementptr inbounds %struct.buffer, %struct.buffer* %392, i32 0, i32 73
  %393 = load %struct.buffer_text*, %struct.buffer_text** %text723, align 8
  %gap_size724 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %393, i32 0, i32 5
  %394 = load i64, i64* %gap_size724, align 8
  br label %cond.end.726

cond.false.725:                                   ; preds = %while.body.716
  br label %cond.end.726

cond.end.726:                                     ; preds = %cond.false.725, %cond.true.722
  %cond727 = phi i64 [ %394, %cond.true.722 ], [ 0, %cond.false.725 ]
  %395 = load i64, i64* %pos_byte.addr, align 8
  %add728 = add nsw i64 %cond727, %395
  %396 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text729 = getelementptr inbounds %struct.buffer, %struct.buffer* %396, i32 0, i32 73
  %397 = load %struct.buffer_text*, %struct.buffer_text** %text729, align 8
  %beg730 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %397, i32 0, i32 0
  %398 = load i8*, i8** %beg730, align 8
  %add.ptr731 = getelementptr inbounds i8, i8* %398, i64 %add728
  %add.ptr732 = getelementptr inbounds i8, i8* %add.ptr731, i64 -1
  %399 = load i8, i8* %add.ptr732, align 1
  %conv733 = zext i8 %399 to i32
  store i32 %conv733, i32* %ch717, align 4
  %400 = load i32, i32* %ch717, align 4
  %idxprom734 = sext i32 %400 to i64
  %arrayidx735 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom734
  %401 = load i32, i32* %arrayidx735, align 4
  %cmp736 = icmp eq i32 %401, 0
  br i1 %cmp736, label %if.then.738, label %if.end.739

if.then.738:                                      ; preds = %cond.end.726
  br label %hit2

if.end.739:                                       ; preds = %cond.end.726
  %402 = load i32, i32* %ch717, align 4
  %idxprom740 = sext i32 %402 to i64
  %arrayidx741 = getelementptr inbounds [256 x i32], [256 x i32]* %BM_tab, i32 0, i64 %idxprom740
  %403 = load i32, i32* %arrayidx741, align 4
  %conv742 = sext i32 %403 to i64
  %404 = load i64, i64* %pos_byte.addr, align 8
  %add743 = add nsw i64 %404, %conv742
  store i64 %add743, i64* %pos_byte.addr, align 8
  br label %while.cond.710

while.end.744:                                    ; preds = %while.cond.710
  br label %while.end.878

hit2:                                             ; preds = %if.then.738
  %405 = load i64, i64* %dirlen, align 8
  %406 = load i32, i32* %direction, align 4
  %conv745 = sext i32 %406 to i64
  %sub746 = sub nsw i64 %405, %conv745
  store i64 %sub746, i64* %i, align 8
  br label %while.cond.747

while.cond.747:                                   ; preds = %if.end.825, %hit2
  %407 = load i32, i32* %direction, align 4
  %conv748 = sext i32 %407 to i64
  %408 = load i64, i64* %i, align 8
  %sub749 = sub nsw i64 %408, %conv748
  store i64 %sub749, i64* %i, align 8
  %409 = load i32, i32* %direction, align 4
  %conv750 = sext i32 %409 to i64
  %add751 = add nsw i64 %sub749, %conv750
  %cmp752 = icmp ne i64 %add751, 0
  br i1 %cmp752, label %while.body.754, label %while.end.826

while.body.754:                                   ; preds = %while.cond.747
  %410 = load i32, i32* %direction, align 4
  %conv757 = sext i32 %410 to i64
  %411 = load i64, i64* %pos_byte.addr, align 8
  %sub758 = sub nsw i64 %411, %conv757
  store i64 %sub758, i64* %pos_byte.addr, align 8
  %412 = load i64, i64* %pos_byte.addr, align 8
  %413 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text759 = getelementptr inbounds %struct.buffer, %struct.buffer* %413, i32 0, i32 73
  %414 = load %struct.buffer_text*, %struct.buffer_text** %text759, align 8
  %gpt_byte760 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %414, i32 0, i32 3
  %415 = load i64, i64* %gpt_byte760, align 8
  %cmp761 = icmp sge i64 %412, %415
  br i1 %cmp761, label %cond.true.763, label %cond.false.766

cond.true.763:                                    ; preds = %while.body.754
  %416 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text764 = getelementptr inbounds %struct.buffer, %struct.buffer* %416, i32 0, i32 73
  %417 = load %struct.buffer_text*, %struct.buffer_text** %text764, align 8
  %gap_size765 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %417, i32 0, i32 5
  %418 = load i64, i64* %gap_size765, align 8
  br label %cond.end.767

cond.false.766:                                   ; preds = %while.body.754
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.false.766, %cond.true.763
  %cond768 = phi i64 [ %418, %cond.true.763 ], [ 0, %cond.false.766 ]
  %419 = load i64, i64* %pos_byte.addr, align 8
  %add769 = add nsw i64 %cond768, %419
  %420 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text770 = getelementptr inbounds %struct.buffer, %struct.buffer* %420, i32 0, i32 73
  %421 = load %struct.buffer_text*, %struct.buffer_text** %text770, align 8
  %beg771 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %421, i32 0, i32 0
  %422 = load i8*, i8** %beg771, align 8
  %add.ptr772 = getelementptr inbounds i8, i8* %422, i64 %add769
  %add.ptr773 = getelementptr inbounds i8, i8* %add.ptr772, i64 -1
  store i8* %add.ptr773, i8** %ptr756, align 8
  %423 = load i8, i8* %multibyte, align 1
  %tobool774 = trunc i8 %423 to i1
  br i1 %tobool774, label %lor.lhs.false.775, label %if.then.813

lor.lhs.false.775:                                ; preds = %cond.end.767
  %424 = load i8*, i8** %ptr756, align 8
  %425 = load i8*, i8** %tail_end_ptr, align 8
  %cmp776 = icmp eq i8* %424, %425
  br i1 %cmp776, label %land.lhs.true.784, label %lor.lhs.false.778

lor.lhs.false.778:                                ; preds = %lor.lhs.false.775
  %426 = load i8*, i8** %ptr756, align 8
  %arrayidx779 = getelementptr inbounds i8, i8* %426, i64 1
  %427 = load i8, i8* %arrayidx779, align 1
  %conv780 = zext i8 %427 to i32
  %and781 = and i32 %conv780, 192
  %cmp782 = icmp ne i32 %and781, 128
  br i1 %cmp782, label %land.lhs.true.784, label %if.else.817

land.lhs.true.784:                                ; preds = %lor.lhs.false.778, %lor.lhs.false.775
  %428 = load i8*, i8** %ptr756, align 8
  %arrayidx785 = getelementptr inbounds i8, i8* %428, i64 0
  %429 = load i8, i8* %arrayidx785, align 1
  %conv786 = zext i8 %429 to i32
  %and787 = and i32 %conv786, 192
  %cmp788 = icmp ne i32 %and787, 128
  br i1 %cmp788, label %if.then.813, label %lor.lhs.false.790

lor.lhs.false.790:                                ; preds = %land.lhs.true.784
  %430 = load i32, i32* %translate_prev_byte1, align 4
  %431 = load i8*, i8** %ptr756, align 8
  %arrayidx791 = getelementptr inbounds i8, i8* %431, i64 -1
  %432 = load i8, i8* %arrayidx791, align 1
  %conv792 = zext i8 %432 to i32
  %cmp793 = icmp eq i32 %430, %conv792
  br i1 %cmp793, label %land.lhs.true.795, label %if.else.817

land.lhs.true.795:                                ; preds = %lor.lhs.false.790
  %433 = load i32, i32* %translate_prev_byte1, align 4
  %and796 = and i32 %433, 192
  %cmp797 = icmp ne i32 %and796, 128
  br i1 %cmp797, label %if.then.813, label %lor.lhs.false.799

lor.lhs.false.799:                                ; preds = %land.lhs.true.795
  %434 = load i32, i32* %translate_prev_byte2, align 4
  %435 = load i8*, i8** %ptr756, align 8
  %arrayidx800 = getelementptr inbounds i8, i8* %435, i64 -2
  %436 = load i8, i8* %arrayidx800, align 1
  %conv801 = zext i8 %436 to i32
  %cmp802 = icmp eq i32 %434, %conv801
  br i1 %cmp802, label %land.lhs.true.804, label %if.else.817

land.lhs.true.804:                                ; preds = %lor.lhs.false.799
  %437 = load i32, i32* %translate_prev_byte2, align 4
  %and805 = and i32 %437, 192
  %cmp806 = icmp ne i32 %and805, 128
  br i1 %cmp806, label %if.then.813, label %lor.lhs.false.808

lor.lhs.false.808:                                ; preds = %land.lhs.true.804
  %438 = load i32, i32* %translate_prev_byte3, align 4
  %439 = load i8*, i8** %ptr756, align 8
  %arrayidx809 = getelementptr inbounds i8, i8* %439, i64 -3
  %440 = load i8, i8* %arrayidx809, align 1
  %conv810 = zext i8 %440 to i32
  %cmp811 = icmp eq i32 %438, %conv810
  br i1 %cmp811, label %if.then.813, label %if.else.817

if.then.813:                                      ; preds = %lor.lhs.false.808, %land.lhs.true.804, %land.lhs.true.795, %land.lhs.true.784, %cond.end.767
  %441 = load i8*, i8** %ptr756, align 8
  %442 = load i8, i8* %441, align 1
  %idxprom814 = zext i8 %442 to i64
  %arrayidx815 = getelementptr inbounds [256 x i8], [256 x i8]* %simple_translate, i32 0, i64 %idxprom814
  %443 = load i8, i8* %arrayidx815, align 1
  %conv816 = zext i8 %443 to i32
  store i32 %conv816, i32* %ch755, align 4
  br label %if.end.819

if.else.817:                                      ; preds = %lor.lhs.false.808, %lor.lhs.false.799, %lor.lhs.false.790, %lor.lhs.false.778
  %444 = load i8*, i8** %ptr756, align 8
  %445 = load i8, i8* %444, align 1
  %conv818 = zext i8 %445 to i32
  store i32 %conv818, i32* %ch755, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %if.else.817, %if.then.813
  %446 = load i64, i64* %i, align 8
  %447 = load i8*, i8** %pat, align 8
  %arrayidx820 = getelementptr inbounds i8, i8* %447, i64 %446
  %448 = load i8, i8* %arrayidx820, align 1
  %conv821 = zext i8 %448 to i32
  %449 = load i32, i32* %ch755, align 4
  %cmp822 = icmp ne i32 %conv821, %449
  br i1 %cmp822, label %if.then.824, label %if.end.825

if.then.824:                                      ; preds = %if.end.819
  br label %while.end.826

if.end.825:                                       ; preds = %if.end.819
  br label %while.cond.747

while.end.826:                                    ; preds = %if.then.824, %while.cond.747
  %450 = load i64, i64* %dirlen, align 8
  %451 = load i64, i64* %i, align 8
  %sub827 = sub nsw i64 %450, %451
  %452 = load i32, i32* %direction, align 4
  %conv828 = sext i32 %452 to i64
  %sub829 = sub nsw i64 %sub827, %conv828
  %453 = load i64, i64* %pos_byte.addr, align 8
  %add830 = add nsw i64 %453, %sub829
  store i64 %add830, i64* %pos_byte.addr, align 8
  %454 = load i64, i64* %i, align 8
  %455 = load i32, i32* %direction, align 4
  %conv831 = sext i32 %455 to i64
  %add832 = add nsw i64 %454, %conv831
  %cmp833 = icmp eq i64 %add832, 0
  br i1 %cmp833, label %if.then.835, label %if.else.874

if.then.835:                                      ; preds = %while.end.826
  %456 = load i32, i32* %direction, align 4
  %conv839 = sext i32 %456 to i64
  %457 = load i64, i64* %pos_byte.addr, align 8
  %sub840 = sub nsw i64 %457, %conv839
  store i64 %sub840, i64* %pos_byte.addr, align 8
  %458 = load i64, i64* %pos_byte.addr, align 8
  %459 = load i32, i32* %direction, align 4
  %cmp841 = icmp sgt i32 %459, 0
  br i1 %cmp841, label %cond.true.843, label %cond.false.845

cond.true.843:                                    ; preds = %if.then.835
  %460 = load i64, i64* %len_byte.addr, align 8
  %sub844 = sub nsw i64 1, %460
  br label %cond.end.846

cond.false.845:                                   ; preds = %if.then.835
  br label %cond.end.846

cond.end.846:                                     ; preds = %cond.false.845, %cond.true.843
  %cond847 = phi i64 [ %sub844, %cond.true.843 ], [ 0, %cond.false.845 ]
  %add848 = add nsw i64 %458, %cond847
  store i64 %add848, i64* %position836, align 8
  %461 = load i64, i64* %position836, align 8
  %462 = load i64, i64* %len_byte.addr, align 8
  call void @set_search_regs(i64 %461, i64 %462)
  %463 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 132), align 8
  %call849 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp850 = icmp eq i64 %463, %call849
  br i1 %cmp850, label %if.then.852, label %if.else.855

if.then.852:                                      ; preds = %cond.end.846
  %464 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 1), align 8
  %arrayidx853 = getelementptr inbounds i64, i64* %464, i64 0
  %465 = load i64, i64* %arrayidx853, align 8
  store i64 %465, i64* %start837, align 8
  %466 = load i64*, i64** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @search_regs, i32 0, i32 2), align 8
  %arrayidx854 = getelementptr inbounds i64, i64* %466, i64 0
  %467 = load i64, i64* %arrayidx854, align 8
  store i64 %467, i64* %end838, align 8
  br label %if.end.859

if.else.855:                                      ; preds = %cond.end.846
  %468 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %469 = load i64, i64* %position836, align 8
  %call856 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %468, i64 %469)
  store i64 %call856, i64* %start837, align 8
  %470 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %471 = load i64, i64* %position836, align 8
  %472 = load i64, i64* %len_byte.addr, align 8
  %add857 = add nsw i64 %471, %472
  %call858 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %470, i64 %add857)
  store i64 %call858, i64* %end838, align 8
  br label %if.end.859

if.end.859:                                       ; preds = %if.else.855, %if.then.852
  %473 = load i32, i32* %direction, align 4
  %conv860 = sext i32 %473 to i64
  %474 = load i64, i64* %n.addr, align 8
  %sub861 = sub nsw i64 %474, %conv860
  store i64 %sub861, i64* %n.addr, align 8
  %cmp862 = icmp ne i64 %sub861, 0
  br i1 %cmp862, label %if.then.864, label %if.else.866

if.then.864:                                      ; preds = %if.end.859
  %475 = load i64, i64* %dirlen, align 8
  %476 = load i64, i64* %pos_byte.addr, align 8
  %add865 = add nsw i64 %476, %475
  store i64 %add865, i64* %pos_byte.addr, align 8
  br label %if.end.873

if.else.866:                                      ; preds = %if.end.859
  %477 = load i32, i32* %direction, align 4
  %cmp867 = icmp sgt i32 %477, 0
  br i1 %cmp867, label %cond.true.869, label %cond.false.870

cond.true.869:                                    ; preds = %if.else.866
  %478 = load i64, i64* %end838, align 8
  br label %cond.end.871

cond.false.870:                                   ; preds = %if.else.866
  %479 = load i64, i64* %start837, align 8
  br label %cond.end.871

cond.end.871:                                     ; preds = %cond.false.870, %cond.true.869
  %cond872 = phi i64 [ %478, %cond.true.869 ], [ %479, %cond.false.870 ]
  store i64 %cond872, i64* %retval
  br label %return

if.end.873:                                       ; preds = %if.then.864
  br label %if.end.877

if.else.874:                                      ; preds = %while.end.826
  %480 = load i32, i32* %stride_for_teases, align 4
  %conv875 = sext i32 %480 to i64
  %481 = load i64, i64* %pos_byte.addr, align 8
  %add876 = add nsw i64 %481, %conv875
  store i64 %add876, i64* %pos_byte.addr, align 8
  br label %if.end.877

if.end.877:                                       ; preds = %if.else.874, %if.end.873
  br label %while.body.709

while.end.878:                                    ; preds = %while.end.744
  br label %if.end.879

if.end.879:                                       ; preds = %while.end.878, %while.end.633
  %482 = load i64, i64* %lim_byte.addr, align 8
  %483 = load i64, i64* %pos_byte.addr, align 8
  %sub880 = sub nsw i64 %482, %483
  %484 = load i32, i32* %direction, align 4
  %conv881 = sext i32 %484 to i64
  %mul882 = mul nsw i64 %sub880, %conv881
  %cmp883 = icmp slt i64 %mul882, 0
  br i1 %cmp883, label %if.then.885, label %if.end.889

if.then.885:                                      ; preds = %if.end.879
  %485 = load i64, i64* %n.addr, align 8
  %sub886 = sub nsw i64 0, %485
  %486 = load i32, i32* %direction, align 4
  %conv887 = sext i32 %486 to i64
  %mul888 = mul nsw i64 %sub886, %conv887
  store i64 %mul888, i64* %retval
  br label %return

if.end.889:                                       ; preds = %if.end.879
  br label %while.cond.285

while.end.890:                                    ; preds = %while.cond.285
  %487 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %488 = load i64, i64* %pos_byte.addr, align 8
  %call891 = call i64 @buf_bytepos_to_charpos(%struct.buffer* %487, i64 %488)
  store i64 %call891, i64* %retval
  br label %return

return:                                           ; preds = %while.end.890, %if.then.885, %cond.end.871, %cond.end.626, %if.then.299
  %489 = load i64, i64* %retval
  ret i64 %489
}

; Function Attrs: nounwind uwtable
define internal i64 @simple_search(i64 %n, i8* %pat, i64 %len, i64 %len_byte, i64 %trt, i64 %pos, i64 %pos_byte, i64 %lim, i64 %lim_byte) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %pat.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %len_byte.addr = alloca i64, align 8
  %trt.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %pos_byte.addr = alloca i64, align 8
  %lim.addr = alloca i64, align 8
  %lim_byte.addr = alloca i64, align 8
  %multibyte = alloca i8, align 1
  %forward = alloca i8, align 1
  %match_byte = alloca i64, align 8
  %this_pos = alloca i64, align 8
  %this_pos_byte = alloca i64, align 8
  %this_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %charlen = alloca i32, align 4
  %buf_charlen = alloca i32, align 4
  %pat_ch = alloca i32, align 4
  %buf_ch = alloca i32, align 4
  %temp = alloca i64, align 8
  %chp = alloca i8*, align 8
  %this_pos373 = alloca i64, align 8
  %this_len374 = alloca i64, align 8
  %p375 = alloca i8*, align 8
  %pat_ch385 = alloca i32, align 4
  %buf_ch387 = alloca i32, align 4
  %temp409 = alloca i64, align 8
  %this_pos456 = alloca i64, align 8
  %this_pos_byte457 = alloca i64, align 8
  %this_len458 = alloca i64, align 8
  %p459 = alloca i8*, align 8
  %pat_ch474 = alloca i32, align 4
  %buf_ch475 = alloca i32, align 4
  %chp486 = alloca i8*, align 8
  %chp523 = alloca i8*, align 8
  %temp849 = alloca i64, align 8
  %chp889 = alloca i8*, align 8
  %this_pos937 = alloca i64, align 8
  %this_len939 = alloca i64, align 8
  %p940 = alloca i8*, align 8
  %pat_ch949 = alloca i32, align 4
  %buf_ch952 = alloca i32, align 4
  %temp974 = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %len_byte, i64* %len_byte.addr, align 8
  store i64 %trt, i64* %trt.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %pos_byte, i64* %pos_byte.addr, align 8
  store i64 %lim, i64* %lim.addr, align 8
  store i64 %lim_byte, i64* %lim_byte.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 39
  %1 = load i64, i64* %enable_multibyte_characters_, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  %lnot = xor i1 %cmp, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %multibyte, align 1
  %2 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp sgt i64 %2, 0
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, i8* %forward, align 1
  store i64 -9223372036854775808, i64* %match_byte, align 8
  %3 = load i64, i64* %lim.addr, align 8
  %4 = load i64, i64* %pos.addr, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %land.lhs.true, label %if.else.363

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* %multibyte, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.else.363

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.end.360, %if.then
  %6 = load i64, i64* %n.addr, align 8
  %cmp4 = icmp sgt i64 %6, 0
  br i1 %cmp4, label %while.body, label %while.end.362

while.body:                                       ; preds = %while.cond
  br label %while.body.6

while.body.6:                                     ; preds = %while.body, %do.end.359
  %7 = load i64, i64* %pos.addr, align 8
  store i64 %7, i64* %this_pos, align 8
  %8 = load i64, i64* %pos_byte.addr, align 8
  store i64 %8, i64* %this_pos_byte, align 8
  %9 = load i64, i64* %len.addr, align 8
  store i64 %9, i64* %this_len, align 8
  %10 = load i8*, i8** %pat.addr, align 8
  store i8* %10, i8** %p, align 8
  %11 = load i64, i64* %pos.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %add = add nsw i64 %11, %12
  %13 = load i64, i64* %lim.addr, align 8
  %cmp7 = icmp sgt i64 %add, %13
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.6
  %14 = load i64, i64* %pos_byte.addr, align 8
  %15 = load i64, i64* %len_byte.addr, align 8
  %add8 = add nsw i64 %14, %15
  %16 = load i64, i64* %lim_byte.addr, align 8
  %cmp9 = icmp sgt i64 %add8, %16
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %while.body.6
  br label %stop

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.294, %if.end
  %17 = load i64, i64* %this_len, align 8
  %cmp12 = icmp sgt i64 %17, 0
  br i1 %cmp12, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.11
  %18 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 128
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body.13
  store i32 1, i32* %charlen, align 4
  %20 = load i8*, i8** %p, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %21 to i32
  br label %cond.end.57

cond.false:                                       ; preds = %while.body.13
  %22 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %23 to i32
  %and19 = and i32 %conv18, 32
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.false.33, label %cond.true.21

cond.true.21:                                     ; preds = %cond.false
  store i32 2, i32* %charlen, align 4
  %24 = load i8*, i8** %p, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  %and24 = and i32 %conv23, 31
  %shl = shl i32 %and24, 6
  %26 = load i8*, i8** %p, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %and27 = and i32 %conv26, 63
  %or = or i32 %shl, %and27
  %28 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %29 to i32
  %cmp30 = icmp slt i32 %conv29, 194
  %cond = select i1 %cmp30, i32 4194176, i32 0
  %add32 = add nsw i32 %or, %cond
  br label %cond.end.55

cond.false.33:                                    ; preds = %cond.false
  %30 = load i8*, i8** %p, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %31 to i32
  %and36 = and i32 %conv35, 16
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.false.52, label %cond.true.38

cond.true.38:                                     ; preds = %cond.false.33
  store i32 3, i32* %charlen, align 4
  %32 = load i8*, i8** %p, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %33 to i32
  %and41 = and i32 %conv40, 15
  %shl42 = shl i32 %and41, 12
  %34 = load i8*, i8** %p, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %35 to i32
  %and45 = and i32 %conv44, 63
  %shl46 = shl i32 %and45, 6
  %or47 = or i32 %shl42, %shl46
  %36 = load i8*, i8** %p, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %37 to i32
  %and50 = and i32 %conv49, 63
  %or51 = or i32 %or47, %and50
  br label %cond.end

cond.false.52:                                    ; preds = %cond.false.33
  %38 = load i8*, i8** %p, align 8
  %call53 = call i32 @string_char(i8* %38, i8** null, i32* %charlen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.38
  %cond54 = phi i32 [ %or51, %cond.true.38 ], [ %call53, %cond.false.52 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end, %cond.true.21
  %cond56 = phi i32 [ %add32, %cond.true.21 ], [ %cond54, %cond.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %cond.true
  %cond58 = phi i32 [ %conv16, %cond.true ], [ %cond56, %cond.end.55 ]
  store i32 %cond58, i32* %pat_ch, align 4
  %39 = load i64, i64* %this_pos_byte, align 8
  %40 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %40, i32 0, i32 73
  %41 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %gpt_byte = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %41, i32 0, i32 3
  %42 = load i64, i64* %gpt_byte, align 8
  %cmp59 = icmp sge i64 %39, %42
  br i1 %cmp59, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end.57
  %43 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text62 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 73
  %44 = load %struct.buffer_text*, %struct.buffer_text** %text62, align 8
  %gap_size = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %44, i32 0, i32 5
  %45 = load i64, i64* %gap_size, align 8
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.end.57
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.61
  %cond65 = phi i64 [ %45, %cond.true.61 ], [ 0, %cond.false.63 ]
  %46 = load i64, i64* %this_pos_byte, align 8
  %add66 = add nsw i64 %cond65, %46
  %47 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text67 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 73
  %48 = load %struct.buffer_text*, %struct.buffer_text** %text67, align 8
  %beg = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %48, i32 0, i32 0
  %49 = load i8*, i8** %beg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %add66
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %arrayidx69 = getelementptr inbounds i8, i8* %add.ptr68, i64 0
  %50 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %50 to i32
  %and71 = and i32 %conv70, 128
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.false.91, label %cond.true.73

cond.true.73:                                     ; preds = %cond.end.64
  store i32 1, i32* %buf_charlen, align 4
  %51 = load i64, i64* %this_pos_byte, align 8
  %52 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text74 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 73
  %53 = load %struct.buffer_text*, %struct.buffer_text** %text74, align 8
  %gpt_byte75 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %53, i32 0, i32 3
  %54 = load i64, i64* %gpt_byte75, align 8
  %cmp76 = icmp sge i64 %51, %54
  br i1 %cmp76, label %cond.true.78, label %cond.false.81

cond.true.78:                                     ; preds = %cond.true.73
  %55 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text79 = getelementptr inbounds %struct.buffer, %struct.buffer* %55, i32 0, i32 73
  %56 = load %struct.buffer_text*, %struct.buffer_text** %text79, align 8
  %gap_size80 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %56, i32 0, i32 5
  %57 = load i64, i64* %gap_size80, align 8
  br label %cond.end.82

cond.false.81:                                    ; preds = %cond.true.73
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.78
  %cond83 = phi i64 [ %57, %cond.true.78 ], [ 0, %cond.false.81 ]
  %58 = load i64, i64* %this_pos_byte, align 8
  %add84 = add nsw i64 %cond83, %58
  %59 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text85 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 73
  %60 = load %struct.buffer_text*, %struct.buffer_text** %text85, align 8
  %beg86 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %60, i32 0, i32 0
  %61 = load i8*, i8** %beg86, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %61, i64 %add84
  %add.ptr88 = getelementptr inbounds i8, i8* %add.ptr87, i64 -1
  %arrayidx89 = getelementptr inbounds i8, i8* %add.ptr88, i64 0
  %62 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %62 to i32
  br label %cond.end.271

cond.false.91:                                    ; preds = %cond.end.64
  %63 = load i64, i64* %this_pos_byte, align 8
  %64 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text92 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 73
  %65 = load %struct.buffer_text*, %struct.buffer_text** %text92, align 8
  %gpt_byte93 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %65, i32 0, i32 3
  %66 = load i64, i64* %gpt_byte93, align 8
  %cmp94 = icmp sge i64 %63, %66
  br i1 %cmp94, label %cond.true.96, label %cond.false.99

cond.true.96:                                     ; preds = %cond.false.91
  %67 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text97 = getelementptr inbounds %struct.buffer, %struct.buffer* %67, i32 0, i32 73
  %68 = load %struct.buffer_text*, %struct.buffer_text** %text97, align 8
  %gap_size98 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %68, i32 0, i32 5
  %69 = load i64, i64* %gap_size98, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.false.91
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.96
  %cond101 = phi i64 [ %69, %cond.true.96 ], [ 0, %cond.false.99 ]
  %70 = load i64, i64* %this_pos_byte, align 8
  %add102 = add nsw i64 %cond101, %70
  %71 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text103 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i32 0, i32 73
  %72 = load %struct.buffer_text*, %struct.buffer_text** %text103, align 8
  %beg104 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %72, i32 0, i32 0
  %73 = load i8*, i8** %beg104, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %73, i64 %add102
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr105, i64 -1
  %arrayidx107 = getelementptr inbounds i8, i8* %add.ptr106, i64 0
  %74 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %74 to i32
  %and109 = and i32 %conv108, 32
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %cond.false.171, label %cond.true.111

cond.true.111:                                    ; preds = %cond.end.100
  store i32 2, i32* %buf_charlen, align 4
  %75 = load i64, i64* %this_pos_byte, align 8
  %76 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text112 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 73
  %77 = load %struct.buffer_text*, %struct.buffer_text** %text112, align 8
  %gpt_byte113 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %77, i32 0, i32 3
  %78 = load i64, i64* %gpt_byte113, align 8
  %cmp114 = icmp sge i64 %75, %78
  br i1 %cmp114, label %cond.true.116, label %cond.false.119

cond.true.116:                                    ; preds = %cond.true.111
  %79 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text117 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 73
  %80 = load %struct.buffer_text*, %struct.buffer_text** %text117, align 8
  %gap_size118 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %80, i32 0, i32 5
  %81 = load i64, i64* %gap_size118, align 8
  br label %cond.end.120

cond.false.119:                                   ; preds = %cond.true.111
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.116
  %cond121 = phi i64 [ %81, %cond.true.116 ], [ 0, %cond.false.119 ]
  %82 = load i64, i64* %this_pos_byte, align 8
  %add122 = add nsw i64 %cond121, %82
  %83 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text123 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 73
  %84 = load %struct.buffer_text*, %struct.buffer_text** %text123, align 8
  %beg124 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %84, i32 0, i32 0
  %85 = load i8*, i8** %beg124, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %85, i64 %add122
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 -1
  %arrayidx127 = getelementptr inbounds i8, i8* %add.ptr126, i64 0
  %86 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %86 to i32
  %and129 = and i32 %conv128, 31
  %shl130 = shl i32 %and129, 6
  %87 = load i64, i64* %this_pos_byte, align 8
  %88 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text131 = getelementptr inbounds %struct.buffer, %struct.buffer* %88, i32 0, i32 73
  %89 = load %struct.buffer_text*, %struct.buffer_text** %text131, align 8
  %gpt_byte132 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %89, i32 0, i32 3
  %90 = load i64, i64* %gpt_byte132, align 8
  %cmp133 = icmp sge i64 %87, %90
  br i1 %cmp133, label %cond.true.135, label %cond.false.138

cond.true.135:                                    ; preds = %cond.end.120
  %91 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text136 = getelementptr inbounds %struct.buffer, %struct.buffer* %91, i32 0, i32 73
  %92 = load %struct.buffer_text*, %struct.buffer_text** %text136, align 8
  %gap_size137 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %92, i32 0, i32 5
  %93 = load i64, i64* %gap_size137, align 8
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.end.120
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.135
  %cond140 = phi i64 [ %93, %cond.true.135 ], [ 0, %cond.false.138 ]
  %94 = load i64, i64* %this_pos_byte, align 8
  %add141 = add nsw i64 %cond140, %94
  %95 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text142 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 73
  %96 = load %struct.buffer_text*, %struct.buffer_text** %text142, align 8
  %beg143 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %96, i32 0, i32 0
  %97 = load i8*, i8** %beg143, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %97, i64 %add141
  %add.ptr145 = getelementptr inbounds i8, i8* %add.ptr144, i64 -1
  %arrayidx146 = getelementptr inbounds i8, i8* %add.ptr145, i64 1
  %98 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %98 to i32
  %and148 = and i32 %conv147, 63
  %or149 = or i32 %shl130, %and148
  %99 = load i64, i64* %this_pos_byte, align 8
  %100 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text150 = getelementptr inbounds %struct.buffer, %struct.buffer* %100, i32 0, i32 73
  %101 = load %struct.buffer_text*, %struct.buffer_text** %text150, align 8
  %gpt_byte151 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %101, i32 0, i32 3
  %102 = load i64, i64* %gpt_byte151, align 8
  %cmp152 = icmp sge i64 %99, %102
  br i1 %cmp152, label %cond.true.154, label %cond.false.157

cond.true.154:                                    ; preds = %cond.end.139
  %103 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text155 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i32 0, i32 73
  %104 = load %struct.buffer_text*, %struct.buffer_text** %text155, align 8
  %gap_size156 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %104, i32 0, i32 5
  %105 = load i64, i64* %gap_size156, align 8
  br label %cond.end.158

cond.false.157:                                   ; preds = %cond.end.139
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.157, %cond.true.154
  %cond159 = phi i64 [ %105, %cond.true.154 ], [ 0, %cond.false.157 ]
  %106 = load i64, i64* %this_pos_byte, align 8
  %add160 = add nsw i64 %cond159, %106
  %107 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text161 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 73
  %108 = load %struct.buffer_text*, %struct.buffer_text** %text161, align 8
  %beg162 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %108, i32 0, i32 0
  %109 = load i8*, i8** %beg162, align 8
  %add.ptr163 = getelementptr inbounds i8, i8* %109, i64 %add160
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr163, i64 -1
  %arrayidx165 = getelementptr inbounds i8, i8* %add.ptr164, i64 0
  %110 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %110 to i32
  %cmp167 = icmp slt i32 %conv166, 194
  %cond169 = select i1 %cmp167, i32 4194176, i32 0
  %add170 = add nsw i32 %or149, %cond169
  br label %cond.end.269

cond.false.171:                                   ; preds = %cond.end.100
  %111 = load i64, i64* %this_pos_byte, align 8
  %112 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text172 = getelementptr inbounds %struct.buffer, %struct.buffer* %112, i32 0, i32 73
  %113 = load %struct.buffer_text*, %struct.buffer_text** %text172, align 8
  %gpt_byte173 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %113, i32 0, i32 3
  %114 = load i64, i64* %gpt_byte173, align 8
  %cmp174 = icmp sge i64 %111, %114
  br i1 %cmp174, label %cond.true.176, label %cond.false.179

cond.true.176:                                    ; preds = %cond.false.171
  %115 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text177 = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 73
  %116 = load %struct.buffer_text*, %struct.buffer_text** %text177, align 8
  %gap_size178 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %116, i32 0, i32 5
  %117 = load i64, i64* %gap_size178, align 8
  br label %cond.end.180

cond.false.179:                                   ; preds = %cond.false.171
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.176
  %cond181 = phi i64 [ %117, %cond.true.176 ], [ 0, %cond.false.179 ]
  %118 = load i64, i64* %this_pos_byte, align 8
  %add182 = add nsw i64 %cond181, %118
  %119 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text183 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i32 0, i32 73
  %120 = load %struct.buffer_text*, %struct.buffer_text** %text183, align 8
  %beg184 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %120, i32 0, i32 0
  %121 = load i8*, i8** %beg184, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %121, i64 %add182
  %add.ptr186 = getelementptr inbounds i8, i8* %add.ptr185, i64 -1
  %arrayidx187 = getelementptr inbounds i8, i8* %add.ptr186, i64 0
  %122 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %122 to i32
  %and189 = and i32 %conv188, 16
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %cond.false.250, label %cond.true.191

cond.true.191:                                    ; preds = %cond.end.180
  store i32 3, i32* %buf_charlen, align 4
  %123 = load i64, i64* %this_pos_byte, align 8
  %124 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text192 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i32 0, i32 73
  %125 = load %struct.buffer_text*, %struct.buffer_text** %text192, align 8
  %gpt_byte193 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %125, i32 0, i32 3
  %126 = load i64, i64* %gpt_byte193, align 8
  %cmp194 = icmp sge i64 %123, %126
  br i1 %cmp194, label %cond.true.196, label %cond.false.199

cond.true.196:                                    ; preds = %cond.true.191
  %127 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text197 = getelementptr inbounds %struct.buffer, %struct.buffer* %127, i32 0, i32 73
  %128 = load %struct.buffer_text*, %struct.buffer_text** %text197, align 8
  %gap_size198 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %128, i32 0, i32 5
  %129 = load i64, i64* %gap_size198, align 8
  br label %cond.end.200

cond.false.199:                                   ; preds = %cond.true.191
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.196
  %cond201 = phi i64 [ %129, %cond.true.196 ], [ 0, %cond.false.199 ]
  %130 = load i64, i64* %this_pos_byte, align 8
  %add202 = add nsw i64 %cond201, %130
  %131 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text203 = getelementptr inbounds %struct.buffer, %struct.buffer* %131, i32 0, i32 73
  %132 = load %struct.buffer_text*, %struct.buffer_text** %text203, align 8
  %beg204 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %132, i32 0, i32 0
  %133 = load i8*, i8** %beg204, align 8
  %add.ptr205 = getelementptr inbounds i8, i8* %133, i64 %add202
  %add.ptr206 = getelementptr inbounds i8, i8* %add.ptr205, i64 -1
  %arrayidx207 = getelementptr inbounds i8, i8* %add.ptr206, i64 0
  %134 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %134 to i32
  %and209 = and i32 %conv208, 15
  %shl210 = shl i32 %and209, 12
  %135 = load i64, i64* %this_pos_byte, align 8
  %136 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text211 = getelementptr inbounds %struct.buffer, %struct.buffer* %136, i32 0, i32 73
  %137 = load %struct.buffer_text*, %struct.buffer_text** %text211, align 8
  %gpt_byte212 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %137, i32 0, i32 3
  %138 = load i64, i64* %gpt_byte212, align 8
  %cmp213 = icmp sge i64 %135, %138
  br i1 %cmp213, label %cond.true.215, label %cond.false.218

cond.true.215:                                    ; preds = %cond.end.200
  %139 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text216 = getelementptr inbounds %struct.buffer, %struct.buffer* %139, i32 0, i32 73
  %140 = load %struct.buffer_text*, %struct.buffer_text** %text216, align 8
  %gap_size217 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %140, i32 0, i32 5
  %141 = load i64, i64* %gap_size217, align 8
  br label %cond.end.219

cond.false.218:                                   ; preds = %cond.end.200
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.218, %cond.true.215
  %cond220 = phi i64 [ %141, %cond.true.215 ], [ 0, %cond.false.218 ]
  %142 = load i64, i64* %this_pos_byte, align 8
  %add221 = add nsw i64 %cond220, %142
  %143 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text222 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 73
  %144 = load %struct.buffer_text*, %struct.buffer_text** %text222, align 8
  %beg223 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %144, i32 0, i32 0
  %145 = load i8*, i8** %beg223, align 8
  %add.ptr224 = getelementptr inbounds i8, i8* %145, i64 %add221
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr224, i64 -1
  %arrayidx226 = getelementptr inbounds i8, i8* %add.ptr225, i64 1
  %146 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %146 to i32
  %and228 = and i32 %conv227, 63
  %shl229 = shl i32 %and228, 6
  %or230 = or i32 %shl210, %shl229
  %147 = load i64, i64* %this_pos_byte, align 8
  %148 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text231 = getelementptr inbounds %struct.buffer, %struct.buffer* %148, i32 0, i32 73
  %149 = load %struct.buffer_text*, %struct.buffer_text** %text231, align 8
  %gpt_byte232 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %149, i32 0, i32 3
  %150 = load i64, i64* %gpt_byte232, align 8
  %cmp233 = icmp sge i64 %147, %150
  br i1 %cmp233, label %cond.true.235, label %cond.false.238

cond.true.235:                                    ; preds = %cond.end.219
  %151 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text236 = getelementptr inbounds %struct.buffer, %struct.buffer* %151, i32 0, i32 73
  %152 = load %struct.buffer_text*, %struct.buffer_text** %text236, align 8
  %gap_size237 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %152, i32 0, i32 5
  %153 = load i64, i64* %gap_size237, align 8
  br label %cond.end.239

cond.false.238:                                   ; preds = %cond.end.219
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.238, %cond.true.235
  %cond240 = phi i64 [ %153, %cond.true.235 ], [ 0, %cond.false.238 ]
  %154 = load i64, i64* %this_pos_byte, align 8
  %add241 = add nsw i64 %cond240, %154
  %155 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text242 = getelementptr inbounds %struct.buffer, %struct.buffer* %155, i32 0, i32 73
  %156 = load %struct.buffer_text*, %struct.buffer_text** %text242, align 8
  %beg243 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %156, i32 0, i32 0
  %157 = load i8*, i8** %beg243, align 8
  %add.ptr244 = getelementptr inbounds i8, i8* %157, i64 %add241
  %add.ptr245 = getelementptr inbounds i8, i8* %add.ptr244, i64 -1
  %arrayidx246 = getelementptr inbounds i8, i8* %add.ptr245, i64 2
  %158 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %158 to i32
  %and248 = and i32 %conv247, 63
  %or249 = or i32 %or230, %and248
  br label %cond.end.267

cond.false.250:                                   ; preds = %cond.end.180
  %159 = load i64, i64* %this_pos_byte, align 8
  %160 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text251 = getelementptr inbounds %struct.buffer, %struct.buffer* %160, i32 0, i32 73
  %161 = load %struct.buffer_text*, %struct.buffer_text** %text251, align 8
  %gpt_byte252 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %161, i32 0, i32 3
  %162 = load i64, i64* %gpt_byte252, align 8
  %cmp253 = icmp sge i64 %159, %162
  br i1 %cmp253, label %cond.true.255, label %cond.false.258

cond.true.255:                                    ; preds = %cond.false.250
  %163 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text256 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 73
  %164 = load %struct.buffer_text*, %struct.buffer_text** %text256, align 8
  %gap_size257 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %164, i32 0, i32 5
  %165 = load i64, i64* %gap_size257, align 8
  br label %cond.end.259

cond.false.258:                                   ; preds = %cond.false.250
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.258, %cond.true.255
  %cond260 = phi i64 [ %165, %cond.true.255 ], [ 0, %cond.false.258 ]
  %166 = load i64, i64* %this_pos_byte, align 8
  %add261 = add nsw i64 %cond260, %166
  %167 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text262 = getelementptr inbounds %struct.buffer, %struct.buffer* %167, i32 0, i32 73
  %168 = load %struct.buffer_text*, %struct.buffer_text** %text262, align 8
  %beg263 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %168, i32 0, i32 0
  %169 = load i8*, i8** %beg263, align 8
  %add.ptr264 = getelementptr inbounds i8, i8* %169, i64 %add261
  %add.ptr265 = getelementptr inbounds i8, i8* %add.ptr264, i64 -1
  %call266 = call i32 @string_char(i8* %add.ptr265, i8** null, i32* %buf_charlen)
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.259, %cond.end.239
  %cond268 = phi i32 [ %or249, %cond.end.239 ], [ %call266, %cond.end.259 ]
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.end.267, %cond.end.158
  %cond270 = phi i32 [ %add170, %cond.end.158 ], [ %cond268, %cond.end.267 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.end.82
  %cond272 = phi i32 [ %conv90, %cond.end.82 ], [ %cond270, %cond.end.269 ]
  store i32 %cond272, i32* %buf_ch, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.271
  %170 = load i64, i64* %trt.addr, align 8
  %call273 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp274 = icmp eq i64 %170, %call273
  br i1 %cmp274, label %if.else.289, label %if.then.276

if.then.276:                                      ; preds = %do.body
  %171 = load i64, i64* %trt.addr, align 8
  %172 = load i32, i32* %buf_ch, align 4
  %conv277 = sext i32 %172 to i64
  %shl278 = shl i64 %conv277, 2
  %add279 = add i64 %shl278, 2
  %call280 = call i64 @Faref(i64 %171, i64 %add279)
  store i64 %call280, i64* %temp, align 8
  %173 = load i64, i64* %temp, align 8
  %and281 = and i64 %173, 7
  %conv282 = trunc i64 %and281 to i32
  %and283 = and i32 %conv282, -5
  %cmp284 = icmp eq i32 %and283, 2
  br i1 %cmp284, label %if.then.286, label %if.else

if.then.286:                                      ; preds = %if.then.276
  %174 = load i64, i64* %temp, align 8
  %shr = ashr i64 %174, 2
  %conv287 = trunc i64 %shr to i32
  store i32 %conv287, i32* %buf_ch, align 4
  br label %if.end.288

if.else:                                          ; preds = %if.then.276
  %175 = load i32, i32* %buf_ch, align 4
  store i32 %175, i32* %buf_ch, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.else, %if.then.286
  br label %if.end.290

if.else.289:                                      ; preds = %do.body
  %176 = load i32, i32* %buf_ch, align 4
  store i32 %176, i32* %buf_ch, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.289, %if.end.288
  br label %do.end

do.end:                                           ; preds = %if.end.290
  %177 = load i32, i32* %buf_ch, align 4
  %178 = load i32, i32* %pat_ch, align 4
  %cmp291 = icmp ne i32 %177, %178
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %do.end
  br label %while.end

if.end.294:                                       ; preds = %do.end
  %179 = load i64, i64* %this_len, align 8
  %dec = add nsw i64 %179, -1
  store i64 %dec, i64* %this_len, align 8
  %180 = load i32, i32* %charlen, align 4
  %181 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %180 to i64
  %add.ptr295 = getelementptr inbounds i8, i8* %181, i64 %idx.ext
  store i8* %add.ptr295, i8** %p, align 8
  %182 = load i32, i32* %buf_charlen, align 4
  %conv296 = sext i32 %182 to i64
  %183 = load i64, i64* %this_pos_byte, align 8
  %add297 = add nsw i64 %183, %conv296
  store i64 %add297, i64* %this_pos_byte, align 8
  %184 = load i64, i64* %this_pos, align 8
  %inc = add nsw i64 %184, 1
  store i64 %inc, i64* %this_pos, align 8
  br label %while.cond.11

while.end:                                        ; preds = %if.then.293, %while.cond.11
  %185 = load i64, i64* %this_len, align 8
  %cmp298 = icmp eq i64 %185, 0
  br i1 %cmp298, label %if.then.300, label %if.end.303

if.then.300:                                      ; preds = %while.end
  %186 = load i64, i64* %this_pos_byte, align 8
  %187 = load i64, i64* %pos_byte.addr, align 8
  %sub = sub nsw i64 %186, %187
  store i64 %sub, i64* %match_byte, align 8
  %188 = load i64, i64* %len.addr, align 8
  %189 = load i64, i64* %pos.addr, align 8
  %add301 = add nsw i64 %189, %188
  store i64 %add301, i64* %pos.addr, align 8
  %190 = load i64, i64* %match_byte, align 8
  %191 = load i64, i64* %pos_byte.addr, align 8
  %add302 = add nsw i64 %191, %190
  store i64 %add302, i64* %pos_byte.addr, align 8
  br label %while.end.360

if.end.303:                                       ; preds = %while.end
  br label %do.body.304

do.body.304:                                      ; preds = %if.end.303
  %192 = load i64, i64* %pos.addr, align 8
  %inc305 = add nsw i64 %192, 1
  store i64 %inc305, i64* %pos.addr, align 8
  %193 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_306 = getelementptr inbounds %struct.buffer, %struct.buffer* %193, i32 0, i32 39
  %194 = load i64, i64* %enable_multibyte_characters_306, align 8
  %call307 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp308 = icmp eq i64 %194, %call307
  br i1 %cmp308, label %if.then.310, label %if.else.312

if.then.310:                                      ; preds = %do.body.304
  %195 = load i64, i64* %pos_byte.addr, align 8
  %inc311 = add nsw i64 %195, 1
  store i64 %inc311, i64* %pos_byte.addr, align 8
  br label %if.end.358

if.else.312:                                      ; preds = %do.body.304
  br label %do.body.313

do.body.313:                                      ; preds = %if.else.312
  %196 = load i64, i64* %pos_byte.addr, align 8
  %197 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text314 = getelementptr inbounds %struct.buffer, %struct.buffer* %197, i32 0, i32 73
  %198 = load %struct.buffer_text*, %struct.buffer_text** %text314, align 8
  %gpt_byte315 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %198, i32 0, i32 3
  %199 = load i64, i64* %gpt_byte315, align 8
  %cmp316 = icmp sge i64 %196, %199
  br i1 %cmp316, label %cond.true.318, label %cond.false.321

cond.true.318:                                    ; preds = %do.body.313
  %200 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text319 = getelementptr inbounds %struct.buffer, %struct.buffer* %200, i32 0, i32 73
  %201 = load %struct.buffer_text*, %struct.buffer_text** %text319, align 8
  %gap_size320 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %201, i32 0, i32 5
  %202 = load i64, i64* %gap_size320, align 8
  br label %cond.end.322

cond.false.321:                                   ; preds = %do.body.313
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.318
  %cond323 = phi i64 [ %202, %cond.true.318 ], [ 0, %cond.false.321 ]
  %203 = load i64, i64* %pos_byte.addr, align 8
  %add324 = add nsw i64 %cond323, %203
  %204 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text325 = getelementptr inbounds %struct.buffer, %struct.buffer* %204, i32 0, i32 73
  %205 = load %struct.buffer_text*, %struct.buffer_text** %text325, align 8
  %beg326 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %205, i32 0, i32 0
  %206 = load i8*, i8** %beg326, align 8
  %add.ptr327 = getelementptr inbounds i8, i8* %206, i64 %add324
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr327, i64 -1
  store i8* %add.ptr328, i8** %chp, align 8
  %207 = load i8*, i8** %chp, align 8
  %208 = load i8, i8* %207, align 1
  %conv329 = zext i8 %208 to i32
  %and330 = and i32 %conv329, 128
  %tobool331 = icmp ne i32 %and330, 0
  br i1 %tobool331, label %cond.false.333, label %cond.true.332

cond.true.332:                                    ; preds = %cond.end.322
  br label %cond.end.353

cond.false.333:                                   ; preds = %cond.end.322
  %209 = load i8*, i8** %chp, align 8
  %210 = load i8, i8* %209, align 1
  %conv334 = zext i8 %210 to i32
  %and335 = and i32 %conv334, 32
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %cond.false.338, label %cond.true.337

cond.true.337:                                    ; preds = %cond.false.333
  br label %cond.end.351

cond.false.338:                                   ; preds = %cond.false.333
  %211 = load i8*, i8** %chp, align 8
  %212 = load i8, i8* %211, align 1
  %conv339 = zext i8 %212 to i32
  %and340 = and i32 %conv339, 16
  %tobool341 = icmp ne i32 %and340, 0
  br i1 %tobool341, label %cond.false.343, label %cond.true.342

cond.true.342:                                    ; preds = %cond.false.338
  br label %cond.end.349

cond.false.343:                                   ; preds = %cond.false.338
  %213 = load i8*, i8** %chp, align 8
  %214 = load i8, i8* %213, align 1
  %conv344 = zext i8 %214 to i32
  %and345 = and i32 %conv344, 8
  %tobool346 = icmp ne i32 %and345, 0
  %lnot347 = xor i1 %tobool346, true
  %cond348 = select i1 %lnot347, i32 4, i32 5
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.343, %cond.true.342
  %cond350 = phi i32 [ 3, %cond.true.342 ], [ %cond348, %cond.false.343 ]
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.end.349, %cond.true.337
  %cond352 = phi i32 [ 2, %cond.true.337 ], [ %cond350, %cond.end.349 ]
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.end.351, %cond.true.332
  %cond354 = phi i32 [ 1, %cond.true.332 ], [ %cond352, %cond.end.351 ]
  %conv355 = sext i32 %cond354 to i64
  %215 = load i64, i64* %pos_byte.addr, align 8
  %add356 = add nsw i64 %215, %conv355
  store i64 %add356, i64* %pos_byte.addr, align 8
  br label %do.end.357

do.end.357:                                       ; preds = %cond.end.353
  br label %if.end.358

if.end.358:                                       ; preds = %do.end.357, %if.then.310
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.358
  br label %while.body.6

while.end.360:                                    ; preds = %if.then.300
  %216 = load i64, i64* %n.addr, align 8
  %dec361 = add nsw i64 %216, -1
  store i64 %dec361, i64* %n.addr, align 8
  br label %while.cond

while.end.362:                                    ; preds = %while.cond
  br label %if.end.1012

if.else.363:                                      ; preds = %land.lhs.true, %entry
  %217 = load i64, i64* %lim.addr, align 8
  %218 = load i64, i64* %pos.addr, align 8
  %cmp364 = icmp sgt i64 %217, %218
  br i1 %cmp364, label %if.then.366, label %if.else.443

if.then.366:                                      ; preds = %if.else.363
  br label %while.cond.367

while.cond.367:                                   ; preds = %while.end.440, %if.then.366
  %219 = load i64, i64* %n.addr, align 8
  %cmp368 = icmp sgt i64 %219, 0
  br i1 %cmp368, label %while.body.370, label %while.end.442

while.body.370:                                   ; preds = %while.cond.367
  br label %while.body.372

while.body.372:                                   ; preds = %while.body.370, %if.end.438
  %220 = load i64, i64* %pos.addr, align 8
  store i64 %220, i64* %this_pos373, align 8
  %221 = load i64, i64* %len.addr, align 8
  store i64 %221, i64* %this_len374, align 8
  %222 = load i8*, i8** %pat.addr, align 8
  store i8* %222, i8** %p375, align 8
  %223 = load i64, i64* %pos.addr, align 8
  %224 = load i64, i64* %len.addr, align 8
  %add376 = add nsw i64 %223, %224
  %225 = load i64, i64* %lim.addr, align 8
  %cmp377 = icmp sgt i64 %add376, %225
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %while.body.372
  br label %stop

if.end.380:                                       ; preds = %while.body.372
  br label %while.cond.381

while.cond.381:                                   ; preds = %if.end.430, %if.end.380
  %226 = load i64, i64* %this_len374, align 8
  %cmp382 = icmp sgt i64 %226, 0
  br i1 %cmp382, label %while.body.384, label %while.end.433

while.body.384:                                   ; preds = %while.cond.381
  %227 = load i8*, i8** %p375, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr, i8** %p375, align 8
  %228 = load i8, i8* %227, align 1
  %conv386 = zext i8 %228 to i32
  store i32 %conv386, i32* %pat_ch385, align 4
  %229 = load i64, i64* %this_pos373, align 8
  %230 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text388 = getelementptr inbounds %struct.buffer, %struct.buffer* %230, i32 0, i32 73
  %231 = load %struct.buffer_text*, %struct.buffer_text** %text388, align 8
  %gpt_byte389 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %231, i32 0, i32 3
  %232 = load i64, i64* %gpt_byte389, align 8
  %cmp390 = icmp sge i64 %229, %232
  br i1 %cmp390, label %cond.true.392, label %cond.false.395

cond.true.392:                                    ; preds = %while.body.384
  %233 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text393 = getelementptr inbounds %struct.buffer, %struct.buffer* %233, i32 0, i32 73
  %234 = load %struct.buffer_text*, %struct.buffer_text** %text393, align 8
  %gap_size394 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %234, i32 0, i32 5
  %235 = load i64, i64* %gap_size394, align 8
  br label %cond.end.396

cond.false.395:                                   ; preds = %while.body.384
  br label %cond.end.396

cond.end.396:                                     ; preds = %cond.false.395, %cond.true.392
  %cond397 = phi i64 [ %235, %cond.true.392 ], [ 0, %cond.false.395 ]
  %236 = load i64, i64* %this_pos373, align 8
  %add398 = add nsw i64 %cond397, %236
  %237 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text399 = getelementptr inbounds %struct.buffer, %struct.buffer* %237, i32 0, i32 73
  %238 = load %struct.buffer_text*, %struct.buffer_text** %text399, align 8
  %beg400 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %238, i32 0, i32 0
  %239 = load i8*, i8** %beg400, align 8
  %add.ptr401 = getelementptr inbounds i8, i8* %239, i64 %add398
  %add.ptr402 = getelementptr inbounds i8, i8* %add.ptr401, i64 -1
  %240 = load i8, i8* %add.ptr402, align 1
  %conv403 = zext i8 %240 to i32
  store i32 %conv403, i32* %buf_ch387, align 4
  br label %do.body.404

do.body.404:                                      ; preds = %cond.end.396
  %241 = load i64, i64* %trt.addr, align 8
  %call405 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp406 = icmp eq i64 %241, %call405
  br i1 %cmp406, label %if.else.424, label %if.then.408

if.then.408:                                      ; preds = %do.body.404
  %242 = load i64, i64* %trt.addr, align 8
  %243 = load i32, i32* %buf_ch387, align 4
  %conv410 = sext i32 %243 to i64
  %shl411 = shl i64 %conv410, 2
  %add412 = add i64 %shl411, 2
  %call413 = call i64 @Faref(i64 %242, i64 %add412)
  store i64 %call413, i64* %temp409, align 8
  %244 = load i64, i64* %temp409, align 8
  %and414 = and i64 %244, 7
  %conv415 = trunc i64 %and414 to i32
  %and416 = and i32 %conv415, -5
  %cmp417 = icmp eq i32 %and416, 2
  br i1 %cmp417, label %if.then.419, label %if.else.422

if.then.419:                                      ; preds = %if.then.408
  %245 = load i64, i64* %temp409, align 8
  %shr420 = ashr i64 %245, 2
  %conv421 = trunc i64 %shr420 to i32
  store i32 %conv421, i32* %buf_ch387, align 4
  br label %if.end.423

if.else.422:                                      ; preds = %if.then.408
  %246 = load i32, i32* %buf_ch387, align 4
  store i32 %246, i32* %buf_ch387, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.422, %if.then.419
  br label %if.end.425

if.else.424:                                      ; preds = %do.body.404
  %247 = load i32, i32* %buf_ch387, align 4
  store i32 %247, i32* %buf_ch387, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.else.424, %if.end.423
  br label %do.end.426

do.end.426:                                       ; preds = %if.end.425
  %248 = load i32, i32* %buf_ch387, align 4
  %249 = load i32, i32* %pat_ch385, align 4
  %cmp427 = icmp ne i32 %248, %249
  br i1 %cmp427, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %do.end.426
  br label %while.end.433

if.end.430:                                       ; preds = %do.end.426
  %250 = load i64, i64* %this_len374, align 8
  %dec431 = add nsw i64 %250, -1
  store i64 %dec431, i64* %this_len374, align 8
  %251 = load i64, i64* %this_pos373, align 8
  %inc432 = add nsw i64 %251, 1
  store i64 %inc432, i64* %this_pos373, align 8
  br label %while.cond.381

while.end.433:                                    ; preds = %if.then.429, %while.cond.381
  %252 = load i64, i64* %this_len374, align 8
  %cmp434 = icmp eq i64 %252, 0
  br i1 %cmp434, label %if.then.436, label %if.end.438

if.then.436:                                      ; preds = %while.end.433
  %253 = load i64, i64* %len.addr, align 8
  store i64 %253, i64* %match_byte, align 8
  %254 = load i64, i64* %len.addr, align 8
  %255 = load i64, i64* %pos.addr, align 8
  %add437 = add nsw i64 %255, %254
  store i64 %add437, i64* %pos.addr, align 8
  br label %while.end.440

if.end.438:                                       ; preds = %while.end.433
  %256 = load i64, i64* %pos.addr, align 8
  %inc439 = add nsw i64 %256, 1
  store i64 %inc439, i64* %pos.addr, align 8
  br label %while.body.372

while.end.440:                                    ; preds = %if.then.436
  %257 = load i64, i64* %n.addr, align 8
  %dec441 = add nsw i64 %257, -1
  store i64 %dec441, i64* %n.addr, align 8
  br label %while.cond.367

while.end.442:                                    ; preds = %while.cond.367
  br label %if.end.1011

if.else.443:                                      ; preds = %if.else.363
  %258 = load i64, i64* %lim.addr, align 8
  %259 = load i64, i64* %pos.addr, align 8
  %cmp444 = icmp slt i64 %258, %259
  br i1 %cmp444, label %land.lhs.true.446, label %if.else.927

land.lhs.true.446:                                ; preds = %if.else.443
  %260 = load i8, i8* %multibyte, align 1
  %tobool447 = trunc i8 %260 to i1
  br i1 %tobool447, label %if.then.449, label %if.else.927

if.then.449:                                      ; preds = %land.lhs.true.446
  br label %while.cond.450

while.cond.450:                                   ; preds = %while.end.924, %if.then.449
  %261 = load i64, i64* %n.addr, align 8
  %cmp451 = icmp slt i64 %261, 0
  br i1 %cmp451, label %while.body.453, label %while.end.926

while.body.453:                                   ; preds = %while.cond.450
  br label %while.body.455

while.body.455:                                   ; preds = %while.body.453, %do.end.923
  %262 = load i64, i64* %pos.addr, align 8
  store i64 %262, i64* %this_pos456, align 8
  %263 = load i64, i64* %pos_byte.addr, align 8
  store i64 %263, i64* %this_pos_byte457, align 8
  %264 = load i64, i64* %len.addr, align 8
  store i64 %264, i64* %this_len458, align 8
  %265 = load i8*, i8** %pat.addr, align 8
  %266 = load i64, i64* %len_byte.addr, align 8
  %add.ptr460 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %add.ptr460, i8** %p459, align 8
  %267 = load i64, i64* %this_pos456, align 8
  %268 = load i64, i64* %len.addr, align 8
  %sub461 = sub nsw i64 %267, %268
  %269 = load i64, i64* %lim.addr, align 8
  %cmp462 = icmp slt i64 %sub461, %269
  br i1 %cmp462, label %if.then.468, label %lor.lhs.false.464

lor.lhs.false.464:                                ; preds = %while.body.455
  %270 = load i64, i64* %pos_byte.addr, align 8
  %271 = load i64, i64* %len_byte.addr, align 8
  %sub465 = sub nsw i64 %270, %271
  %272 = load i64, i64* %lim_byte.addr, align 8
  %cmp466 = icmp slt i64 %sub465, %272
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %lor.lhs.false.464, %while.body.455
  br label %stop

if.end.469:                                       ; preds = %lor.lhs.false.464
  br label %while.cond.470

while.cond.470:                                   ; preds = %if.end.871, %if.end.469
  %273 = load i64, i64* %this_len458, align 8
  %cmp471 = icmp sgt i64 %273, 0
  br i1 %cmp471, label %while.body.473, label %while.end.873

while.body.473:                                   ; preds = %while.cond.470
  br label %do.body.476

do.body.476:                                      ; preds = %while.body.473
  %274 = load i64, i64* %this_pos456, align 8
  %dec477 = add nsw i64 %274, -1
  store i64 %dec477, i64* %this_pos456, align 8
  %275 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_478 = getelementptr inbounds %struct.buffer, %struct.buffer* %275, i32 0, i32 39
  %276 = load i64, i64* %enable_multibyte_characters_478, align 8
  %call479 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp480 = icmp eq i64 %276, %call479
  br i1 %cmp480, label %if.then.482, label %if.else.484

if.then.482:                                      ; preds = %do.body.476
  %277 = load i64, i64* %this_pos_byte457, align 8
  %dec483 = add nsw i64 %277, -1
  store i64 %dec483, i64* %this_pos_byte457, align 8
  br label %if.end.517

if.else.484:                                      ; preds = %do.body.476
  br label %do.body.485

do.body.485:                                      ; preds = %if.else.484
  %278 = load i64, i64* %this_pos_byte457, align 8
  %dec487 = add nsw i64 %278, -1
  store i64 %dec487, i64* %this_pos_byte457, align 8
  %279 = load i64, i64* %this_pos_byte457, align 8
  %280 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text488 = getelementptr inbounds %struct.buffer, %struct.buffer* %280, i32 0, i32 73
  %281 = load %struct.buffer_text*, %struct.buffer_text** %text488, align 8
  %gpt_byte489 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %281, i32 0, i32 3
  %282 = load i64, i64* %gpt_byte489, align 8
  %cmp490 = icmp slt i64 %279, %282
  br i1 %cmp490, label %if.then.492, label %if.else.497

if.then.492:                                      ; preds = %do.body.485
  %283 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text493 = getelementptr inbounds %struct.buffer, %struct.buffer* %283, i32 0, i32 73
  %284 = load %struct.buffer_text*, %struct.buffer_text** %text493, align 8
  %beg494 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %284, i32 0, i32 0
  %285 = load i8*, i8** %beg494, align 8
  %286 = load i64, i64* %this_pos_byte457, align 8
  %add.ptr495 = getelementptr inbounds i8, i8* %285, i64 %286
  %add.ptr496 = getelementptr inbounds i8, i8* %add.ptr495, i64 -1
  store i8* %add.ptr496, i8** %chp486, align 8
  br label %if.end.505

if.else.497:                                      ; preds = %do.body.485
  %287 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text498 = getelementptr inbounds %struct.buffer, %struct.buffer* %287, i32 0, i32 73
  %288 = load %struct.buffer_text*, %struct.buffer_text** %text498, align 8
  %beg499 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %288, i32 0, i32 0
  %289 = load i8*, i8** %beg499, align 8
  %290 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text500 = getelementptr inbounds %struct.buffer, %struct.buffer* %290, i32 0, i32 73
  %291 = load %struct.buffer_text*, %struct.buffer_text** %text500, align 8
  %gap_size501 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %291, i32 0, i32 5
  %292 = load i64, i64* %gap_size501, align 8
  %add.ptr502 = getelementptr inbounds i8, i8* %289, i64 %292
  %293 = load i64, i64* %this_pos_byte457, align 8
  %add.ptr503 = getelementptr inbounds i8, i8* %add.ptr502, i64 %293
  %add.ptr504 = getelementptr inbounds i8, i8* %add.ptr503, i64 -1
  store i8* %add.ptr504, i8** %chp486, align 8
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.497, %if.then.492
  br label %while.cond.506

while.cond.506:                                   ; preds = %while.body.512, %if.end.505
  %294 = load i8*, i8** %chp486, align 8
  %295 = load i8, i8* %294, align 1
  %conv507 = zext i8 %295 to i32
  %and508 = and i32 %conv507, 192
  %cmp509 = icmp ne i32 %and508, 128
  %lnot511 = xor i1 %cmp509, true
  br i1 %lnot511, label %while.body.512, label %while.end.515

while.body.512:                                   ; preds = %while.cond.506
  %296 = load i8*, i8** %chp486, align 8
  %incdec.ptr513 = getelementptr inbounds i8, i8* %296, i32 -1
  store i8* %incdec.ptr513, i8** %chp486, align 8
  %297 = load i64, i64* %this_pos_byte457, align 8
  %dec514 = add nsw i64 %297, -1
  store i64 %dec514, i64* %this_pos_byte457, align 8
  br label %while.cond.506

while.end.515:                                    ; preds = %while.cond.506
  br label %do.end.516

do.end.516:                                       ; preds = %while.end.515
  br label %if.end.517

if.end.517:                                       ; preds = %do.end.516, %if.then.482
  br label %do.end.518

do.end.518:                                       ; preds = %if.end.517
  br label %do.body.519

do.body.519:                                      ; preds = %do.end.518
  %298 = load i8*, i8** %p459, align 8
  %299 = load i8*, i8** %pat.addr, align 8
  %cmp520 = icmp ugt i8* %298, %299
  br i1 %cmp520, label %if.then.522, label %if.end.568

if.then.522:                                      ; preds = %do.body.519
  %300 = load i8*, i8** %p459, align 8
  store i8* %300, i8** %chp523, align 8
  br label %do.body.524

do.body.524:                                      ; preds = %land.end, %if.then.522
  %301 = load i8*, i8** %chp523, align 8
  %incdec.ptr525 = getelementptr inbounds i8, i8* %301, i32 -1
  store i8* %incdec.ptr525, i8** %chp523, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.524
  %302 = load i8*, i8** %chp523, align 8
  %303 = load i8*, i8** %pat.addr, align 8
  %cmp526 = icmp uge i8* %302, %303
  br i1 %cmp526, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %304 = load i8*, i8** %chp523, align 8
  %305 = load i8, i8* %304, align 1
  %conv528 = zext i8 %305 to i32
  %and529 = and i32 %conv528, 192
  %cmp530 = icmp ne i32 %and529, 128
  %lnot532 = xor i1 %cmp530, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %306 = phi i1 [ false, %do.cond ], [ %lnot532, %land.rhs ]
  br i1 %306, label %do.body.524, label %do.end.533

do.end.533:                                       ; preds = %land.end
  %307 = load i8*, i8** %chp523, align 8
  %308 = load i8, i8* %307, align 1
  %conv534 = zext i8 %308 to i32
  %and535 = and i32 %conv534, 128
  %tobool536 = icmp ne i32 %and535, 0
  br i1 %tobool536, label %cond.false.538, label %cond.true.537

cond.true.537:                                    ; preds = %do.end.533
  br label %cond.end.558

cond.false.538:                                   ; preds = %do.end.533
  %309 = load i8*, i8** %chp523, align 8
  %310 = load i8, i8* %309, align 1
  %conv539 = zext i8 %310 to i32
  %and540 = and i32 %conv539, 32
  %tobool541 = icmp ne i32 %and540, 0
  br i1 %tobool541, label %cond.false.543, label %cond.true.542

cond.true.542:                                    ; preds = %cond.false.538
  br label %cond.end.556

cond.false.543:                                   ; preds = %cond.false.538
  %311 = load i8*, i8** %chp523, align 8
  %312 = load i8, i8* %311, align 1
  %conv544 = zext i8 %312 to i32
  %and545 = and i32 %conv544, 16
  %tobool546 = icmp ne i32 %and545, 0
  br i1 %tobool546, label %cond.false.548, label %cond.true.547

cond.true.547:                                    ; preds = %cond.false.543
  br label %cond.end.554

cond.false.548:                                   ; preds = %cond.false.543
  %313 = load i8*, i8** %chp523, align 8
  %314 = load i8, i8* %313, align 1
  %conv549 = zext i8 %314 to i32
  %and550 = and i32 %conv549, 8
  %tobool551 = icmp ne i32 %and550, 0
  %lnot552 = xor i1 %tobool551, true
  %cond553 = select i1 %lnot552, i32 4, i32 5
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.false.548, %cond.true.547
  %cond555 = phi i32 [ 3, %cond.true.547 ], [ %cond553, %cond.false.548 ]
  br label %cond.end.556

cond.end.556:                                     ; preds = %cond.end.554, %cond.true.542
  %cond557 = phi i32 [ 2, %cond.true.542 ], [ %cond555, %cond.end.554 ]
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.end.556, %cond.true.537
  %cond559 = phi i32 [ 1, %cond.true.537 ], [ %cond557, %cond.end.556 ]
  %conv560 = sext i32 %cond559 to i64
  %315 = load i8*, i8** %p459, align 8
  %316 = load i8*, i8** %chp523, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %315 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %316 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp561 = icmp eq i64 %conv560, %sub.ptr.sub
  br i1 %cmp561, label %cond.true.563, label %cond.false.564

cond.true.563:                                    ; preds = %cond.end.558
  %317 = load i8*, i8** %chp523, align 8
  br label %cond.end.566

cond.false.564:                                   ; preds = %cond.end.558
  %318 = load i8*, i8** %p459, align 8
  %add.ptr565 = getelementptr inbounds i8, i8* %318, i64 -1
  br label %cond.end.566

cond.end.566:                                     ; preds = %cond.false.564, %cond.true.563
  %cond567 = phi i8* [ %317, %cond.true.563 ], [ %add.ptr565, %cond.false.564 ]
  store i8* %cond567, i8** %p459, align 8
  br label %if.end.568

if.end.568:                                       ; preds = %cond.end.566, %do.body.519
  br label %do.end.570

do.end.570:                                       ; preds = %if.end.568
  %319 = load i8*, i8** %p459, align 8
  %arrayidx571 = getelementptr inbounds i8, i8* %319, i64 0
  %320 = load i8, i8* %arrayidx571, align 1
  %conv572 = zext i8 %320 to i32
  %and573 = and i32 %conv572, 128
  %tobool574 = icmp ne i32 %and573, 0
  br i1 %tobool574, label %cond.false.578, label %cond.true.575

cond.true.575:                                    ; preds = %do.end.570
  %321 = load i8*, i8** %p459, align 8
  %arrayidx576 = getelementptr inbounds i8, i8* %321, i64 0
  %322 = load i8, i8* %arrayidx576, align 1
  %conv577 = zext i8 %322 to i32
  br label %cond.end.623

cond.false.578:                                   ; preds = %do.end.570
  %323 = load i8*, i8** %p459, align 8
  %arrayidx579 = getelementptr inbounds i8, i8* %323, i64 0
  %324 = load i8, i8* %arrayidx579, align 1
  %conv580 = zext i8 %324 to i32
  %and581 = and i32 %conv580, 32
  %tobool582 = icmp ne i32 %and581, 0
  br i1 %tobool582, label %cond.false.598, label %cond.true.583

cond.true.583:                                    ; preds = %cond.false.578
  %325 = load i8*, i8** %p459, align 8
  %arrayidx584 = getelementptr inbounds i8, i8* %325, i64 0
  %326 = load i8, i8* %arrayidx584, align 1
  %conv585 = zext i8 %326 to i32
  %and586 = and i32 %conv585, 31
  %shl587 = shl i32 %and586, 6
  %327 = load i8*, i8** %p459, align 8
  %arrayidx588 = getelementptr inbounds i8, i8* %327, i64 1
  %328 = load i8, i8* %arrayidx588, align 1
  %conv589 = zext i8 %328 to i32
  %and590 = and i32 %conv589, 63
  %or591 = or i32 %shl587, %and590
  %329 = load i8*, i8** %p459, align 8
  %arrayidx592 = getelementptr inbounds i8, i8* %329, i64 0
  %330 = load i8, i8* %arrayidx592, align 1
  %conv593 = zext i8 %330 to i32
  %cmp594 = icmp slt i32 %conv593, 194
  %cond596 = select i1 %cmp594, i32 4194176, i32 0
  %add597 = add nsw i32 %or591, %cond596
  br label %cond.end.621

cond.false.598:                                   ; preds = %cond.false.578
  %331 = load i8*, i8** %p459, align 8
  %arrayidx599 = getelementptr inbounds i8, i8* %331, i64 0
  %332 = load i8, i8* %arrayidx599, align 1
  %conv600 = zext i8 %332 to i32
  %and601 = and i32 %conv600, 16
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %cond.false.617, label %cond.true.603

cond.true.603:                                    ; preds = %cond.false.598
  %333 = load i8*, i8** %p459, align 8
  %arrayidx604 = getelementptr inbounds i8, i8* %333, i64 0
  %334 = load i8, i8* %arrayidx604, align 1
  %conv605 = zext i8 %334 to i32
  %and606 = and i32 %conv605, 15
  %shl607 = shl i32 %and606, 12
  %335 = load i8*, i8** %p459, align 8
  %arrayidx608 = getelementptr inbounds i8, i8* %335, i64 1
  %336 = load i8, i8* %arrayidx608, align 1
  %conv609 = zext i8 %336 to i32
  %and610 = and i32 %conv609, 63
  %shl611 = shl i32 %and610, 6
  %or612 = or i32 %shl607, %shl611
  %337 = load i8*, i8** %p459, align 8
  %arrayidx613 = getelementptr inbounds i8, i8* %337, i64 2
  %338 = load i8, i8* %arrayidx613, align 1
  %conv614 = zext i8 %338 to i32
  %and615 = and i32 %conv614, 63
  %or616 = or i32 %or612, %and615
  br label %cond.end.619

cond.false.617:                                   ; preds = %cond.false.598
  %339 = load i8*, i8** %p459, align 8
  %call618 = call i32 @string_char(i8* %339, i8** null, i32* null)
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.617, %cond.true.603
  %cond620 = phi i32 [ %or616, %cond.true.603 ], [ %call618, %cond.false.617 ]
  br label %cond.end.621

cond.end.621:                                     ; preds = %cond.end.619, %cond.true.583
  %cond622 = phi i32 [ %add597, %cond.true.583 ], [ %cond620, %cond.end.619 ]
  br label %cond.end.623

cond.end.623:                                     ; preds = %cond.end.621, %cond.true.575
  %cond624 = phi i32 [ %conv577, %cond.true.575 ], [ %cond622, %cond.end.621 ]
  store i32 %cond624, i32* %pat_ch474, align 4
  %340 = load i64, i64* %this_pos_byte457, align 8
  %341 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text625 = getelementptr inbounds %struct.buffer, %struct.buffer* %341, i32 0, i32 73
  %342 = load %struct.buffer_text*, %struct.buffer_text** %text625, align 8
  %gpt_byte626 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %342, i32 0, i32 3
  %343 = load i64, i64* %gpt_byte626, align 8
  %cmp627 = icmp sge i64 %340, %343
  br i1 %cmp627, label %cond.true.629, label %cond.false.632

cond.true.629:                                    ; preds = %cond.end.623
  %344 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text630 = getelementptr inbounds %struct.buffer, %struct.buffer* %344, i32 0, i32 73
  %345 = load %struct.buffer_text*, %struct.buffer_text** %text630, align 8
  %gap_size631 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %345, i32 0, i32 5
  %346 = load i64, i64* %gap_size631, align 8
  br label %cond.end.633

cond.false.632:                                   ; preds = %cond.end.623
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.632, %cond.true.629
  %cond634 = phi i64 [ %346, %cond.true.629 ], [ 0, %cond.false.632 ]
  %347 = load i64, i64* %this_pos_byte457, align 8
  %add635 = add nsw i64 %cond634, %347
  %348 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text636 = getelementptr inbounds %struct.buffer, %struct.buffer* %348, i32 0, i32 73
  %349 = load %struct.buffer_text*, %struct.buffer_text** %text636, align 8
  %beg637 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %349, i32 0, i32 0
  %350 = load i8*, i8** %beg637, align 8
  %add.ptr638 = getelementptr inbounds i8, i8* %350, i64 %add635
  %add.ptr639 = getelementptr inbounds i8, i8* %add.ptr638, i64 -1
  %arrayidx640 = getelementptr inbounds i8, i8* %add.ptr639, i64 0
  %351 = load i8, i8* %arrayidx640, align 1
  %conv641 = zext i8 %351 to i32
  %and642 = and i32 %conv641, 128
  %tobool643 = icmp ne i32 %and642, 0
  br i1 %tobool643, label %cond.false.662, label %cond.true.644

cond.true.644:                                    ; preds = %cond.end.633
  %352 = load i64, i64* %this_pos_byte457, align 8
  %353 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text645 = getelementptr inbounds %struct.buffer, %struct.buffer* %353, i32 0, i32 73
  %354 = load %struct.buffer_text*, %struct.buffer_text** %text645, align 8
  %gpt_byte646 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %354, i32 0, i32 3
  %355 = load i64, i64* %gpt_byte646, align 8
  %cmp647 = icmp sge i64 %352, %355
  br i1 %cmp647, label %cond.true.649, label %cond.false.652

cond.true.649:                                    ; preds = %cond.true.644
  %356 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text650 = getelementptr inbounds %struct.buffer, %struct.buffer* %356, i32 0, i32 73
  %357 = load %struct.buffer_text*, %struct.buffer_text** %text650, align 8
  %gap_size651 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %357, i32 0, i32 5
  %358 = load i64, i64* %gap_size651, align 8
  br label %cond.end.653

cond.false.652:                                   ; preds = %cond.true.644
  br label %cond.end.653

cond.end.653:                                     ; preds = %cond.false.652, %cond.true.649
  %cond654 = phi i64 [ %358, %cond.true.649 ], [ 0, %cond.false.652 ]
  %359 = load i64, i64* %this_pos_byte457, align 8
  %add655 = add nsw i64 %cond654, %359
  %360 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text656 = getelementptr inbounds %struct.buffer, %struct.buffer* %360, i32 0, i32 73
  %361 = load %struct.buffer_text*, %struct.buffer_text** %text656, align 8
  %beg657 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %361, i32 0, i32 0
  %362 = load i8*, i8** %beg657, align 8
  %add.ptr658 = getelementptr inbounds i8, i8* %362, i64 %add655
  %add.ptr659 = getelementptr inbounds i8, i8* %add.ptr658, i64 -1
  %arrayidx660 = getelementptr inbounds i8, i8* %add.ptr659, i64 0
  %363 = load i8, i8* %arrayidx660, align 1
  %conv661 = zext i8 %363 to i32
  br label %cond.end.842

cond.false.662:                                   ; preds = %cond.end.633
  %364 = load i64, i64* %this_pos_byte457, align 8
  %365 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text663 = getelementptr inbounds %struct.buffer, %struct.buffer* %365, i32 0, i32 73
  %366 = load %struct.buffer_text*, %struct.buffer_text** %text663, align 8
  %gpt_byte664 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %366, i32 0, i32 3
  %367 = load i64, i64* %gpt_byte664, align 8
  %cmp665 = icmp sge i64 %364, %367
  br i1 %cmp665, label %cond.true.667, label %cond.false.670

cond.true.667:                                    ; preds = %cond.false.662
  %368 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text668 = getelementptr inbounds %struct.buffer, %struct.buffer* %368, i32 0, i32 73
  %369 = load %struct.buffer_text*, %struct.buffer_text** %text668, align 8
  %gap_size669 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %369, i32 0, i32 5
  %370 = load i64, i64* %gap_size669, align 8
  br label %cond.end.671

cond.false.670:                                   ; preds = %cond.false.662
  br label %cond.end.671

cond.end.671:                                     ; preds = %cond.false.670, %cond.true.667
  %cond672 = phi i64 [ %370, %cond.true.667 ], [ 0, %cond.false.670 ]
  %371 = load i64, i64* %this_pos_byte457, align 8
  %add673 = add nsw i64 %cond672, %371
  %372 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text674 = getelementptr inbounds %struct.buffer, %struct.buffer* %372, i32 0, i32 73
  %373 = load %struct.buffer_text*, %struct.buffer_text** %text674, align 8
  %beg675 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %373, i32 0, i32 0
  %374 = load i8*, i8** %beg675, align 8
  %add.ptr676 = getelementptr inbounds i8, i8* %374, i64 %add673
  %add.ptr677 = getelementptr inbounds i8, i8* %add.ptr676, i64 -1
  %arrayidx678 = getelementptr inbounds i8, i8* %add.ptr677, i64 0
  %375 = load i8, i8* %arrayidx678, align 1
  %conv679 = zext i8 %375 to i32
  %and680 = and i32 %conv679, 32
  %tobool681 = icmp ne i32 %and680, 0
  br i1 %tobool681, label %cond.false.742, label %cond.true.682

cond.true.682:                                    ; preds = %cond.end.671
  %376 = load i64, i64* %this_pos_byte457, align 8
  %377 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text683 = getelementptr inbounds %struct.buffer, %struct.buffer* %377, i32 0, i32 73
  %378 = load %struct.buffer_text*, %struct.buffer_text** %text683, align 8
  %gpt_byte684 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %378, i32 0, i32 3
  %379 = load i64, i64* %gpt_byte684, align 8
  %cmp685 = icmp sge i64 %376, %379
  br i1 %cmp685, label %cond.true.687, label %cond.false.690

cond.true.687:                                    ; preds = %cond.true.682
  %380 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text688 = getelementptr inbounds %struct.buffer, %struct.buffer* %380, i32 0, i32 73
  %381 = load %struct.buffer_text*, %struct.buffer_text** %text688, align 8
  %gap_size689 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %381, i32 0, i32 5
  %382 = load i64, i64* %gap_size689, align 8
  br label %cond.end.691

cond.false.690:                                   ; preds = %cond.true.682
  br label %cond.end.691

cond.end.691:                                     ; preds = %cond.false.690, %cond.true.687
  %cond692 = phi i64 [ %382, %cond.true.687 ], [ 0, %cond.false.690 ]
  %383 = load i64, i64* %this_pos_byte457, align 8
  %add693 = add nsw i64 %cond692, %383
  %384 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text694 = getelementptr inbounds %struct.buffer, %struct.buffer* %384, i32 0, i32 73
  %385 = load %struct.buffer_text*, %struct.buffer_text** %text694, align 8
  %beg695 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %385, i32 0, i32 0
  %386 = load i8*, i8** %beg695, align 8
  %add.ptr696 = getelementptr inbounds i8, i8* %386, i64 %add693
  %add.ptr697 = getelementptr inbounds i8, i8* %add.ptr696, i64 -1
  %arrayidx698 = getelementptr inbounds i8, i8* %add.ptr697, i64 0
  %387 = load i8, i8* %arrayidx698, align 1
  %conv699 = zext i8 %387 to i32
  %and700 = and i32 %conv699, 31
  %shl701 = shl i32 %and700, 6
  %388 = load i64, i64* %this_pos_byte457, align 8
  %389 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text702 = getelementptr inbounds %struct.buffer, %struct.buffer* %389, i32 0, i32 73
  %390 = load %struct.buffer_text*, %struct.buffer_text** %text702, align 8
  %gpt_byte703 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %390, i32 0, i32 3
  %391 = load i64, i64* %gpt_byte703, align 8
  %cmp704 = icmp sge i64 %388, %391
  br i1 %cmp704, label %cond.true.706, label %cond.false.709

cond.true.706:                                    ; preds = %cond.end.691
  %392 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text707 = getelementptr inbounds %struct.buffer, %struct.buffer* %392, i32 0, i32 73
  %393 = load %struct.buffer_text*, %struct.buffer_text** %text707, align 8
  %gap_size708 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %393, i32 0, i32 5
  %394 = load i64, i64* %gap_size708, align 8
  br label %cond.end.710

cond.false.709:                                   ; preds = %cond.end.691
  br label %cond.end.710

cond.end.710:                                     ; preds = %cond.false.709, %cond.true.706
  %cond711 = phi i64 [ %394, %cond.true.706 ], [ 0, %cond.false.709 ]
  %395 = load i64, i64* %this_pos_byte457, align 8
  %add712 = add nsw i64 %cond711, %395
  %396 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text713 = getelementptr inbounds %struct.buffer, %struct.buffer* %396, i32 0, i32 73
  %397 = load %struct.buffer_text*, %struct.buffer_text** %text713, align 8
  %beg714 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %397, i32 0, i32 0
  %398 = load i8*, i8** %beg714, align 8
  %add.ptr715 = getelementptr inbounds i8, i8* %398, i64 %add712
  %add.ptr716 = getelementptr inbounds i8, i8* %add.ptr715, i64 -1
  %arrayidx717 = getelementptr inbounds i8, i8* %add.ptr716, i64 1
  %399 = load i8, i8* %arrayidx717, align 1
  %conv718 = zext i8 %399 to i32
  %and719 = and i32 %conv718, 63
  %or720 = or i32 %shl701, %and719
  %400 = load i64, i64* %this_pos_byte457, align 8
  %401 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text721 = getelementptr inbounds %struct.buffer, %struct.buffer* %401, i32 0, i32 73
  %402 = load %struct.buffer_text*, %struct.buffer_text** %text721, align 8
  %gpt_byte722 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %402, i32 0, i32 3
  %403 = load i64, i64* %gpt_byte722, align 8
  %cmp723 = icmp sge i64 %400, %403
  br i1 %cmp723, label %cond.true.725, label %cond.false.728

cond.true.725:                                    ; preds = %cond.end.710
  %404 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text726 = getelementptr inbounds %struct.buffer, %struct.buffer* %404, i32 0, i32 73
  %405 = load %struct.buffer_text*, %struct.buffer_text** %text726, align 8
  %gap_size727 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %405, i32 0, i32 5
  %406 = load i64, i64* %gap_size727, align 8
  br label %cond.end.729

cond.false.728:                                   ; preds = %cond.end.710
  br label %cond.end.729

cond.end.729:                                     ; preds = %cond.false.728, %cond.true.725
  %cond730 = phi i64 [ %406, %cond.true.725 ], [ 0, %cond.false.728 ]
  %407 = load i64, i64* %this_pos_byte457, align 8
  %add731 = add nsw i64 %cond730, %407
  %408 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text732 = getelementptr inbounds %struct.buffer, %struct.buffer* %408, i32 0, i32 73
  %409 = load %struct.buffer_text*, %struct.buffer_text** %text732, align 8
  %beg733 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %409, i32 0, i32 0
  %410 = load i8*, i8** %beg733, align 8
  %add.ptr734 = getelementptr inbounds i8, i8* %410, i64 %add731
  %add.ptr735 = getelementptr inbounds i8, i8* %add.ptr734, i64 -1
  %arrayidx736 = getelementptr inbounds i8, i8* %add.ptr735, i64 0
  %411 = load i8, i8* %arrayidx736, align 1
  %conv737 = zext i8 %411 to i32
  %cmp738 = icmp slt i32 %conv737, 194
  %cond740 = select i1 %cmp738, i32 4194176, i32 0
  %add741 = add nsw i32 %or720, %cond740
  br label %cond.end.840

cond.false.742:                                   ; preds = %cond.end.671
  %412 = load i64, i64* %this_pos_byte457, align 8
  %413 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text743 = getelementptr inbounds %struct.buffer, %struct.buffer* %413, i32 0, i32 73
  %414 = load %struct.buffer_text*, %struct.buffer_text** %text743, align 8
  %gpt_byte744 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %414, i32 0, i32 3
  %415 = load i64, i64* %gpt_byte744, align 8
  %cmp745 = icmp sge i64 %412, %415
  br i1 %cmp745, label %cond.true.747, label %cond.false.750

cond.true.747:                                    ; preds = %cond.false.742
  %416 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text748 = getelementptr inbounds %struct.buffer, %struct.buffer* %416, i32 0, i32 73
  %417 = load %struct.buffer_text*, %struct.buffer_text** %text748, align 8
  %gap_size749 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %417, i32 0, i32 5
  %418 = load i64, i64* %gap_size749, align 8
  br label %cond.end.751

cond.false.750:                                   ; preds = %cond.false.742
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.750, %cond.true.747
  %cond752 = phi i64 [ %418, %cond.true.747 ], [ 0, %cond.false.750 ]
  %419 = load i64, i64* %this_pos_byte457, align 8
  %add753 = add nsw i64 %cond752, %419
  %420 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text754 = getelementptr inbounds %struct.buffer, %struct.buffer* %420, i32 0, i32 73
  %421 = load %struct.buffer_text*, %struct.buffer_text** %text754, align 8
  %beg755 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %421, i32 0, i32 0
  %422 = load i8*, i8** %beg755, align 8
  %add.ptr756 = getelementptr inbounds i8, i8* %422, i64 %add753
  %add.ptr757 = getelementptr inbounds i8, i8* %add.ptr756, i64 -1
  %arrayidx758 = getelementptr inbounds i8, i8* %add.ptr757, i64 0
  %423 = load i8, i8* %arrayidx758, align 1
  %conv759 = zext i8 %423 to i32
  %and760 = and i32 %conv759, 16
  %tobool761 = icmp ne i32 %and760, 0
  br i1 %tobool761, label %cond.false.821, label %cond.true.762

cond.true.762:                                    ; preds = %cond.end.751
  %424 = load i64, i64* %this_pos_byte457, align 8
  %425 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text763 = getelementptr inbounds %struct.buffer, %struct.buffer* %425, i32 0, i32 73
  %426 = load %struct.buffer_text*, %struct.buffer_text** %text763, align 8
  %gpt_byte764 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %426, i32 0, i32 3
  %427 = load i64, i64* %gpt_byte764, align 8
  %cmp765 = icmp sge i64 %424, %427
  br i1 %cmp765, label %cond.true.767, label %cond.false.770

cond.true.767:                                    ; preds = %cond.true.762
  %428 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text768 = getelementptr inbounds %struct.buffer, %struct.buffer* %428, i32 0, i32 73
  %429 = load %struct.buffer_text*, %struct.buffer_text** %text768, align 8
  %gap_size769 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %429, i32 0, i32 5
  %430 = load i64, i64* %gap_size769, align 8
  br label %cond.end.771

cond.false.770:                                   ; preds = %cond.true.762
  br label %cond.end.771

cond.end.771:                                     ; preds = %cond.false.770, %cond.true.767
  %cond772 = phi i64 [ %430, %cond.true.767 ], [ 0, %cond.false.770 ]
  %431 = load i64, i64* %this_pos_byte457, align 8
  %add773 = add nsw i64 %cond772, %431
  %432 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text774 = getelementptr inbounds %struct.buffer, %struct.buffer* %432, i32 0, i32 73
  %433 = load %struct.buffer_text*, %struct.buffer_text** %text774, align 8
  %beg775 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %433, i32 0, i32 0
  %434 = load i8*, i8** %beg775, align 8
  %add.ptr776 = getelementptr inbounds i8, i8* %434, i64 %add773
  %add.ptr777 = getelementptr inbounds i8, i8* %add.ptr776, i64 -1
  %arrayidx778 = getelementptr inbounds i8, i8* %add.ptr777, i64 0
  %435 = load i8, i8* %arrayidx778, align 1
  %conv779 = zext i8 %435 to i32
  %and780 = and i32 %conv779, 15
  %shl781 = shl i32 %and780, 12
  %436 = load i64, i64* %this_pos_byte457, align 8
  %437 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text782 = getelementptr inbounds %struct.buffer, %struct.buffer* %437, i32 0, i32 73
  %438 = load %struct.buffer_text*, %struct.buffer_text** %text782, align 8
  %gpt_byte783 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %438, i32 0, i32 3
  %439 = load i64, i64* %gpt_byte783, align 8
  %cmp784 = icmp sge i64 %436, %439
  br i1 %cmp784, label %cond.true.786, label %cond.false.789

cond.true.786:                                    ; preds = %cond.end.771
  %440 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text787 = getelementptr inbounds %struct.buffer, %struct.buffer* %440, i32 0, i32 73
  %441 = load %struct.buffer_text*, %struct.buffer_text** %text787, align 8
  %gap_size788 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %441, i32 0, i32 5
  %442 = load i64, i64* %gap_size788, align 8
  br label %cond.end.790

cond.false.789:                                   ; preds = %cond.end.771
  br label %cond.end.790

cond.end.790:                                     ; preds = %cond.false.789, %cond.true.786
  %cond791 = phi i64 [ %442, %cond.true.786 ], [ 0, %cond.false.789 ]
  %443 = load i64, i64* %this_pos_byte457, align 8
  %add792 = add nsw i64 %cond791, %443
  %444 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text793 = getelementptr inbounds %struct.buffer, %struct.buffer* %444, i32 0, i32 73
  %445 = load %struct.buffer_text*, %struct.buffer_text** %text793, align 8
  %beg794 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %445, i32 0, i32 0
  %446 = load i8*, i8** %beg794, align 8
  %add.ptr795 = getelementptr inbounds i8, i8* %446, i64 %add792
  %add.ptr796 = getelementptr inbounds i8, i8* %add.ptr795, i64 -1
  %arrayidx797 = getelementptr inbounds i8, i8* %add.ptr796, i64 1
  %447 = load i8, i8* %arrayidx797, align 1
  %conv798 = zext i8 %447 to i32
  %and799 = and i32 %conv798, 63
  %shl800 = shl i32 %and799, 6
  %or801 = or i32 %shl781, %shl800
  %448 = load i64, i64* %this_pos_byte457, align 8
  %449 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text802 = getelementptr inbounds %struct.buffer, %struct.buffer* %449, i32 0, i32 73
  %450 = load %struct.buffer_text*, %struct.buffer_text** %text802, align 8
  %gpt_byte803 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %450, i32 0, i32 3
  %451 = load i64, i64* %gpt_byte803, align 8
  %cmp804 = icmp sge i64 %448, %451
  br i1 %cmp804, label %cond.true.806, label %cond.false.809

cond.true.806:                                    ; preds = %cond.end.790
  %452 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text807 = getelementptr inbounds %struct.buffer, %struct.buffer* %452, i32 0, i32 73
  %453 = load %struct.buffer_text*, %struct.buffer_text** %text807, align 8
  %gap_size808 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %453, i32 0, i32 5
  %454 = load i64, i64* %gap_size808, align 8
  br label %cond.end.810

cond.false.809:                                   ; preds = %cond.end.790
  br label %cond.end.810

cond.end.810:                                     ; preds = %cond.false.809, %cond.true.806
  %cond811 = phi i64 [ %454, %cond.true.806 ], [ 0, %cond.false.809 ]
  %455 = load i64, i64* %this_pos_byte457, align 8
  %add812 = add nsw i64 %cond811, %455
  %456 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text813 = getelementptr inbounds %struct.buffer, %struct.buffer* %456, i32 0, i32 73
  %457 = load %struct.buffer_text*, %struct.buffer_text** %text813, align 8
  %beg814 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %457, i32 0, i32 0
  %458 = load i8*, i8** %beg814, align 8
  %add.ptr815 = getelementptr inbounds i8, i8* %458, i64 %add812
  %add.ptr816 = getelementptr inbounds i8, i8* %add.ptr815, i64 -1
  %arrayidx817 = getelementptr inbounds i8, i8* %add.ptr816, i64 2
  %459 = load i8, i8* %arrayidx817, align 1
  %conv818 = zext i8 %459 to i32
  %and819 = and i32 %conv818, 63
  %or820 = or i32 %or801, %and819
  br label %cond.end.838

cond.false.821:                                   ; preds = %cond.end.751
  %460 = load i64, i64* %this_pos_byte457, align 8
  %461 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text822 = getelementptr inbounds %struct.buffer, %struct.buffer* %461, i32 0, i32 73
  %462 = load %struct.buffer_text*, %struct.buffer_text** %text822, align 8
  %gpt_byte823 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %462, i32 0, i32 3
  %463 = load i64, i64* %gpt_byte823, align 8
  %cmp824 = icmp sge i64 %460, %463
  br i1 %cmp824, label %cond.true.826, label %cond.false.829

cond.true.826:                                    ; preds = %cond.false.821
  %464 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text827 = getelementptr inbounds %struct.buffer, %struct.buffer* %464, i32 0, i32 73
  %465 = load %struct.buffer_text*, %struct.buffer_text** %text827, align 8
  %gap_size828 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %465, i32 0, i32 5
  %466 = load i64, i64* %gap_size828, align 8
  br label %cond.end.830

cond.false.829:                                   ; preds = %cond.false.821
  br label %cond.end.830

cond.end.830:                                     ; preds = %cond.false.829, %cond.true.826
  %cond831 = phi i64 [ %466, %cond.true.826 ], [ 0, %cond.false.829 ]
  %467 = load i64, i64* %this_pos_byte457, align 8
  %add832 = add nsw i64 %cond831, %467
  %468 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text833 = getelementptr inbounds %struct.buffer, %struct.buffer* %468, i32 0, i32 73
  %469 = load %struct.buffer_text*, %struct.buffer_text** %text833, align 8
  %beg834 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %469, i32 0, i32 0
  %470 = load i8*, i8** %beg834, align 8
  %add.ptr835 = getelementptr inbounds i8, i8* %470, i64 %add832
  %add.ptr836 = getelementptr inbounds i8, i8* %add.ptr835, i64 -1
  %call837 = call i32 @string_char(i8* %add.ptr836, i8** null, i32* null)
  br label %cond.end.838

cond.end.838:                                     ; preds = %cond.end.830, %cond.end.810
  %cond839 = phi i32 [ %or820, %cond.end.810 ], [ %call837, %cond.end.830 ]
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.end.838, %cond.end.729
  %cond841 = phi i32 [ %add741, %cond.end.729 ], [ %cond839, %cond.end.838 ]
  br label %cond.end.842

cond.end.842:                                     ; preds = %cond.end.840, %cond.end.653
  %cond843 = phi i32 [ %conv661, %cond.end.653 ], [ %cond841, %cond.end.840 ]
  store i32 %cond843, i32* %buf_ch475, align 4
  br label %do.body.844

do.body.844:                                      ; preds = %cond.end.842
  %471 = load i64, i64* %trt.addr, align 8
  %call845 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp846 = icmp eq i64 %471, %call845
  br i1 %cmp846, label %if.else.864, label %if.then.848

if.then.848:                                      ; preds = %do.body.844
  %472 = load i64, i64* %trt.addr, align 8
  %473 = load i32, i32* %buf_ch475, align 4
  %conv850 = sext i32 %473 to i64
  %shl851 = shl i64 %conv850, 2
  %add852 = add i64 %shl851, 2
  %call853 = call i64 @Faref(i64 %472, i64 %add852)
  store i64 %call853, i64* %temp849, align 8
  %474 = load i64, i64* %temp849, align 8
  %and854 = and i64 %474, 7
  %conv855 = trunc i64 %and854 to i32
  %and856 = and i32 %conv855, -5
  %cmp857 = icmp eq i32 %and856, 2
  br i1 %cmp857, label %if.then.859, label %if.else.862

if.then.859:                                      ; preds = %if.then.848
  %475 = load i64, i64* %temp849, align 8
  %shr860 = ashr i64 %475, 2
  %conv861 = trunc i64 %shr860 to i32
  store i32 %conv861, i32* %buf_ch475, align 4
  br label %if.end.863

if.else.862:                                      ; preds = %if.then.848
  %476 = load i32, i32* %buf_ch475, align 4
  store i32 %476, i32* %buf_ch475, align 4
  br label %if.end.863

if.end.863:                                       ; preds = %if.else.862, %if.then.859
  br label %if.end.865

if.else.864:                                      ; preds = %do.body.844
  %477 = load i32, i32* %buf_ch475, align 4
  store i32 %477, i32* %buf_ch475, align 4
  br label %if.end.865

if.end.865:                                       ; preds = %if.else.864, %if.end.863
  br label %do.end.867

do.end.867:                                       ; preds = %if.end.865
  %478 = load i32, i32* %buf_ch475, align 4
  %479 = load i32, i32* %pat_ch474, align 4
  %cmp868 = icmp ne i32 %478, %479
  br i1 %cmp868, label %if.then.870, label %if.end.871

if.then.870:                                      ; preds = %do.end.867
  br label %while.end.873

if.end.871:                                       ; preds = %do.end.867
  %480 = load i64, i64* %this_len458, align 8
  %dec872 = add nsw i64 %480, -1
  store i64 %dec872, i64* %this_len458, align 8
  br label %while.cond.470

while.end.873:                                    ; preds = %if.then.870, %while.cond.470
  %481 = load i64, i64* %this_len458, align 8
  %cmp874 = icmp eq i64 %481, 0
  br i1 %cmp874, label %if.then.876, label %if.end.878

if.then.876:                                      ; preds = %while.end.873
  %482 = load i64, i64* %pos_byte.addr, align 8
  %483 = load i64, i64* %this_pos_byte457, align 8
  %sub877 = sub nsw i64 %482, %483
  store i64 %sub877, i64* %match_byte, align 8
  %484 = load i64, i64* %this_pos456, align 8
  store i64 %484, i64* %pos.addr, align 8
  %485 = load i64, i64* %this_pos_byte457, align 8
  store i64 %485, i64* %pos_byte.addr, align 8
  br label %while.end.924

if.end.878:                                       ; preds = %while.end.873
  br label %do.body.879

do.body.879:                                      ; preds = %if.end.878
  %486 = load i64, i64* %pos.addr, align 8
  %dec880 = add nsw i64 %486, -1
  store i64 %dec880, i64* %pos.addr, align 8
  %487 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_881 = getelementptr inbounds %struct.buffer, %struct.buffer* %487, i32 0, i32 39
  %488 = load i64, i64* %enable_multibyte_characters_881, align 8
  %call882 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp883 = icmp eq i64 %488, %call882
  br i1 %cmp883, label %if.then.885, label %if.else.887

if.then.885:                                      ; preds = %do.body.879
  %489 = load i64, i64* %pos_byte.addr, align 8
  %dec886 = add nsw i64 %489, -1
  store i64 %dec886, i64* %pos_byte.addr, align 8
  br label %if.end.921

if.else.887:                                      ; preds = %do.body.879
  br label %do.body.888

do.body.888:                                      ; preds = %if.else.887
  %490 = load i64, i64* %pos_byte.addr, align 8
  %dec890 = add nsw i64 %490, -1
  store i64 %dec890, i64* %pos_byte.addr, align 8
  %491 = load i64, i64* %pos_byte.addr, align 8
  %492 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text891 = getelementptr inbounds %struct.buffer, %struct.buffer* %492, i32 0, i32 73
  %493 = load %struct.buffer_text*, %struct.buffer_text** %text891, align 8
  %gpt_byte892 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %493, i32 0, i32 3
  %494 = load i64, i64* %gpt_byte892, align 8
  %cmp893 = icmp slt i64 %491, %494
  br i1 %cmp893, label %if.then.895, label %if.else.900

if.then.895:                                      ; preds = %do.body.888
  %495 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text896 = getelementptr inbounds %struct.buffer, %struct.buffer* %495, i32 0, i32 73
  %496 = load %struct.buffer_text*, %struct.buffer_text** %text896, align 8
  %beg897 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %496, i32 0, i32 0
  %497 = load i8*, i8** %beg897, align 8
  %498 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr898 = getelementptr inbounds i8, i8* %497, i64 %498
  %add.ptr899 = getelementptr inbounds i8, i8* %add.ptr898, i64 -1
  store i8* %add.ptr899, i8** %chp889, align 8
  br label %if.end.908

if.else.900:                                      ; preds = %do.body.888
  %499 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text901 = getelementptr inbounds %struct.buffer, %struct.buffer* %499, i32 0, i32 73
  %500 = load %struct.buffer_text*, %struct.buffer_text** %text901, align 8
  %beg902 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %500, i32 0, i32 0
  %501 = load i8*, i8** %beg902, align 8
  %502 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text903 = getelementptr inbounds %struct.buffer, %struct.buffer* %502, i32 0, i32 73
  %503 = load %struct.buffer_text*, %struct.buffer_text** %text903, align 8
  %gap_size904 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %503, i32 0, i32 5
  %504 = load i64, i64* %gap_size904, align 8
  %add.ptr905 = getelementptr inbounds i8, i8* %501, i64 %504
  %505 = load i64, i64* %pos_byte.addr, align 8
  %add.ptr906 = getelementptr inbounds i8, i8* %add.ptr905, i64 %505
  %add.ptr907 = getelementptr inbounds i8, i8* %add.ptr906, i64 -1
  store i8* %add.ptr907, i8** %chp889, align 8
  br label %if.end.908

if.end.908:                                       ; preds = %if.else.900, %if.then.895
  br label %while.cond.909

while.cond.909:                                   ; preds = %while.body.915, %if.end.908
  %506 = load i8*, i8** %chp889, align 8
  %507 = load i8, i8* %506, align 1
  %conv910 = zext i8 %507 to i32
  %and911 = and i32 %conv910, 192
  %cmp912 = icmp ne i32 %and911, 128
  %lnot914 = xor i1 %cmp912, true
  br i1 %lnot914, label %while.body.915, label %while.end.918

while.body.915:                                   ; preds = %while.cond.909
  %508 = load i8*, i8** %chp889, align 8
  %incdec.ptr916 = getelementptr inbounds i8, i8* %508, i32 -1
  store i8* %incdec.ptr916, i8** %chp889, align 8
  %509 = load i64, i64* %pos_byte.addr, align 8
  %dec917 = add nsw i64 %509, -1
  store i64 %dec917, i64* %pos_byte.addr, align 8
  br label %while.cond.909

while.end.918:                                    ; preds = %while.cond.909
  br label %do.end.920

do.end.920:                                       ; preds = %while.end.918
  br label %if.end.921

if.end.921:                                       ; preds = %do.end.920, %if.then.885
  br label %do.end.923

do.end.923:                                       ; preds = %if.end.921
  br label %while.body.455

while.end.924:                                    ; preds = %if.then.876
  %510 = load i64, i64* %n.addr, align 8
  %inc925 = add nsw i64 %510, 1
  store i64 %inc925, i64* %n.addr, align 8
  br label %while.cond.450

while.end.926:                                    ; preds = %while.cond.450
  br label %if.end.1010

if.else.927:                                      ; preds = %land.lhs.true.446, %if.else.443
  %511 = load i64, i64* %lim.addr, align 8
  %512 = load i64, i64* %pos.addr, align 8
  %cmp928 = icmp slt i64 %511, %512
  br i1 %cmp928, label %if.then.930, label %if.end.1009

if.then.930:                                      ; preds = %if.else.927
  br label %while.cond.931

while.cond.931:                                   ; preds = %while.end.1006, %if.then.930
  %513 = load i64, i64* %n.addr, align 8
  %cmp932 = icmp slt i64 %513, 0
  br i1 %cmp932, label %while.body.934, label %while.end.1008

while.body.934:                                   ; preds = %while.cond.931
  br label %while.body.936

while.body.936:                                   ; preds = %while.body.934, %if.end.1004
  %514 = load i64, i64* %pos.addr, align 8
  %515 = load i64, i64* %len.addr, align 8
  %sub938 = sub nsw i64 %514, %515
  store i64 %sub938, i64* %this_pos937, align 8
  %516 = load i64, i64* %len.addr, align 8
  store i64 %516, i64* %this_len939, align 8
  %517 = load i8*, i8** %pat.addr, align 8
  store i8* %517, i8** %p940, align 8
  %518 = load i64, i64* %this_pos937, align 8
  %519 = load i64, i64* %lim.addr, align 8
  %cmp941 = icmp slt i64 %518, %519
  br i1 %cmp941, label %if.then.943, label %if.end.944

if.then.943:                                      ; preds = %while.body.936
  br label %stop

if.end.944:                                       ; preds = %while.body.936
  br label %while.cond.945

while.cond.945:                                   ; preds = %if.end.996, %if.end.944
  %520 = load i64, i64* %this_len939, align 8
  %cmp946 = icmp sgt i64 %520, 0
  br i1 %cmp946, label %while.body.948, label %while.end.999

while.body.948:                                   ; preds = %while.cond.945
  %521 = load i8*, i8** %p940, align 8
  %incdec.ptr950 = getelementptr inbounds i8, i8* %521, i32 1
  store i8* %incdec.ptr950, i8** %p940, align 8
  %522 = load i8, i8* %521, align 1
  %conv951 = zext i8 %522 to i32
  store i32 %conv951, i32* %pat_ch949, align 4
  %523 = load i64, i64* %this_pos937, align 8
  %524 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text953 = getelementptr inbounds %struct.buffer, %struct.buffer* %524, i32 0, i32 73
  %525 = load %struct.buffer_text*, %struct.buffer_text** %text953, align 8
  %gpt_byte954 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %525, i32 0, i32 3
  %526 = load i64, i64* %gpt_byte954, align 8
  %cmp955 = icmp sge i64 %523, %526
  br i1 %cmp955, label %cond.true.957, label %cond.false.960

cond.true.957:                                    ; preds = %while.body.948
  %527 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text958 = getelementptr inbounds %struct.buffer, %struct.buffer* %527, i32 0, i32 73
  %528 = load %struct.buffer_text*, %struct.buffer_text** %text958, align 8
  %gap_size959 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %528, i32 0, i32 5
  %529 = load i64, i64* %gap_size959, align 8
  br label %cond.end.961

cond.false.960:                                   ; preds = %while.body.948
  br label %cond.end.961

cond.end.961:                                     ; preds = %cond.false.960, %cond.true.957
  %cond962 = phi i64 [ %529, %cond.true.957 ], [ 0, %cond.false.960 ]
  %530 = load i64, i64* %this_pos937, align 8
  %add963 = add nsw i64 %cond962, %530
  %531 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text964 = getelementptr inbounds %struct.buffer, %struct.buffer* %531, i32 0, i32 73
  %532 = load %struct.buffer_text*, %struct.buffer_text** %text964, align 8
  %beg965 = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %532, i32 0, i32 0
  %533 = load i8*, i8** %beg965, align 8
  %add.ptr966 = getelementptr inbounds i8, i8* %533, i64 %add963
  %add.ptr967 = getelementptr inbounds i8, i8* %add.ptr966, i64 -1
  %534 = load i8, i8* %add.ptr967, align 1
  %conv968 = zext i8 %534 to i32
  store i32 %conv968, i32* %buf_ch952, align 4
  br label %do.body.969

do.body.969:                                      ; preds = %cond.end.961
  %535 = load i64, i64* %trt.addr, align 8
  %call970 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp971 = icmp eq i64 %535, %call970
  br i1 %cmp971, label %if.else.989, label %if.then.973

if.then.973:                                      ; preds = %do.body.969
  %536 = load i64, i64* %trt.addr, align 8
  %537 = load i32, i32* %buf_ch952, align 4
  %conv975 = sext i32 %537 to i64
  %shl976 = shl i64 %conv975, 2
  %add977 = add i64 %shl976, 2
  %call978 = call i64 @Faref(i64 %536, i64 %add977)
  store i64 %call978, i64* %temp974, align 8
  %538 = load i64, i64* %temp974, align 8
  %and979 = and i64 %538, 7
  %conv980 = trunc i64 %and979 to i32
  %and981 = and i32 %conv980, -5
  %cmp982 = icmp eq i32 %and981, 2
  br i1 %cmp982, label %if.then.984, label %if.else.987

if.then.984:                                      ; preds = %if.then.973
  %539 = load i64, i64* %temp974, align 8
  %shr985 = ashr i64 %539, 2
  %conv986 = trunc i64 %shr985 to i32
  store i32 %conv986, i32* %buf_ch952, align 4
  br label %if.end.988

if.else.987:                                      ; preds = %if.then.973
  %540 = load i32, i32* %buf_ch952, align 4
  store i32 %540, i32* %buf_ch952, align 4
  br label %if.end.988

if.end.988:                                       ; preds = %if.else.987, %if.then.984
  br label %if.end.990

if.else.989:                                      ; preds = %do.body.969
  %541 = load i32, i32* %buf_ch952, align 4
  store i32 %541, i32* %buf_ch952, align 4
  br label %if.end.990

if.end.990:                                       ; preds = %if.else.989, %if.end.988
  br label %do.end.992

do.end.992:                                       ; preds = %if.end.990
  %542 = load i32, i32* %buf_ch952, align 4
  %543 = load i32, i32* %pat_ch949, align 4
  %cmp993 = icmp ne i32 %542, %543
  br i1 %cmp993, label %if.then.995, label %if.end.996

if.then.995:                                      ; preds = %do.end.992
  br label %while.end.999

if.end.996:                                       ; preds = %do.end.992
  %544 = load i64, i64* %this_len939, align 8
  %dec997 = add nsw i64 %544, -1
  store i64 %dec997, i64* %this_len939, align 8
  %545 = load i64, i64* %this_pos937, align 8
  %inc998 = add nsw i64 %545, 1
  store i64 %inc998, i64* %this_pos937, align 8
  br label %while.cond.945

while.end.999:                                    ; preds = %if.then.995, %while.cond.945
  %546 = load i64, i64* %this_len939, align 8
  %cmp1000 = icmp eq i64 %546, 0
  br i1 %cmp1000, label %if.then.1002, label %if.end.1004

if.then.1002:                                     ; preds = %while.end.999
  %547 = load i64, i64* %len.addr, align 8
  store i64 %547, i64* %match_byte, align 8
  %548 = load i64, i64* %len.addr, align 8
  %549 = load i64, i64* %pos.addr, align 8
  %sub1003 = sub nsw i64 %549, %548
  store i64 %sub1003, i64* %pos.addr, align 8
  br label %while.end.1006

if.end.1004:                                      ; preds = %while.end.999
  %550 = load i64, i64* %pos.addr, align 8
  %dec1005 = add nsw i64 %550, -1
  store i64 %dec1005, i64* %pos.addr, align 8
  br label %while.body.936

while.end.1006:                                   ; preds = %if.then.1002
  %551 = load i64, i64* %n.addr, align 8
  %inc1007 = add nsw i64 %551, 1
  store i64 %inc1007, i64* %n.addr, align 8
  br label %while.cond.931

while.end.1008:                                   ; preds = %while.cond.931
  br label %if.end.1009

if.end.1009:                                      ; preds = %while.end.1008, %if.else.927
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.end.1009, %while.end.926
  br label %if.end.1011

if.end.1011:                                      ; preds = %if.end.1010, %while.end.442
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.end.1011, %while.end.362
  br label %stop

stop:                                             ; preds = %if.end.1012, %if.then.943, %if.then.468, %if.then.379, %if.then.10
  %552 = load i64, i64* %n.addr, align 8
  %cmp1013 = icmp eq i64 %552, 0
  br i1 %cmp1013, label %if.then.1015, label %if.else.1033

if.then.1015:                                     ; preds = %stop
  %553 = load i8, i8* %forward, align 1
  %tobool1016 = trunc i8 %553 to i1
  br i1 %tobool1016, label %if.then.1017, label %if.else.1025

if.then.1017:                                     ; preds = %if.then.1015
  %554 = load i8, i8* %multibyte, align 1
  %tobool1018 = trunc i8 %554 to i1
  br i1 %tobool1018, label %cond.true.1020, label %cond.false.1021

cond.true.1020:                                   ; preds = %if.then.1017
  %555 = load i64, i64* %pos_byte.addr, align 8
  br label %cond.end.1022

cond.false.1021:                                  ; preds = %if.then.1017
  %556 = load i64, i64* %pos.addr, align 8
  br label %cond.end.1022

cond.end.1022:                                    ; preds = %cond.false.1021, %cond.true.1020
  %cond1023 = phi i64 [ %555, %cond.true.1020 ], [ %556, %cond.false.1021 ]
  %557 = load i64, i64* %match_byte, align 8
  %sub1024 = sub nsw i64 %cond1023, %557
  %558 = load i64, i64* %match_byte, align 8
  call void @set_search_regs(i64 %sub1024, i64 %558)
  br label %if.end.1032

if.else.1025:                                     ; preds = %if.then.1015
  %559 = load i8, i8* %multibyte, align 1
  %tobool1026 = trunc i8 %559 to i1
  br i1 %tobool1026, label %cond.true.1028, label %cond.false.1029

cond.true.1028:                                   ; preds = %if.else.1025
  %560 = load i64, i64* %pos_byte.addr, align 8
  br label %cond.end.1030

cond.false.1029:                                  ; preds = %if.else.1025
  %561 = load i64, i64* %pos.addr, align 8
  br label %cond.end.1030

cond.end.1030:                                    ; preds = %cond.false.1029, %cond.true.1028
  %cond1031 = phi i64 [ %560, %cond.true.1028 ], [ %561, %cond.false.1029 ]
  %562 = load i64, i64* %match_byte, align 8
  call void @set_search_regs(i64 %cond1031, i64 %562)
  br label %if.end.1032

if.end.1032:                                      ; preds = %cond.end.1030, %cond.end.1022
  %563 = load i64, i64* %pos.addr, align 8
  store i64 %563, i64* %retval
  br label %return

if.else.1033:                                     ; preds = %stop
  %564 = load i64, i64* %n.addr, align 8
  %cmp1034 = icmp sgt i64 %564, 0
  br i1 %cmp1034, label %if.then.1036, label %if.else.1038

if.then.1036:                                     ; preds = %if.else.1033
  %565 = load i64, i64* %n.addr, align 8
  %sub1037 = sub nsw i64 0, %565
  store i64 %sub1037, i64* %retval
  br label %return

if.else.1038:                                     ; preds = %if.else.1033
  %566 = load i64, i64* %n.addr, align 8
  store i64 %566, i64* %retval
  br label %return

return:                                           ; preds = %if.else.1038, %if.then.1036, %if.end.1032
  %567 = load i64, i64* %retval
  ret i64 %567
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
