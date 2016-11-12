; ModuleID = './lib/lexppd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.YYSTYPE = type { i8* }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }

@ppdin = global %struct._IO_FILE* null, align 8
@ppdout = global %struct._IO_FILE* null, align 8
@ppdlineno = global i32 1, align 4
@ppd_flex_debug = global i32 0, align 4
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 4, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 6, i32 7, i32 1, i32 8, i32 1, i32 1, i32 7, i32 7, i32 9, i32 7, i32 7, i32 1, i32 1, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 12, i32 12, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 12, i32 12, i32 12, i32 14, i32 12, i32 15, i32 1, i32 1, i32 16, i32 1, i32 1, i32 1, i32 17, i32 18, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 19, i32 1, i32 1, i32 1, i32 1, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 1, i32 1, i32 26, i32 1, i32 27, i32 28, i32 29, i32 30, i32 31, i32 1, i32 1, i32 32, i32 1, i32 33, i32 34, i32 35, i32 1, i32 36, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [115 x i16] [i16 0, i16 2, i16 2, i16 0, i16 0, i16 0, i16 0, i16 41, i16 41, i16 44, i16 10, i16 2, i16 12, i16 11, i16 3, i16 11, i16 10, i16 4, i16 26, i16 13, i16 26, i16 40, i16 27, i16 43, i16 43, i16 41, i16 43, i16 10, i16 2, i16 12, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 26, i16 25, i16 25, i16 14, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 40, i16 39, i16 28, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 41, i16 0, i16 10, i16 0, i16 1, i16 0, i16 10, i16 10, i16 10, i16 10, i16 10, i16 14, i16 15, i16 28, i16 29, i16 42, i16 1, i16 10, i16 10, i16 10, i16 10, i16 10, i16 14, i16 15, i16 28, i16 29, i16 10, i16 7, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 5, i16 10, i16 9, i16 10, i16 8, i16 10, i16 6, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [129 x i16] [i16 0, i16 0, i16 12, i16 5, i16 14, i16 23, i16 24, i16 6, i16 26, i16 125, i16 0, i16 27, i16 263, i16 121, i16 263, i16 263, i16 36, i16 263, i16 0, i16 263, i16 52, i16 0, i16 263, i16 78, i16 263, i16 120, i16 0, i16 0, i16 36, i16 263, i16 113, i16 97, i16 81, i16 79, i16 76, i16 80, i16 0, i16 0, i16 263, i16 94, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 116, i16 0, i16 263, i16 93, i16 263, i16 263, i16 263, i16 263, i16 263, i16 263, i16 263, i16 263, i16 263, i16 0, i16 98, i16 91, i16 140, i16 36, i16 263, i16 42, i16 71, i16 65, i16 72, i16 70, i16 70, i16 80, i16 143, i16 79, i16 0, i16 80, i16 263, i16 63, i16 48, i16 52, i16 55, i16 51, i16 0, i16 0, i16 263, i16 263, i16 40, i16 0, i16 37, i16 42, i16 51, i16 40, i16 44, i16 48, i16 45, i16 31, i16 38, i16 41, i16 31, i16 44, i16 44, i16 27, i16 25, i16 17, i16 263, i16 22, i16 0, i16 5, i16 0, i16 1, i16 0, i16 263, i16 168, i16 176, i16 184, i16 192, i16 200, i16 208, i16 216, i16 224, i16 230, i16 238, i16 246, i16 24, i16 254, i16 17], align 16
@yy_chk = internal constant [300 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 7, i16 1, i16 1, i16 3, i16 7, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 2, i16 2, i16 128, i16 3, i16 2, i16 5, i16 6, i16 8, i16 11, i16 126, i16 11, i16 8, i16 4, i16 112, i16 110, i16 5, i16 6, i16 28, i16 66, i16 28, i16 66, i16 5, i16 6, i16 16, i16 68, i16 108, i16 68, i16 106, i16 105, i16 16, i16 16, i16 16, i16 16, i16 16, i16 20, i16 104, i16 103, i16 20, i16 102, i16 101, i16 100, i16 99, i16 20, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 20, i16 20, i16 89, i16 20, i16 20, i16 20, i16 84, i16 83, i16 82, i16 81, i16 20, i16 80, i16 20, i16 20, i16 78, i16 20, i16 20, i16 23, i16 76, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 64, i16 23, i16 23, i16 63, i16 23, i16 23, i16 23, i16 52, i16 39, i16 35, i16 34, i16 23, i16 33, i16 23, i16 23, i16 32, i16 23, i16 23, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 31, i16 25, i16 30, i16 13, i16 9, i16 30, i16 49, i16 49, i16 0, i16 49, i16 49, i16 0, i16 0, i16 0, i16 0, i16 49, i16 49, i16 49, i16 49, i16 49, i16 49, i16 65, i16 65, i16 65, i16 65, i16 65, i16 65, i16 0, i16 0, i16 65, i16 0, i16 0, i16 65, i16 75, i16 75, i16 0, i16 75, i16 75, i16 0, i16 0, i16 0, i16 0, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 115, i16 115, i16 115, i16 115, i16 115, i16 115, i16 115, i16 115, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 117, i16 117, i16 117, i16 117, i16 117, i16 117, i16 117, i16 117, i16 118, i16 118, i16 118, i16 118, i16 118, i16 118, i16 118, i16 118, i16 119, i16 0, i16 0, i16 0, i16 0, i16 119, i16 0, i16 119, i16 120, i16 120, i16 120, i16 120, i16 0, i16 120, i16 120, i16 120, i16 121, i16 121, i16 121, i16 121, i16 121, i16 121, i16 121, i16 121, i16 122, i16 122, i16 0, i16 122, i16 122, i16 122, i16 123, i16 123, i16 0, i16 123, i16 123, i16 123, i16 123, i16 123, i16 124, i16 0, i16 0, i16 124, i16 124, i16 124, i16 124, i16 124, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114], align 16
@yy_def = internal constant [129 x i16] [i16 0, i16 115, i16 115, i16 116, i16 116, i16 117, i16 117, i16 118, i16 118, i16 114, i16 119, i16 114, i16 114, i16 114, i16 114, i16 114, i16 119, i16 114, i16 120, i16 114, i16 121, i16 122, i16 114, i16 123, i16 114, i16 114, i16 124, i16 119, i16 114, i16 114, i16 125, i16 119, i16 119, i16 119, i16 119, i16 119, i16 120, i16 120, i16 114, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 120, i16 122, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 126, i16 114, i16 124, i16 125, i16 127, i16 114, i16 127, i16 119, i16 119, i16 119, i16 119, i16 119, i16 120, i16 120, i16 114, i16 128, i16 124, i16 114, i16 119, i16 119, i16 119, i16 119, i16 119, i16 120, i16 120, i16 114, i16 114, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 114, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 0, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114], align 16
@yy_meta = internal constant [37 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 5, i32 4, i32 1, i32 1, i32 4, i32 6, i32 6, i32 7, i32 6, i32 6, i32 1, i32 1, i32 1, i32 8, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_nxt = internal constant [300 x i16] [i16 0, i16 114, i16 11, i16 12, i16 11, i16 13, i16 14, i16 15, i16 25, i16 16, i16 17, i16 19, i16 26, i16 15, i16 11, i16 12, i16 11, i16 13, i16 14, i16 15, i16 19, i16 16, i16 17, i16 88, i16 20, i16 15, i16 22, i16 22, i16 25, i16 28, i16 77, i16 28, i16 26, i16 20, i16 113, i16 112, i16 22, i16 22, i16 28, i16 67, i16 28, i16 68, i16 23, i16 23, i16 30, i16 79, i16 111, i16 68, i16 110, i16 109, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 108, i16 107, i16 38, i16 106, i16 105, i16 104, i16 103, i16 39, i16 102, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 40, i16 41, i16 94, i16 42, i16 43, i16 44, i16 93, i16 92, i16 91, i16 90, i16 45, i16 89, i16 46, i16 47, i16 78, i16 48, i16 49, i16 52, i16 87, i16 85, i16 84, i16 83, i16 82, i16 81, i16 80, i16 78, i16 53, i16 54, i16 63, i16 55, i16 56, i16 57, i16 76, i16 74, i16 73, i16 72, i16 58, i16 71, i16 59, i16 60, i16 70, i16 61, i16 62, i16 66, i16 67, i16 66, i16 68, i16 66, i16 66, i16 69, i16 63, i16 66, i16 29, i16 114, i16 66, i16 75, i16 75, i16 114, i16 75, i16 75, i16 114, i16 114, i16 114, i16 114, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 66, i16 67, i16 66, i16 68, i16 66, i16 66, i16 114, i16 114, i16 66, i16 114, i16 114, i16 66, i16 86, i16 86, i16 114, i16 86, i16 86, i16 114, i16 114, i16 114, i16 114, i16 86, i16 86, i16 86, i16 86, i16 86, i16 86, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 10, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 18, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 27, i16 114, i16 114, i16 114, i16 114, i16 27, i16 114, i16 27, i16 36, i16 36, i16 36, i16 36, i16 114, i16 36, i16 36, i16 36, i16 37, i16 37, i16 37, i16 37, i16 37, i16 37, i16 37, i16 37, i16 50, i16 50, i16 114, i16 50, i16 50, i16 50, i16 51, i16 51, i16 114, i16 51, i16 51, i16 51, i16 51, i16 51, i16 64, i16 114, i16 114, i16 64, i16 64, i16 64, i16 64, i16 64, i16 65, i16 65, i16 65, i16 65, i16 65, i16 65, i16 65, i16 65, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 66, i16 9, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114, i16 114], align 16
@ppdtext = common global i8* null, align 8
@ppdleng = common global i32 0, align 4
@yy_rule_can_match_eol = internal constant [44 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@ppdlval = external global %union.YYSTYPE, align 8
@string_stack = internal global %struct.obstack zeroinitializer, align 8
@include_stack_ptr = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too many includes\00", align 1
@include_stack = internal global [10 x %struct.yy_buffer_state*] zeroinitializer, align 16
@ppdfilename = common global i8* null, align 8
@filename_stack = internal global [10 x i8*] zeroinitializer, align 16
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s:%d: includes %s\0A\00", align 1
@ppdpath = common global i8** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"End of PPD file `%s'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Back to file `%s'.\0A\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"out of dynamic memory in ppd_create_buffer()\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"out of dynamic memory in ppd_scan_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in ppd_scan_bytes()\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bad buffer in ppd_scan_bytes()\00", align 1
@ppdlex_initialize.first_time = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ppdlex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_bp = alloca i8*, align 8
  %yy_act = alloca i32, align 4
  %yy_c = alloca i8, align 1
  %yyl = alloca i32, align 4
  %string = alloca i8*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %__o138 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %value154 = alloca i32, align 4
  %cursor = alloca i8*, align 8
  %__o168 = alloca %struct.obstack*, align 8
  %value181 = alloca i32, align 4
  %cursor183 = alloca i8*, align 8
  %__o227 = alloca %struct.obstack*, align 8
  %__o240 = alloca %struct.obstack*, align 8
  %__o252 = alloca %struct.obstack*, align 8
  %__o264 = alloca %struct.obstack*, align 8
  %__o276 = alloca %struct.obstack*, align 8
  %__o288 = alloca %struct.obstack*, align 8
  %__o300 = alloca %struct.obstack*, align 8
  %__o312 = alloca %struct.obstack*, align 8
  %__o324 = alloca %struct.obstack*, align 8
  %__o336 = alloca %struct.obstack*, align 8
  %__o348 = alloca %struct.obstack*, align 8
  %__o361 = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %string377 = alloca i8*, align 8
  %__o379 = alloca %struct.obstack*, align 8
  %__o1390 = alloca %struct.obstack*, align 8
  %value392 = alloca i8*, align 8
  %tmp433 = alloca i8*, align 8
  %__o435 = alloca %struct.obstack*, align 8
  %__obj437 = alloca i8*, align 8
  %value453 = alloca i32, align 4
  %cursor458 = alloca i8*, align 8
  %__o470 = alloca %struct.obstack*, align 8
  %value483 = alloca i32, align 4
  %cursor485 = alloca i8*, align 8
  %__o529 = alloca %struct.obstack*, align 8
  %__o542 = alloca %struct.obstack*, align 8
  %__o554 = alloca %struct.obstack*, align 8
  %__o566 = alloca %struct.obstack*, align 8
  %__o578 = alloca %struct.obstack*, align 8
  %__o590 = alloca %struct.obstack*, align 8
  %__o602 = alloca %struct.obstack*, align 8
  %__o614 = alloca %struct.obstack*, align 8
  %__o626 = alloca %struct.obstack*, align 8
  %__o638 = alloca %struct.obstack*, align 8
  %__o650 = alloca %struct.obstack*, align 8
  %__o663 = alloca %struct.obstack*, align 8
  %__len665 = alloca i32, align 4
  %yy_amount_of_matched_text = alloca i32, align 4
  %yy_next_state = alloca i32, align 4
  %0 = load i32, i32* @yy_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @yy_init, align 4
  %1 = load i32, i32* @yy_start, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @yy_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @ppdin, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdout, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @ppdout, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %6 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state** %6, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, i64 %7
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %tobool10 = icmp ne %struct.yy_buffer_state* %9, null
  br i1 %tobool10, label %if.end.13, label %if.then.11

cond.false:                                       ; preds = %if.end.8
  br i1 false, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %cond.false, %cond.true
  call void @ppdensure_buffer_stack()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call = call %struct.yy_buffer_state* @ppd_create_buffer(%struct._IO_FILE* %10, i32 16384)
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx12 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.false, %cond.true
  call void @ppd_load_buffer_state()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.14, %sw.epilog.812
  %13 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %13, i8** %yy_cp, align 8
  %14 = load i8, i8* @yy_hold_char, align 1
  %15 = load i8*, i8** %yy_cp, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %yy_cp, align 8
  store i8* %16, i8** %yy_bp, align 8
  %17 = load i32, i32* @yy_start, align 4
  store i32 %17, i32* %yy_current_state, align 4
  br label %yy_match

yy_match:                                         ; preds = %sw.bb.799, %if.then.781, %while.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %yy_match
  %18 = load i8*, i8** %yy_cp, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  %idxprom = zext i32 %conv to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx15, align 4
  %conv16 = trunc i32 %20 to i8
  store i8 %conv16, i8* %yy_c, align 1
  %21 = load i32, i32* %yy_current_state, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [115 x i16], [115 x i16]* @yy_accept, i32 0, i64 %idxprom17
  %22 = load i16, i16* %arrayidx18, align 2
  %tobool19 = icmp ne i16 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body
  %23 = load i32, i32* %yy_current_state, align 4
  store i32 %23, i32* @yy_last_accepting_state, align 4
  %24 = load i8*, i8** %yy_cp, align 8
  store i8* %24, i8** @yy_last_accepting_cpos, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.body
  br label %while.cond.22

while.cond.22:                                    ; preds = %if.end.42, %if.end.21
  %25 = load i32, i32* %yy_current_state, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom23
  %26 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %26 to i32
  %27 = load i8, i8* %yy_c, align 1
  %conv26 = zext i8 %27 to i32
  %add = add nsw i32 %conv25, %conv26
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_chk, i32 0, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  %29 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv29, %29
  br i1 %cmp, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.22
  %30 = load i32, i32* %yy_current_state, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_def, i32 0, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  store i32 %conv34, i32* %yy_current_state, align 4
  %32 = load i32, i32* %yy_current_state, align 4
  %cmp35 = icmp sge i32 %32, 115
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %while.body.31
  %33 = load i8, i8* %yy_c, align 1
  %conv38 = zext i8 %33 to i32
  %idxprom39 = zext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds [37 x i32], [37 x i32]* @yy_meta, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %conv41 = trunc i32 %34 to i8
  store i8 %conv41, i8* %yy_c, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %while.body.31
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  %35 = load i32, i32* %yy_current_state, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom43
  %36 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %36 to i32
  %37 = load i8, i8* %yy_c, align 1
  %conv46 = zext i8 %37 to i32
  %add47 = add i32 %conv45, %conv46
  %idxprom48 = zext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_nxt, i32 0, i64 %idxprom48
  %38 = load i16, i16* %arrayidx49, align 2
  %conv50 = sext i16 %38 to i32
  store i32 %conv50, i32* %yy_current_state, align 4
  %39 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %40 = load i32, i32* %yy_current_state, align 4
  %idxprom51 = sext i32 %40 to i64
  %arrayidx52 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom51
  %41 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %41 to i32
  %cmp54 = icmp ne i32 %conv53, 263
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.804, %if.else.783, %sw.bb, %do.end
  %42 = load i32, i32* %yy_current_state, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [115 x i16], [115 x i16]* @yy_accept, i32 0, i64 %idxprom56
  %43 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %43 to i32
  store i32 %conv58, i32* %yy_act, align 4
  %44 = load i32, i32* %yy_act, align 4
  %cmp59 = icmp eq i32 %44, 0
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %yy_find_action
  %45 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %45, i8** %yy_cp, align 8
  %46 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %46, i32* %yy_current_state, align 4
  %47 = load i32, i32* %yy_current_state, align 4
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds [115 x i16], [115 x i16]* @yy_accept, i32 0, i64 %idxprom62
  %48 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %48 to i32
  store i32 %conv64, i32* %yy_act, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %yy_find_action
  %49 = load i8*, i8** %yy_bp, align 8
  store i8* %49, i8** @ppdtext, align 8
  %50 = load i8*, i8** %yy_cp, align 8
  %51 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv66 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv66, i32* @ppdleng, align 4
  %52 = load i8*, i8** %yy_cp, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* @yy_hold_char, align 1
  %54 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %yy_cp, align 8
  store i8* %55, i8** @yy_c_buf_p, align 8
  %56 = load i32, i32* %yy_act, align 4
  %cmp67 = icmp ne i32 %56, 44
  br i1 %cmp67, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end.65
  %57 = load i32, i32* %yy_act, align 4
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [44 x i32], [44 x i32]* @yy_rule_can_match_eol, i32 0, i64 %idxprom69
  %58 = load i32, i32* %arrayidx70, align 4
  %tobool71 = icmp ne i32 %58, 0
  br i1 %tobool71, label %if.then.72, label %if.end.83

if.then.72:                                       ; preds = %land.lhs.true
  store i32 0, i32* %yyl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %59 = load i32, i32* %yyl, align 4
  %60 = load i32, i32* @ppdleng, align 4
  %cmp73 = icmp slt i32 %59, %60
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %yyl, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i8*, i8** @ppdtext, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %62, i64 %idxprom75
  %63 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %63 to i32
  %cmp78 = icmp eq i32 %conv77, 10
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body
  %64 = load i32, i32* @ppdlineno, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* @ppdlineno, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %65 = load i32, i32* %yyl, align 4
  %inc82 = add nsw i32 %65, 1
  store i32 %inc82, i32* %yyl, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %land.lhs.true, %if.end.65
  br label %do_action

do_action:                                        ; preds = %if.then.789, %if.end.83
  %66 = load i32, i32* %yy_act, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.84
    i32 2, label %sw.bb.85
    i32 3, label %sw.bb.86
    i32 4, label %sw.bb.87
    i32 5, label %sw.bb.88
    i32 6, label %sw.bb.89
    i32 7, label %sw.bb.90
    i32 8, label %sw.bb.91
    i32 9, label %sw.bb.92
    i32 10, label %sw.bb.93
    i32 11, label %sw.bb.95
    i32 12, label %sw.bb.98
    i32 13, label %sw.bb.99
    i32 14, label %sw.bb.152
    i32 15, label %sw.bb.179
    i32 16, label %sw.bb.238
    i32 17, label %sw.bb.250
    i32 18, label %sw.bb.262
    i32 19, label %sw.bb.274
    i32 20, label %sw.bb.286
    i32 21, label %sw.bb.298
    i32 22, label %sw.bb.310
    i32 23, label %sw.bb.322
    i32 24, label %sw.bb.334
    i32 25, label %sw.bb.346
    i32 26, label %sw.bb.359
    i32 27, label %sw.bb.375
    i32 28, label %sw.bb.451
    i32 29, label %sw.bb.481
    i32 30, label %sw.bb.540
    i32 31, label %sw.bb.552
    i32 32, label %sw.bb.564
    i32 33, label %sw.bb.576
    i32 34, label %sw.bb.588
    i32 35, label %sw.bb.600
    i32 36, label %sw.bb.612
    i32 37, label %sw.bb.624
    i32 38, label %sw.bb.636
    i32 39, label %sw.bb.648
    i32 40, label %sw.bb.661
    i32 41, label %sw.bb.679
    i32 42, label %sw.bb.680
    i32 45, label %sw.bb.710
    i32 46, label %sw.bb.710
    i32 47, label %sw.bb.710
    i32 48, label %sw.bb.710
    i32 43, label %sw.bb.749
    i32 44, label %sw.bb.752
  ]

sw.bb:                                            ; preds = %do_action
  %67 = load i8, i8* @yy_hold_char, align 1
  %68 = load i8*, i8** %yy_cp, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %69, i8** %yy_cp, align 8
  %70 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %70, i32* %yy_current_state, align 4
  br label %yy_find_action

sw.bb.84:                                         ; preds = %do_action
  br label %sw.epilog.812

sw.bb.85:                                         ; preds = %do_action
  br label %sw.epilog.812

sw.bb.86:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  br label %sw.epilog.812

sw.bb.87:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  br label %sw.epilog.812

sw.bb.88:                                         ; preds = %do_action
  store i32 7, i32* @yy_start, align 4
  br label %sw.epilog.812

sw.bb.89:                                         ; preds = %do_action
  store i32 259, i32* %retval
  br label %return

sw.bb.90:                                         ; preds = %do_action
  store i32 260, i32* %retval
  br label %return

sw.bb.91:                                         ; preds = %do_action
  store i32 261, i32* %retval
  br label %return

sw.bb.92:                                         ; preds = %do_action
  store i32 262, i32* %retval
  br label %return

sw.bb.93:                                         ; preds = %do_action
  %71 = load i8*, i8** @ppdtext, align 8
  %call94 = call i8* @xstrdup(i8* %71)
  store i8* %call94, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @ppdlval, i32 0, i32 0), align 8
  store i32 264, i32* %retval
  br label %return

sw.bb.95:                                         ; preds = %do_action
  %72 = load i8*, i8** @ppdtext, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %73 to i32
  store i32 %conv97, i32* %retval
  br label %return

sw.bb.98:                                         ; preds = %do_action
  store i32 258, i32* %retval
  br label %return

sw.bb.99:                                         ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o, align 8
  %74 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %74, i32 0, i32 3
  %75 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 4
  %77 = load i8*, i8** %chunk_limit, align 8
  %cmp100 = icmp ugt i8* %add.ptr, %77
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %sw.bb.99
  %78 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %78, i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %sw.bb.99
  %79 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free104 = getelementptr inbounds %struct.obstack, %struct.obstack* %79, i32 0, i32 3
  %80 = load i8*, i8** %next_free104, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr105, i8** %next_free104, align 8
  store i8 0, i8* %80, align 1
  store %struct.obstack* @string_stack, %struct.obstack** %__o1, align 8
  %81 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %81, i32 0, i32 2
  %82 = load i8*, i8** %object_base, align 8
  store i8* %82, i8** %value, align 8
  %83 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free106 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 3
  %84 = load i8*, i8** %next_free106, align 8
  %85 = load i8*, i8** %value, align 8
  %cmp107 = icmp eq i8* %84, %85
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.103
  %86 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.103
  %87 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free111 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 3
  %88 = load i8*, i8** %next_free111, align 8
  %sub.ptr.lhs.cast112 = ptrtoint i8* %88 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast112, 0
  %89 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 6
  %90 = load i32, i32* %alignment_mask, align 4
  %conv114 = sext i32 %90 to i64
  %add115 = add nsw i64 %sub.ptr.sub113, %conv114
  %91 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask116 = getelementptr inbounds %struct.obstack, %struct.obstack* %91, i32 0, i32 6
  %92 = load i32, i32* %alignment_mask116, align 4
  %neg = xor i32 %92, -1
  %conv117 = sext i32 %neg to i64
  %and = and i64 %add115, %conv117
  %add.ptr118 = getelementptr inbounds i8, i8* null, i64 %and
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free119 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  store i8* %add.ptr118, i8** %next_free119, align 8
  %94 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free120 = getelementptr inbounds %struct.obstack, %struct.obstack* %94, i32 0, i32 3
  %95 = load i8*, i8** %next_free120, align 8
  %96 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 1
  %97 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %98 = bitcast %struct._obstack_chunk* %97 to i8*
  %sub.ptr.lhs.cast121 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast122 = ptrtoint i8* %98 to i64
  %sub.ptr.sub123 = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  %99 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit124 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 4
  %100 = load i8*, i8** %chunk_limit124, align 8
  %101 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk125 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 1
  %102 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk125, align 8
  %103 = bitcast %struct._obstack_chunk* %102 to i8*
  %sub.ptr.lhs.cast126 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %103 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %cmp129 = icmp sgt i64 %sub.ptr.sub123, %sub.ptr.sub128
  br i1 %cmp129, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.110
  %104 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit132 = getelementptr inbounds %struct.obstack, %struct.obstack* %104, i32 0, i32 4
  %105 = load i8*, i8** %chunk_limit132, align 8
  %106 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free133 = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 3
  store i8* %105, i8** %next_free133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.110
  %107 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free135 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 3
  %108 = load i8*, i8** %next_free135, align 8
  %109 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base136 = getelementptr inbounds %struct.obstack, %struct.obstack* %109, i32 0, i32 2
  store i8* %108, i8** %object_base136, align 8
  %110 = load i8*, i8** %value, align 8
  store i8* %110, i8** %tmp
  %111 = load i8*, i8** %tmp
  store i8* %111, i8** %string, align 8
  store %struct.obstack* @string_stack, %struct.obstack** %__o138, align 8
  %112 = load i8*, i8** %string, align 8
  store i8* %112, i8** %__obj, align 8
  %113 = load i8*, i8** %__obj, align 8
  %114 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %chunk140 = getelementptr inbounds %struct.obstack, %struct.obstack* %114, i32 0, i32 1
  %115 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk140, align 8
  %116 = bitcast %struct._obstack_chunk* %115 to i8*
  %cmp141 = icmp ugt i8* %113, %116
  br i1 %cmp141, label %land.lhs.true.143, label %if.else

land.lhs.true.143:                                ; preds = %if.end.134
  %117 = load i8*, i8** %__obj, align 8
  %118 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %chunk_limit144 = getelementptr inbounds %struct.obstack, %struct.obstack* %118, i32 0, i32 4
  %119 = load i8*, i8** %chunk_limit144, align 8
  %cmp145 = icmp ult i8* %117, %119
  br i1 %cmp145, label %if.then.147, label %if.else

if.then.147:                                      ; preds = %land.lhs.true.143
  %120 = load i8*, i8** %__obj, align 8
  %121 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %object_base148 = getelementptr inbounds %struct.obstack, %struct.obstack* %121, i32 0, i32 2
  store i8* %120, i8** %object_base148, align 8
  %122 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %next_free149 = getelementptr inbounds %struct.obstack, %struct.obstack* %122, i32 0, i32 3
  store i8* %120, i8** %next_free149, align 8
  br label %if.end.150

if.else:                                          ; preds = %land.lhs.true.143, %if.end.134
  %123 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %124 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %123, i8* %124)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else, %if.then.147
  store i32 1, i32* @yy_start, align 4
  %125 = load i8*, i8** %string, align 8
  %call151 = call i8* @xstrdup(i8* %125)
  store i8* %call151, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @ppdlval, i32 0, i32 0), align 8
  store i32 263, i32* %retval
  br label %return

sw.bb.152:                                        ; preds = %do_action
  %126 = load i8*, i8** @ppdtext, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %127 to i32
  %sub = sub nsw i32 %conv156, 48
  store i32 %sub, i32* %value154, align 4
  %128 = load i8*, i8** @ppdtext, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %add.ptr158, i8** %cursor, align 8
  br label %while.cond.159

while.cond.159:                                   ; preds = %while.body.161, %sw.bb.152
  %129 = load i8*, i8** %cursor, align 8
  %130 = load i8, i8* %129, align 1
  %tobool160 = icmp ne i8 %130, 0
  br i1 %tobool160, label %while.body.161, label %while.end.166

while.body.161:                                   ; preds = %while.cond.159
  %131 = load i32, i32* %value154, align 4
  %mul = mul nsw i32 8, %131
  %132 = load i8*, i8** %cursor, align 8
  %incdec.ptr162 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr162, i8** %cursor, align 8
  %133 = load i8, i8* %132, align 1
  %conv163 = sext i8 %133 to i32
  %add164 = add nsw i32 %mul, %conv163
  %sub165 = sub nsw i32 %add164, 48
  store i32 %sub165, i32* %value154, align 4
  br label %while.cond.159

while.end.166:                                    ; preds = %while.cond.159
  store %struct.obstack* @string_stack, %struct.obstack** %__o168, align 8
  %134 = load %struct.obstack*, %struct.obstack** %__o168, align 8
  %next_free169 = getelementptr inbounds %struct.obstack, %struct.obstack* %134, i32 0, i32 3
  %135 = load i8*, i8** %next_free169, align 8
  %add.ptr170 = getelementptr inbounds i8, i8* %135, i64 1
  %136 = load %struct.obstack*, %struct.obstack** %__o168, align 8
  %chunk_limit171 = getelementptr inbounds %struct.obstack, %struct.obstack* %136, i32 0, i32 4
  %137 = load i8*, i8** %chunk_limit171, align 8
  %cmp172 = icmp ugt i8* %add.ptr170, %137
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %while.end.166
  %138 = load %struct.obstack*, %struct.obstack** %__o168, align 8
  call void @_obstack_newchunk(%struct.obstack* %138, i32 1)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %while.end.166
  %139 = load i32, i32* %value154, align 4
  %conv176 = trunc i32 %139 to i8
  %140 = load %struct.obstack*, %struct.obstack** %__o168, align 8
  %next_free177 = getelementptr inbounds %struct.obstack, %struct.obstack* %140, i32 0, i32 3
  %141 = load i8*, i8** %next_free177, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr178, i8** %next_free177, align 8
  store i8 %conv176, i8* %141, align 1
  br label %sw.epilog.812

sw.bb.179:                                        ; preds = %do_action
  store i32 0, i32* %value181, align 4
  %142 = load i8*, i8** @ppdtext, align 8
  %add.ptr184 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %add.ptr184, i8** %cursor183, align 8
  br label %while.cond.185

while.cond.185:                                   ; preds = %if.end.224, %sw.bb.179
  %143 = load i8*, i8** %cursor183, align 8
  %144 = load i8, i8* %143, align 1
  %tobool186 = icmp ne i8 %144, 0
  br i1 %tobool186, label %while.body.187, label %while.end.225

while.body.187:                                   ; preds = %while.cond.185
  %145 = load i8*, i8** %cursor183, align 8
  %146 = load i8, i8* %145, align 1
  %conv188 = sext i8 %146 to i32
  %cmp189 = icmp sge i32 %conv188, 97
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.202

land.lhs.true.191:                                ; preds = %while.body.187
  %147 = load i8*, i8** %cursor183, align 8
  %148 = load i8, i8* %147, align 1
  %conv192 = sext i8 %148 to i32
  %cmp193 = icmp sle i32 %conv192, 102
  br i1 %cmp193, label %if.then.195, label %if.else.202

if.then.195:                                      ; preds = %land.lhs.true.191
  %149 = load i32, i32* %value181, align 4
  %mul196 = mul nsw i32 16, %149
  %150 = load i8*, i8** %cursor183, align 8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr197, i8** %cursor183, align 8
  %151 = load i8, i8* %150, align 1
  %conv198 = sext i8 %151 to i32
  %add199 = add nsw i32 %mul196, %conv198
  %sub200 = sub nsw i32 %add199, 97
  %add201 = add nsw i32 %sub200, 10
  store i32 %add201, i32* %value181, align 4
  br label %if.end.224

if.else.202:                                      ; preds = %land.lhs.true.191, %while.body.187
  %152 = load i8*, i8** %cursor183, align 8
  %153 = load i8, i8* %152, align 1
  %conv203 = sext i8 %153 to i32
  %cmp204 = icmp sge i32 %conv203, 65
  br i1 %cmp204, label %land.lhs.true.206, label %if.else.217

land.lhs.true.206:                                ; preds = %if.else.202
  %154 = load i8*, i8** %cursor183, align 8
  %155 = load i8, i8* %154, align 1
  %conv207 = sext i8 %155 to i32
  %cmp208 = icmp sle i32 %conv207, 70
  br i1 %cmp208, label %if.then.210, label %if.else.217

if.then.210:                                      ; preds = %land.lhs.true.206
  %156 = load i32, i32* %value181, align 4
  %mul211 = mul nsw i32 16, %156
  %157 = load i8*, i8** %cursor183, align 8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr212, i8** %cursor183, align 8
  %158 = load i8, i8* %157, align 1
  %conv213 = sext i8 %158 to i32
  %add214 = add nsw i32 %mul211, %conv213
  %sub215 = sub nsw i32 %add214, 65
  %add216 = add nsw i32 %sub215, 10
  store i32 %add216, i32* %value181, align 4
  br label %if.end.223

if.else.217:                                      ; preds = %land.lhs.true.206, %if.else.202
  %159 = load i32, i32* %value181, align 4
  %mul218 = mul nsw i32 16, %159
  %160 = load i8*, i8** %cursor183, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr219, i8** %cursor183, align 8
  %161 = load i8, i8* %160, align 1
  %conv220 = sext i8 %161 to i32
  %add221 = add nsw i32 %mul218, %conv220
  %sub222 = sub nsw i32 %add221, 48
  store i32 %sub222, i32* %value181, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.217, %if.then.210
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.195
  br label %while.cond.185

while.end.225:                                    ; preds = %while.cond.185
  store %struct.obstack* @string_stack, %struct.obstack** %__o227, align 8
  %162 = load %struct.obstack*, %struct.obstack** %__o227, align 8
  %next_free228 = getelementptr inbounds %struct.obstack, %struct.obstack* %162, i32 0, i32 3
  %163 = load i8*, i8** %next_free228, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %163, i64 1
  %164 = load %struct.obstack*, %struct.obstack** %__o227, align 8
  %chunk_limit230 = getelementptr inbounds %struct.obstack, %struct.obstack* %164, i32 0, i32 4
  %165 = load i8*, i8** %chunk_limit230, align 8
  %cmp231 = icmp ugt i8* %add.ptr229, %165
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %while.end.225
  %166 = load %struct.obstack*, %struct.obstack** %__o227, align 8
  call void @_obstack_newchunk(%struct.obstack* %166, i32 1)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %while.end.225
  %167 = load i32, i32* %value181, align 4
  %conv235 = trunc i32 %167 to i8
  %168 = load %struct.obstack*, %struct.obstack** %__o227, align 8
  %next_free236 = getelementptr inbounds %struct.obstack, %struct.obstack* %168, i32 0, i32 3
  %169 = load i8*, i8** %next_free236, align 8
  %incdec.ptr237 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr237, i8** %next_free236, align 8
  store i8 %conv235, i8* %169, align 1
  br label %sw.epilog.812

sw.bb.238:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o240, align 8
  %170 = load %struct.obstack*, %struct.obstack** %__o240, align 8
  %next_free241 = getelementptr inbounds %struct.obstack, %struct.obstack* %170, i32 0, i32 3
  %171 = load i8*, i8** %next_free241, align 8
  %add.ptr242 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load %struct.obstack*, %struct.obstack** %__o240, align 8
  %chunk_limit243 = getelementptr inbounds %struct.obstack, %struct.obstack* %172, i32 0, i32 4
  %173 = load i8*, i8** %chunk_limit243, align 8
  %cmp244 = icmp ugt i8* %add.ptr242, %173
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %sw.bb.238
  %174 = load %struct.obstack*, %struct.obstack** %__o240, align 8
  call void @_obstack_newchunk(%struct.obstack* %174, i32 1)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %sw.bb.238
  %175 = load %struct.obstack*, %struct.obstack** %__o240, align 8
  %next_free248 = getelementptr inbounds %struct.obstack, %struct.obstack* %175, i32 0, i32 3
  %176 = load i8*, i8** %next_free248, align 8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr249, i8** %next_free248, align 8
  store i8 7, i8* %176, align 1
  br label %sw.epilog.812

sw.bb.250:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o252, align 8
  %177 = load %struct.obstack*, %struct.obstack** %__o252, align 8
  %next_free253 = getelementptr inbounds %struct.obstack, %struct.obstack* %177, i32 0, i32 3
  %178 = load i8*, i8** %next_free253, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %178, i64 1
  %179 = load %struct.obstack*, %struct.obstack** %__o252, align 8
  %chunk_limit255 = getelementptr inbounds %struct.obstack, %struct.obstack* %179, i32 0, i32 4
  %180 = load i8*, i8** %chunk_limit255, align 8
  %cmp256 = icmp ugt i8* %add.ptr254, %180
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %sw.bb.250
  %181 = load %struct.obstack*, %struct.obstack** %__o252, align 8
  call void @_obstack_newchunk(%struct.obstack* %181, i32 1)
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %sw.bb.250
  %182 = load %struct.obstack*, %struct.obstack** %__o252, align 8
  %next_free260 = getelementptr inbounds %struct.obstack, %struct.obstack* %182, i32 0, i32 3
  %183 = load i8*, i8** %next_free260, align 8
  %incdec.ptr261 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr261, i8** %next_free260, align 8
  store i8 8, i8* %183, align 1
  br label %sw.epilog.812

sw.bb.262:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o264, align 8
  %184 = load %struct.obstack*, %struct.obstack** %__o264, align 8
  %next_free265 = getelementptr inbounds %struct.obstack, %struct.obstack* %184, i32 0, i32 3
  %185 = load i8*, i8** %next_free265, align 8
  %add.ptr266 = getelementptr inbounds i8, i8* %185, i64 1
  %186 = load %struct.obstack*, %struct.obstack** %__o264, align 8
  %chunk_limit267 = getelementptr inbounds %struct.obstack, %struct.obstack* %186, i32 0, i32 4
  %187 = load i8*, i8** %chunk_limit267, align 8
  %cmp268 = icmp ugt i8* %add.ptr266, %187
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %sw.bb.262
  %188 = load %struct.obstack*, %struct.obstack** %__o264, align 8
  call void @_obstack_newchunk(%struct.obstack* %188, i32 1)
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %sw.bb.262
  %189 = load %struct.obstack*, %struct.obstack** %__o264, align 8
  %next_free272 = getelementptr inbounds %struct.obstack, %struct.obstack* %189, i32 0, i32 3
  %190 = load i8*, i8** %next_free272, align 8
  %incdec.ptr273 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr273, i8** %next_free272, align 8
  store i8 127, i8* %190, align 1
  br label %sw.epilog.812

sw.bb.274:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o276, align 8
  %191 = load %struct.obstack*, %struct.obstack** %__o276, align 8
  %next_free277 = getelementptr inbounds %struct.obstack, %struct.obstack* %191, i32 0, i32 3
  %192 = load i8*, i8** %next_free277, align 8
  %add.ptr278 = getelementptr inbounds i8, i8* %192, i64 1
  %193 = load %struct.obstack*, %struct.obstack** %__o276, align 8
  %chunk_limit279 = getelementptr inbounds %struct.obstack, %struct.obstack* %193, i32 0, i32 4
  %194 = load i8*, i8** %chunk_limit279, align 8
  %cmp280 = icmp ugt i8* %add.ptr278, %194
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %sw.bb.274
  %195 = load %struct.obstack*, %struct.obstack** %__o276, align 8
  call void @_obstack_newchunk(%struct.obstack* %195, i32 1)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %sw.bb.274
  %196 = load %struct.obstack*, %struct.obstack** %__o276, align 8
  %next_free284 = getelementptr inbounds %struct.obstack, %struct.obstack* %196, i32 0, i32 3
  %197 = load i8*, i8** %next_free284, align 8
  %incdec.ptr285 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr285, i8** %next_free284, align 8
  store i8 27, i8* %197, align 1
  br label %sw.epilog.812

sw.bb.286:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o288, align 8
  %198 = load %struct.obstack*, %struct.obstack** %__o288, align 8
  %next_free289 = getelementptr inbounds %struct.obstack, %struct.obstack* %198, i32 0, i32 3
  %199 = load i8*, i8** %next_free289, align 8
  %add.ptr290 = getelementptr inbounds i8, i8* %199, i64 1
  %200 = load %struct.obstack*, %struct.obstack** %__o288, align 8
  %chunk_limit291 = getelementptr inbounds %struct.obstack, %struct.obstack* %200, i32 0, i32 4
  %201 = load i8*, i8** %chunk_limit291, align 8
  %cmp292 = icmp ugt i8* %add.ptr290, %201
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %sw.bb.286
  %202 = load %struct.obstack*, %struct.obstack** %__o288, align 8
  call void @_obstack_newchunk(%struct.obstack* %202, i32 1)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %sw.bb.286
  %203 = load %struct.obstack*, %struct.obstack** %__o288, align 8
  %next_free296 = getelementptr inbounds %struct.obstack, %struct.obstack* %203, i32 0, i32 3
  %204 = load i8*, i8** %next_free296, align 8
  %incdec.ptr297 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %incdec.ptr297, i8** %next_free296, align 8
  store i8 12, i8* %204, align 1
  br label %sw.epilog.812

sw.bb.298:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o300, align 8
  %205 = load %struct.obstack*, %struct.obstack** %__o300, align 8
  %next_free301 = getelementptr inbounds %struct.obstack, %struct.obstack* %205, i32 0, i32 3
  %206 = load i8*, i8** %next_free301, align 8
  %add.ptr302 = getelementptr inbounds i8, i8* %206, i64 1
  %207 = load %struct.obstack*, %struct.obstack** %__o300, align 8
  %chunk_limit303 = getelementptr inbounds %struct.obstack, %struct.obstack* %207, i32 0, i32 4
  %208 = load i8*, i8** %chunk_limit303, align 8
  %cmp304 = icmp ugt i8* %add.ptr302, %208
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %sw.bb.298
  %209 = load %struct.obstack*, %struct.obstack** %__o300, align 8
  call void @_obstack_newchunk(%struct.obstack* %209, i32 1)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %sw.bb.298
  %210 = load %struct.obstack*, %struct.obstack** %__o300, align 8
  %next_free308 = getelementptr inbounds %struct.obstack, %struct.obstack* %210, i32 0, i32 3
  %211 = load i8*, i8** %next_free308, align 8
  %incdec.ptr309 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr309, i8** %next_free308, align 8
  store i8 10, i8* %211, align 1
  br label %sw.epilog.812

sw.bb.310:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o312, align 8
  %212 = load %struct.obstack*, %struct.obstack** %__o312, align 8
  %next_free313 = getelementptr inbounds %struct.obstack, %struct.obstack* %212, i32 0, i32 3
  %213 = load i8*, i8** %next_free313, align 8
  %add.ptr314 = getelementptr inbounds i8, i8* %213, i64 1
  %214 = load %struct.obstack*, %struct.obstack** %__o312, align 8
  %chunk_limit315 = getelementptr inbounds %struct.obstack, %struct.obstack* %214, i32 0, i32 4
  %215 = load i8*, i8** %chunk_limit315, align 8
  %cmp316 = icmp ugt i8* %add.ptr314, %215
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %sw.bb.310
  %216 = load %struct.obstack*, %struct.obstack** %__o312, align 8
  call void @_obstack_newchunk(%struct.obstack* %216, i32 1)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %sw.bb.310
  %217 = load %struct.obstack*, %struct.obstack** %__o312, align 8
  %next_free320 = getelementptr inbounds %struct.obstack, %struct.obstack* %217, i32 0, i32 3
  %218 = load i8*, i8** %next_free320, align 8
  %incdec.ptr321 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr321, i8** %next_free320, align 8
  store i8 13, i8* %218, align 1
  br label %sw.epilog.812

sw.bb.322:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o324, align 8
  %219 = load %struct.obstack*, %struct.obstack** %__o324, align 8
  %next_free325 = getelementptr inbounds %struct.obstack, %struct.obstack* %219, i32 0, i32 3
  %220 = load i8*, i8** %next_free325, align 8
  %add.ptr326 = getelementptr inbounds i8, i8* %220, i64 1
  %221 = load %struct.obstack*, %struct.obstack** %__o324, align 8
  %chunk_limit327 = getelementptr inbounds %struct.obstack, %struct.obstack* %221, i32 0, i32 4
  %222 = load i8*, i8** %chunk_limit327, align 8
  %cmp328 = icmp ugt i8* %add.ptr326, %222
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %sw.bb.322
  %223 = load %struct.obstack*, %struct.obstack** %__o324, align 8
  call void @_obstack_newchunk(%struct.obstack* %223, i32 1)
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %sw.bb.322
  %224 = load %struct.obstack*, %struct.obstack** %__o324, align 8
  %next_free332 = getelementptr inbounds %struct.obstack, %struct.obstack* %224, i32 0, i32 3
  %225 = load i8*, i8** %next_free332, align 8
  %incdec.ptr333 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr333, i8** %next_free332, align 8
  store i8 9, i8* %225, align 1
  br label %sw.epilog.812

sw.bb.334:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o336, align 8
  %226 = load %struct.obstack*, %struct.obstack** %__o336, align 8
  %next_free337 = getelementptr inbounds %struct.obstack, %struct.obstack* %226, i32 0, i32 3
  %227 = load i8*, i8** %next_free337, align 8
  %add.ptr338 = getelementptr inbounds i8, i8* %227, i64 1
  %228 = load %struct.obstack*, %struct.obstack** %__o336, align 8
  %chunk_limit339 = getelementptr inbounds %struct.obstack, %struct.obstack* %228, i32 0, i32 4
  %229 = load i8*, i8** %chunk_limit339, align 8
  %cmp340 = icmp ugt i8* %add.ptr338, %229
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %sw.bb.334
  %230 = load %struct.obstack*, %struct.obstack** %__o336, align 8
  call void @_obstack_newchunk(%struct.obstack* %230, i32 1)
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %sw.bb.334
  %231 = load %struct.obstack*, %struct.obstack** %__o336, align 8
  %next_free344 = getelementptr inbounds %struct.obstack, %struct.obstack* %231, i32 0, i32 3
  %232 = load i8*, i8** %next_free344, align 8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr345, i8** %next_free344, align 8
  store i8 11, i8* %232, align 1
  br label %sw.epilog.812

sw.bb.346:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o348, align 8
  %233 = load %struct.obstack*, %struct.obstack** %__o348, align 8
  %next_free349 = getelementptr inbounds %struct.obstack, %struct.obstack* %233, i32 0, i32 3
  %234 = load i8*, i8** %next_free349, align 8
  %add.ptr350 = getelementptr inbounds i8, i8* %234, i64 1
  %235 = load %struct.obstack*, %struct.obstack** %__o348, align 8
  %chunk_limit351 = getelementptr inbounds %struct.obstack, %struct.obstack* %235, i32 0, i32 4
  %236 = load i8*, i8** %chunk_limit351, align 8
  %cmp352 = icmp ugt i8* %add.ptr350, %236
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %sw.bb.346
  %237 = load %struct.obstack*, %struct.obstack** %__o348, align 8
  call void @_obstack_newchunk(%struct.obstack* %237, i32 1)
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.354, %sw.bb.346
  %238 = load i8*, i8** @ppdtext, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %238, i64 1
  %239 = load i8, i8* %arrayidx356, align 1
  %240 = load %struct.obstack*, %struct.obstack** %__o348, align 8
  %next_free357 = getelementptr inbounds %struct.obstack, %struct.obstack* %240, i32 0, i32 3
  %241 = load i8*, i8** %next_free357, align 8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr358, i8** %next_free357, align 8
  store i8 %239, i8* %241, align 1
  br label %sw.epilog.812

sw.bb.359:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o361, align 8
  %242 = load i32, i32* @ppdleng, align 4
  store i32 %242, i32* %__len, align 4
  %243 = load %struct.obstack*, %struct.obstack** %__o361, align 8
  %next_free363 = getelementptr inbounds %struct.obstack, %struct.obstack* %243, i32 0, i32 3
  %244 = load i8*, i8** %next_free363, align 8
  %245 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %245 to i64
  %add.ptr364 = getelementptr inbounds i8, i8* %244, i64 %idx.ext
  %246 = load %struct.obstack*, %struct.obstack** %__o361, align 8
  %chunk_limit365 = getelementptr inbounds %struct.obstack, %struct.obstack* %246, i32 0, i32 4
  %247 = load i8*, i8** %chunk_limit365, align 8
  %cmp366 = icmp ugt i8* %add.ptr364, %247
  br i1 %cmp366, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %sw.bb.359
  %248 = load %struct.obstack*, %struct.obstack** %__o361, align 8
  %249 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %248, i32 %249)
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.368, %sw.bb.359
  %250 = load %struct.obstack*, %struct.obstack** %__o361, align 8
  %next_free370 = getelementptr inbounds %struct.obstack, %struct.obstack* %250, i32 0, i32 3
  %251 = load i8*, i8** %next_free370, align 8
  %252 = load i8*, i8** @ppdtext, align 8
  %253 = load i32, i32* %__len, align 4
  %conv371 = sext i32 %253 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %252, i64 %conv371, i32 1, i1 false)
  %254 = load i32, i32* %__len, align 4
  %255 = load %struct.obstack*, %struct.obstack** %__o361, align 8
  %next_free372 = getelementptr inbounds %struct.obstack, %struct.obstack* %255, i32 0, i32 3
  %256 = load i8*, i8** %next_free372, align 8
  %idx.ext373 = sext i32 %254 to i64
  %add.ptr374 = getelementptr inbounds i8, i8* %256, i64 %idx.ext373
  store i8* %add.ptr374, i8** %next_free372, align 8
  br label %sw.epilog.812

sw.bb.375:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o379, align 8
  %257 = load %struct.obstack*, %struct.obstack** %__o379, align 8
  %next_free380 = getelementptr inbounds %struct.obstack, %struct.obstack* %257, i32 0, i32 3
  %258 = load i8*, i8** %next_free380, align 8
  %add.ptr381 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load %struct.obstack*, %struct.obstack** %__o379, align 8
  %chunk_limit382 = getelementptr inbounds %struct.obstack, %struct.obstack* %259, i32 0, i32 4
  %260 = load i8*, i8** %chunk_limit382, align 8
  %cmp383 = icmp ugt i8* %add.ptr381, %260
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %sw.bb.375
  %261 = load %struct.obstack*, %struct.obstack** %__o379, align 8
  call void @_obstack_newchunk(%struct.obstack* %261, i32 1)
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.385, %sw.bb.375
  %262 = load %struct.obstack*, %struct.obstack** %__o379, align 8
  %next_free387 = getelementptr inbounds %struct.obstack, %struct.obstack* %262, i32 0, i32 3
  %263 = load i8*, i8** %next_free387, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr388, i8** %next_free387, align 8
  store i8 0, i8* %263, align 1
  store %struct.obstack* @string_stack, %struct.obstack** %__o1390, align 8
  %264 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %object_base393 = getelementptr inbounds %struct.obstack, %struct.obstack* %264, i32 0, i32 2
  %265 = load i8*, i8** %object_base393, align 8
  store i8* %265, i8** %value392, align 8
  %266 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free394 = getelementptr inbounds %struct.obstack, %struct.obstack* %266, i32 0, i32 3
  %267 = load i8*, i8** %next_free394, align 8
  %268 = load i8*, i8** %value392, align 8
  %cmp395 = icmp eq i8* %267, %268
  br i1 %cmp395, label %if.then.397, label %if.end.402

if.then.397:                                      ; preds = %if.end.386
  %269 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %maybe_empty_object398 = getelementptr inbounds %struct.obstack, %struct.obstack* %269, i32 0, i32 10
  %bf.load399 = load i8, i8* %maybe_empty_object398, align 8
  %bf.clear400 = and i8 %bf.load399, -3
  %bf.set401 = or i8 %bf.clear400, 2
  store i8 %bf.set401, i8* %maybe_empty_object398, align 8
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.397, %if.end.386
  %270 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free403 = getelementptr inbounds %struct.obstack, %struct.obstack* %270, i32 0, i32 3
  %271 = load i8*, i8** %next_free403, align 8
  %sub.ptr.lhs.cast404 = ptrtoint i8* %271 to i64
  %sub.ptr.sub405 = sub i64 %sub.ptr.lhs.cast404, 0
  %272 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %alignment_mask406 = getelementptr inbounds %struct.obstack, %struct.obstack* %272, i32 0, i32 6
  %273 = load i32, i32* %alignment_mask406, align 4
  %conv407 = sext i32 %273 to i64
  %add408 = add nsw i64 %sub.ptr.sub405, %conv407
  %274 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %alignment_mask409 = getelementptr inbounds %struct.obstack, %struct.obstack* %274, i32 0, i32 6
  %275 = load i32, i32* %alignment_mask409, align 4
  %neg410 = xor i32 %275, -1
  %conv411 = sext i32 %neg410 to i64
  %and412 = and i64 %add408, %conv411
  %add.ptr413 = getelementptr inbounds i8, i8* null, i64 %and412
  %276 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free414 = getelementptr inbounds %struct.obstack, %struct.obstack* %276, i32 0, i32 3
  store i8* %add.ptr413, i8** %next_free414, align 8
  %277 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free415 = getelementptr inbounds %struct.obstack, %struct.obstack* %277, i32 0, i32 3
  %278 = load i8*, i8** %next_free415, align 8
  %279 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %chunk416 = getelementptr inbounds %struct.obstack, %struct.obstack* %279, i32 0, i32 1
  %280 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk416, align 8
  %281 = bitcast %struct._obstack_chunk* %280 to i8*
  %sub.ptr.lhs.cast417 = ptrtoint i8* %278 to i64
  %sub.ptr.rhs.cast418 = ptrtoint i8* %281 to i64
  %sub.ptr.sub419 = sub i64 %sub.ptr.lhs.cast417, %sub.ptr.rhs.cast418
  %282 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %chunk_limit420 = getelementptr inbounds %struct.obstack, %struct.obstack* %282, i32 0, i32 4
  %283 = load i8*, i8** %chunk_limit420, align 8
  %284 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %chunk421 = getelementptr inbounds %struct.obstack, %struct.obstack* %284, i32 0, i32 1
  %285 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk421, align 8
  %286 = bitcast %struct._obstack_chunk* %285 to i8*
  %sub.ptr.lhs.cast422 = ptrtoint i8* %283 to i64
  %sub.ptr.rhs.cast423 = ptrtoint i8* %286 to i64
  %sub.ptr.sub424 = sub i64 %sub.ptr.lhs.cast422, %sub.ptr.rhs.cast423
  %cmp425 = icmp sgt i64 %sub.ptr.sub419, %sub.ptr.sub424
  br i1 %cmp425, label %if.then.427, label %if.end.430

if.then.427:                                      ; preds = %if.end.402
  %287 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %chunk_limit428 = getelementptr inbounds %struct.obstack, %struct.obstack* %287, i32 0, i32 4
  %288 = load i8*, i8** %chunk_limit428, align 8
  %289 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free429 = getelementptr inbounds %struct.obstack, %struct.obstack* %289, i32 0, i32 3
  store i8* %288, i8** %next_free429, align 8
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.427, %if.end.402
  %290 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %next_free431 = getelementptr inbounds %struct.obstack, %struct.obstack* %290, i32 0, i32 3
  %291 = load i8*, i8** %next_free431, align 8
  %292 = load %struct.obstack*, %struct.obstack** %__o1390, align 8
  %object_base432 = getelementptr inbounds %struct.obstack, %struct.obstack* %292, i32 0, i32 2
  store i8* %291, i8** %object_base432, align 8
  %293 = load i8*, i8** %value392, align 8
  store i8* %293, i8** %tmp433
  %294 = load i8*, i8** %tmp433
  store i8* %294, i8** %string377, align 8
  store %struct.obstack* @string_stack, %struct.obstack** %__o435, align 8
  %295 = load i8*, i8** %string377, align 8
  store i8* %295, i8** %__obj437, align 8
  %296 = load i8*, i8** %__obj437, align 8
  %297 = load %struct.obstack*, %struct.obstack** %__o435, align 8
  %chunk438 = getelementptr inbounds %struct.obstack, %struct.obstack* %297, i32 0, i32 1
  %298 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk438, align 8
  %299 = bitcast %struct._obstack_chunk* %298 to i8*
  %cmp439 = icmp ugt i8* %296, %299
  br i1 %cmp439, label %land.lhs.true.441, label %if.else.448

land.lhs.true.441:                                ; preds = %if.end.430
  %300 = load i8*, i8** %__obj437, align 8
  %301 = load %struct.obstack*, %struct.obstack** %__o435, align 8
  %chunk_limit442 = getelementptr inbounds %struct.obstack, %struct.obstack* %301, i32 0, i32 4
  %302 = load i8*, i8** %chunk_limit442, align 8
  %cmp443 = icmp ult i8* %300, %302
  br i1 %cmp443, label %if.then.445, label %if.else.448

if.then.445:                                      ; preds = %land.lhs.true.441
  %303 = load i8*, i8** %__obj437, align 8
  %304 = load %struct.obstack*, %struct.obstack** %__o435, align 8
  %object_base446 = getelementptr inbounds %struct.obstack, %struct.obstack* %304, i32 0, i32 2
  store i8* %303, i8** %object_base446, align 8
  %305 = load %struct.obstack*, %struct.obstack** %__o435, align 8
  %next_free447 = getelementptr inbounds %struct.obstack, %struct.obstack* %305, i32 0, i32 3
  store i8* %303, i8** %next_free447, align 8
  br label %if.end.449

if.else.448:                                      ; preds = %land.lhs.true.441, %if.end.430
  %306 = load %struct.obstack*, %struct.obstack** %__o435, align 8
  %307 = load i8*, i8** %__obj437, align 8
  call void @obstack_free(%struct.obstack* %306, i8* %307)
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.448, %if.then.445
  store i32 1, i32* @yy_start, align 4
  %308 = load i8*, i8** %string377, align 8
  %call450 = call i8* @xstrdup(i8* %308)
  store i8* %call450, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @ppdlval, i32 0, i32 0), align 8
  store i32 265, i32* %retval
  br label %return

sw.bb.451:                                        ; preds = %do_action
  %309 = load i8*, i8** @ppdtext, align 8
  %arrayidx454 = getelementptr inbounds i8, i8* %309, i64 1
  %310 = load i8, i8* %arrayidx454, align 1
  %conv455 = sext i8 %310 to i32
  %sub456 = sub nsw i32 %conv455, 48
  store i32 %sub456, i32* %value453, align 4
  %311 = load i8*, i8** @ppdtext, align 8
  %add.ptr459 = getelementptr inbounds i8, i8* %311, i64 2
  store i8* %add.ptr459, i8** %cursor458, align 8
  br label %while.cond.460

while.cond.460:                                   ; preds = %while.body.462, %sw.bb.451
  %312 = load i8*, i8** %cursor458, align 8
  %313 = load i8, i8* %312, align 1
  %tobool461 = icmp ne i8 %313, 0
  br i1 %tobool461, label %while.body.462, label %while.end.468

while.body.462:                                   ; preds = %while.cond.460
  %314 = load i32, i32* %value453, align 4
  %mul463 = mul nsw i32 8, %314
  %315 = load i8*, i8** %cursor458, align 8
  %incdec.ptr464 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %incdec.ptr464, i8** %cursor458, align 8
  %316 = load i8, i8* %315, align 1
  %conv465 = sext i8 %316 to i32
  %add466 = add nsw i32 %mul463, %conv465
  %sub467 = sub nsw i32 %add466, 48
  store i32 %sub467, i32* %value453, align 4
  br label %while.cond.460

while.end.468:                                    ; preds = %while.cond.460
  store %struct.obstack* @string_stack, %struct.obstack** %__o470, align 8
  %317 = load %struct.obstack*, %struct.obstack** %__o470, align 8
  %next_free471 = getelementptr inbounds %struct.obstack, %struct.obstack* %317, i32 0, i32 3
  %318 = load i8*, i8** %next_free471, align 8
  %add.ptr472 = getelementptr inbounds i8, i8* %318, i64 1
  %319 = load %struct.obstack*, %struct.obstack** %__o470, align 8
  %chunk_limit473 = getelementptr inbounds %struct.obstack, %struct.obstack* %319, i32 0, i32 4
  %320 = load i8*, i8** %chunk_limit473, align 8
  %cmp474 = icmp ugt i8* %add.ptr472, %320
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %while.end.468
  %321 = load %struct.obstack*, %struct.obstack** %__o470, align 8
  call void @_obstack_newchunk(%struct.obstack* %321, i32 1)
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %while.end.468
  %322 = load i32, i32* %value453, align 4
  %conv478 = trunc i32 %322 to i8
  %323 = load %struct.obstack*, %struct.obstack** %__o470, align 8
  %next_free479 = getelementptr inbounds %struct.obstack, %struct.obstack* %323, i32 0, i32 3
  %324 = load i8*, i8** %next_free479, align 8
  %incdec.ptr480 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr480, i8** %next_free479, align 8
  store i8 %conv478, i8* %324, align 1
  br label %sw.epilog.812

sw.bb.481:                                        ; preds = %do_action
  store i32 0, i32* %value483, align 4
  %325 = load i8*, i8** @ppdtext, align 8
  %add.ptr486 = getelementptr inbounds i8, i8* %325, i64 2
  store i8* %add.ptr486, i8** %cursor485, align 8
  br label %while.cond.487

while.cond.487:                                   ; preds = %if.end.526, %sw.bb.481
  %326 = load i8*, i8** %cursor485, align 8
  %327 = load i8, i8* %326, align 1
  %tobool488 = icmp ne i8 %327, 0
  br i1 %tobool488, label %while.body.489, label %while.end.527

while.body.489:                                   ; preds = %while.cond.487
  %328 = load i8*, i8** %cursor485, align 8
  %329 = load i8, i8* %328, align 1
  %conv490 = sext i8 %329 to i32
  %cmp491 = icmp sge i32 %conv490, 97
  br i1 %cmp491, label %land.lhs.true.493, label %if.else.504

land.lhs.true.493:                                ; preds = %while.body.489
  %330 = load i8*, i8** %cursor485, align 8
  %331 = load i8, i8* %330, align 1
  %conv494 = sext i8 %331 to i32
  %cmp495 = icmp sle i32 %conv494, 102
  br i1 %cmp495, label %if.then.497, label %if.else.504

if.then.497:                                      ; preds = %land.lhs.true.493
  %332 = load i32, i32* %value483, align 4
  %mul498 = mul nsw i32 16, %332
  %333 = load i8*, i8** %cursor485, align 8
  %incdec.ptr499 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr499, i8** %cursor485, align 8
  %334 = load i8, i8* %333, align 1
  %conv500 = sext i8 %334 to i32
  %add501 = add nsw i32 %mul498, %conv500
  %sub502 = sub nsw i32 %add501, 97
  %add503 = add nsw i32 %sub502, 10
  store i32 %add503, i32* %value483, align 4
  br label %if.end.526

if.else.504:                                      ; preds = %land.lhs.true.493, %while.body.489
  %335 = load i8*, i8** %cursor485, align 8
  %336 = load i8, i8* %335, align 1
  %conv505 = sext i8 %336 to i32
  %cmp506 = icmp sge i32 %conv505, 65
  br i1 %cmp506, label %land.lhs.true.508, label %if.else.519

land.lhs.true.508:                                ; preds = %if.else.504
  %337 = load i8*, i8** %cursor485, align 8
  %338 = load i8, i8* %337, align 1
  %conv509 = sext i8 %338 to i32
  %cmp510 = icmp sle i32 %conv509, 70
  br i1 %cmp510, label %if.then.512, label %if.else.519

if.then.512:                                      ; preds = %land.lhs.true.508
  %339 = load i32, i32* %value483, align 4
  %mul513 = mul nsw i32 16, %339
  %340 = load i8*, i8** %cursor485, align 8
  %incdec.ptr514 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr514, i8** %cursor485, align 8
  %341 = load i8, i8* %340, align 1
  %conv515 = sext i8 %341 to i32
  %add516 = add nsw i32 %mul513, %conv515
  %sub517 = sub nsw i32 %add516, 65
  %add518 = add nsw i32 %sub517, 10
  store i32 %add518, i32* %value483, align 4
  br label %if.end.525

if.else.519:                                      ; preds = %land.lhs.true.508, %if.else.504
  %342 = load i32, i32* %value483, align 4
  %mul520 = mul nsw i32 16, %342
  %343 = load i8*, i8** %cursor485, align 8
  %incdec.ptr521 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %incdec.ptr521, i8** %cursor485, align 8
  %344 = load i8, i8* %343, align 1
  %conv522 = sext i8 %344 to i32
  %add523 = add nsw i32 %mul520, %conv522
  %sub524 = sub nsw i32 %add523, 48
  store i32 %sub524, i32* %value483, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.519, %if.then.512
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %if.then.497
  br label %while.cond.487

while.end.527:                                    ; preds = %while.cond.487
  store %struct.obstack* @string_stack, %struct.obstack** %__o529, align 8
  %345 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %next_free530 = getelementptr inbounds %struct.obstack, %struct.obstack* %345, i32 0, i32 3
  %346 = load i8*, i8** %next_free530, align 8
  %add.ptr531 = getelementptr inbounds i8, i8* %346, i64 1
  %347 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %chunk_limit532 = getelementptr inbounds %struct.obstack, %struct.obstack* %347, i32 0, i32 4
  %348 = load i8*, i8** %chunk_limit532, align 8
  %cmp533 = icmp ugt i8* %add.ptr531, %348
  br i1 %cmp533, label %if.then.535, label %if.end.536

if.then.535:                                      ; preds = %while.end.527
  %349 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  call void @_obstack_newchunk(%struct.obstack* %349, i32 1)
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.535, %while.end.527
  %350 = load i32, i32* %value483, align 4
  %conv537 = trunc i32 %350 to i8
  %351 = load %struct.obstack*, %struct.obstack** %__o529, align 8
  %next_free538 = getelementptr inbounds %struct.obstack, %struct.obstack* %351, i32 0, i32 3
  %352 = load i8*, i8** %next_free538, align 8
  %incdec.ptr539 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %incdec.ptr539, i8** %next_free538, align 8
  store i8 %conv537, i8* %352, align 1
  br label %sw.epilog.812

sw.bb.540:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o542, align 8
  %353 = load %struct.obstack*, %struct.obstack** %__o542, align 8
  %next_free543 = getelementptr inbounds %struct.obstack, %struct.obstack* %353, i32 0, i32 3
  %354 = load i8*, i8** %next_free543, align 8
  %add.ptr544 = getelementptr inbounds i8, i8* %354, i64 1
  %355 = load %struct.obstack*, %struct.obstack** %__o542, align 8
  %chunk_limit545 = getelementptr inbounds %struct.obstack, %struct.obstack* %355, i32 0, i32 4
  %356 = load i8*, i8** %chunk_limit545, align 8
  %cmp546 = icmp ugt i8* %add.ptr544, %356
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %sw.bb.540
  %357 = load %struct.obstack*, %struct.obstack** %__o542, align 8
  call void @_obstack_newchunk(%struct.obstack* %357, i32 1)
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.548, %sw.bb.540
  %358 = load %struct.obstack*, %struct.obstack** %__o542, align 8
  %next_free550 = getelementptr inbounds %struct.obstack, %struct.obstack* %358, i32 0, i32 3
  %359 = load i8*, i8** %next_free550, align 8
  %incdec.ptr551 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %incdec.ptr551, i8** %next_free550, align 8
  store i8 7, i8* %359, align 1
  br label %sw.epilog.812

sw.bb.552:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o554, align 8
  %360 = load %struct.obstack*, %struct.obstack** %__o554, align 8
  %next_free555 = getelementptr inbounds %struct.obstack, %struct.obstack* %360, i32 0, i32 3
  %361 = load i8*, i8** %next_free555, align 8
  %add.ptr556 = getelementptr inbounds i8, i8* %361, i64 1
  %362 = load %struct.obstack*, %struct.obstack** %__o554, align 8
  %chunk_limit557 = getelementptr inbounds %struct.obstack, %struct.obstack* %362, i32 0, i32 4
  %363 = load i8*, i8** %chunk_limit557, align 8
  %cmp558 = icmp ugt i8* %add.ptr556, %363
  br i1 %cmp558, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %sw.bb.552
  %364 = load %struct.obstack*, %struct.obstack** %__o554, align 8
  call void @_obstack_newchunk(%struct.obstack* %364, i32 1)
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.560, %sw.bb.552
  %365 = load %struct.obstack*, %struct.obstack** %__o554, align 8
  %next_free562 = getelementptr inbounds %struct.obstack, %struct.obstack* %365, i32 0, i32 3
  %366 = load i8*, i8** %next_free562, align 8
  %incdec.ptr563 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %incdec.ptr563, i8** %next_free562, align 8
  store i8 8, i8* %366, align 1
  br label %sw.epilog.812

sw.bb.564:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o566, align 8
  %367 = load %struct.obstack*, %struct.obstack** %__o566, align 8
  %next_free567 = getelementptr inbounds %struct.obstack, %struct.obstack* %367, i32 0, i32 3
  %368 = load i8*, i8** %next_free567, align 8
  %add.ptr568 = getelementptr inbounds i8, i8* %368, i64 1
  %369 = load %struct.obstack*, %struct.obstack** %__o566, align 8
  %chunk_limit569 = getelementptr inbounds %struct.obstack, %struct.obstack* %369, i32 0, i32 4
  %370 = load i8*, i8** %chunk_limit569, align 8
  %cmp570 = icmp ugt i8* %add.ptr568, %370
  br i1 %cmp570, label %if.then.572, label %if.end.573

if.then.572:                                      ; preds = %sw.bb.564
  %371 = load %struct.obstack*, %struct.obstack** %__o566, align 8
  call void @_obstack_newchunk(%struct.obstack* %371, i32 1)
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.572, %sw.bb.564
  %372 = load %struct.obstack*, %struct.obstack** %__o566, align 8
  %next_free574 = getelementptr inbounds %struct.obstack, %struct.obstack* %372, i32 0, i32 3
  %373 = load i8*, i8** %next_free574, align 8
  %incdec.ptr575 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %incdec.ptr575, i8** %next_free574, align 8
  store i8 127, i8* %373, align 1
  br label %sw.epilog.812

sw.bb.576:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o578, align 8
  %374 = load %struct.obstack*, %struct.obstack** %__o578, align 8
  %next_free579 = getelementptr inbounds %struct.obstack, %struct.obstack* %374, i32 0, i32 3
  %375 = load i8*, i8** %next_free579, align 8
  %add.ptr580 = getelementptr inbounds i8, i8* %375, i64 1
  %376 = load %struct.obstack*, %struct.obstack** %__o578, align 8
  %chunk_limit581 = getelementptr inbounds %struct.obstack, %struct.obstack* %376, i32 0, i32 4
  %377 = load i8*, i8** %chunk_limit581, align 8
  %cmp582 = icmp ugt i8* %add.ptr580, %377
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %sw.bb.576
  %378 = load %struct.obstack*, %struct.obstack** %__o578, align 8
  call void @_obstack_newchunk(%struct.obstack* %378, i32 1)
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.584, %sw.bb.576
  %379 = load %struct.obstack*, %struct.obstack** %__o578, align 8
  %next_free586 = getelementptr inbounds %struct.obstack, %struct.obstack* %379, i32 0, i32 3
  %380 = load i8*, i8** %next_free586, align 8
  %incdec.ptr587 = getelementptr inbounds i8, i8* %380, i32 1
  store i8* %incdec.ptr587, i8** %next_free586, align 8
  store i8 27, i8* %380, align 1
  br label %sw.epilog.812

sw.bb.588:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o590, align 8
  %381 = load %struct.obstack*, %struct.obstack** %__o590, align 8
  %next_free591 = getelementptr inbounds %struct.obstack, %struct.obstack* %381, i32 0, i32 3
  %382 = load i8*, i8** %next_free591, align 8
  %add.ptr592 = getelementptr inbounds i8, i8* %382, i64 1
  %383 = load %struct.obstack*, %struct.obstack** %__o590, align 8
  %chunk_limit593 = getelementptr inbounds %struct.obstack, %struct.obstack* %383, i32 0, i32 4
  %384 = load i8*, i8** %chunk_limit593, align 8
  %cmp594 = icmp ugt i8* %add.ptr592, %384
  br i1 %cmp594, label %if.then.596, label %if.end.597

if.then.596:                                      ; preds = %sw.bb.588
  %385 = load %struct.obstack*, %struct.obstack** %__o590, align 8
  call void @_obstack_newchunk(%struct.obstack* %385, i32 1)
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.596, %sw.bb.588
  %386 = load %struct.obstack*, %struct.obstack** %__o590, align 8
  %next_free598 = getelementptr inbounds %struct.obstack, %struct.obstack* %386, i32 0, i32 3
  %387 = load i8*, i8** %next_free598, align 8
  %incdec.ptr599 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %incdec.ptr599, i8** %next_free598, align 8
  store i8 12, i8* %387, align 1
  br label %sw.epilog.812

sw.bb.600:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o602, align 8
  %388 = load %struct.obstack*, %struct.obstack** %__o602, align 8
  %next_free603 = getelementptr inbounds %struct.obstack, %struct.obstack* %388, i32 0, i32 3
  %389 = load i8*, i8** %next_free603, align 8
  %add.ptr604 = getelementptr inbounds i8, i8* %389, i64 1
  %390 = load %struct.obstack*, %struct.obstack** %__o602, align 8
  %chunk_limit605 = getelementptr inbounds %struct.obstack, %struct.obstack* %390, i32 0, i32 4
  %391 = load i8*, i8** %chunk_limit605, align 8
  %cmp606 = icmp ugt i8* %add.ptr604, %391
  br i1 %cmp606, label %if.then.608, label %if.end.609

if.then.608:                                      ; preds = %sw.bb.600
  %392 = load %struct.obstack*, %struct.obstack** %__o602, align 8
  call void @_obstack_newchunk(%struct.obstack* %392, i32 1)
  br label %if.end.609

if.end.609:                                       ; preds = %if.then.608, %sw.bb.600
  %393 = load %struct.obstack*, %struct.obstack** %__o602, align 8
  %next_free610 = getelementptr inbounds %struct.obstack, %struct.obstack* %393, i32 0, i32 3
  %394 = load i8*, i8** %next_free610, align 8
  %incdec.ptr611 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %incdec.ptr611, i8** %next_free610, align 8
  store i8 10, i8* %394, align 1
  br label %sw.epilog.812

sw.bb.612:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o614, align 8
  %395 = load %struct.obstack*, %struct.obstack** %__o614, align 8
  %next_free615 = getelementptr inbounds %struct.obstack, %struct.obstack* %395, i32 0, i32 3
  %396 = load i8*, i8** %next_free615, align 8
  %add.ptr616 = getelementptr inbounds i8, i8* %396, i64 1
  %397 = load %struct.obstack*, %struct.obstack** %__o614, align 8
  %chunk_limit617 = getelementptr inbounds %struct.obstack, %struct.obstack* %397, i32 0, i32 4
  %398 = load i8*, i8** %chunk_limit617, align 8
  %cmp618 = icmp ugt i8* %add.ptr616, %398
  br i1 %cmp618, label %if.then.620, label %if.end.621

if.then.620:                                      ; preds = %sw.bb.612
  %399 = load %struct.obstack*, %struct.obstack** %__o614, align 8
  call void @_obstack_newchunk(%struct.obstack* %399, i32 1)
  br label %if.end.621

if.end.621:                                       ; preds = %if.then.620, %sw.bb.612
  %400 = load %struct.obstack*, %struct.obstack** %__o614, align 8
  %next_free622 = getelementptr inbounds %struct.obstack, %struct.obstack* %400, i32 0, i32 3
  %401 = load i8*, i8** %next_free622, align 8
  %incdec.ptr623 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %incdec.ptr623, i8** %next_free622, align 8
  store i8 13, i8* %401, align 1
  br label %sw.epilog.812

sw.bb.624:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o626, align 8
  %402 = load %struct.obstack*, %struct.obstack** %__o626, align 8
  %next_free627 = getelementptr inbounds %struct.obstack, %struct.obstack* %402, i32 0, i32 3
  %403 = load i8*, i8** %next_free627, align 8
  %add.ptr628 = getelementptr inbounds i8, i8* %403, i64 1
  %404 = load %struct.obstack*, %struct.obstack** %__o626, align 8
  %chunk_limit629 = getelementptr inbounds %struct.obstack, %struct.obstack* %404, i32 0, i32 4
  %405 = load i8*, i8** %chunk_limit629, align 8
  %cmp630 = icmp ugt i8* %add.ptr628, %405
  br i1 %cmp630, label %if.then.632, label %if.end.633

if.then.632:                                      ; preds = %sw.bb.624
  %406 = load %struct.obstack*, %struct.obstack** %__o626, align 8
  call void @_obstack_newchunk(%struct.obstack* %406, i32 1)
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.632, %sw.bb.624
  %407 = load %struct.obstack*, %struct.obstack** %__o626, align 8
  %next_free634 = getelementptr inbounds %struct.obstack, %struct.obstack* %407, i32 0, i32 3
  %408 = load i8*, i8** %next_free634, align 8
  %incdec.ptr635 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %incdec.ptr635, i8** %next_free634, align 8
  store i8 9, i8* %408, align 1
  br label %sw.epilog.812

sw.bb.636:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o638, align 8
  %409 = load %struct.obstack*, %struct.obstack** %__o638, align 8
  %next_free639 = getelementptr inbounds %struct.obstack, %struct.obstack* %409, i32 0, i32 3
  %410 = load i8*, i8** %next_free639, align 8
  %add.ptr640 = getelementptr inbounds i8, i8* %410, i64 1
  %411 = load %struct.obstack*, %struct.obstack** %__o638, align 8
  %chunk_limit641 = getelementptr inbounds %struct.obstack, %struct.obstack* %411, i32 0, i32 4
  %412 = load i8*, i8** %chunk_limit641, align 8
  %cmp642 = icmp ugt i8* %add.ptr640, %412
  br i1 %cmp642, label %if.then.644, label %if.end.645

if.then.644:                                      ; preds = %sw.bb.636
  %413 = load %struct.obstack*, %struct.obstack** %__o638, align 8
  call void @_obstack_newchunk(%struct.obstack* %413, i32 1)
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.644, %sw.bb.636
  %414 = load %struct.obstack*, %struct.obstack** %__o638, align 8
  %next_free646 = getelementptr inbounds %struct.obstack, %struct.obstack* %414, i32 0, i32 3
  %415 = load i8*, i8** %next_free646, align 8
  %incdec.ptr647 = getelementptr inbounds i8, i8* %415, i32 1
  store i8* %incdec.ptr647, i8** %next_free646, align 8
  store i8 11, i8* %415, align 1
  br label %sw.epilog.812

sw.bb.648:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o650, align 8
  %416 = load %struct.obstack*, %struct.obstack** %__o650, align 8
  %next_free651 = getelementptr inbounds %struct.obstack, %struct.obstack* %416, i32 0, i32 3
  %417 = load i8*, i8** %next_free651, align 8
  %add.ptr652 = getelementptr inbounds i8, i8* %417, i64 1
  %418 = load %struct.obstack*, %struct.obstack** %__o650, align 8
  %chunk_limit653 = getelementptr inbounds %struct.obstack, %struct.obstack* %418, i32 0, i32 4
  %419 = load i8*, i8** %chunk_limit653, align 8
  %cmp654 = icmp ugt i8* %add.ptr652, %419
  br i1 %cmp654, label %if.then.656, label %if.end.657

if.then.656:                                      ; preds = %sw.bb.648
  %420 = load %struct.obstack*, %struct.obstack** %__o650, align 8
  call void @_obstack_newchunk(%struct.obstack* %420, i32 1)
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.656, %sw.bb.648
  %421 = load i8*, i8** @ppdtext, align 8
  %arrayidx658 = getelementptr inbounds i8, i8* %421, i64 1
  %422 = load i8, i8* %arrayidx658, align 1
  %423 = load %struct.obstack*, %struct.obstack** %__o650, align 8
  %next_free659 = getelementptr inbounds %struct.obstack, %struct.obstack* %423, i32 0, i32 3
  %424 = load i8*, i8** %next_free659, align 8
  %incdec.ptr660 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %incdec.ptr660, i8** %next_free659, align 8
  store i8 %422, i8* %424, align 1
  br label %sw.epilog.812

sw.bb.661:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o663, align 8
  %425 = load i32, i32* @ppdleng, align 4
  store i32 %425, i32* %__len665, align 4
  %426 = load %struct.obstack*, %struct.obstack** %__o663, align 8
  %next_free666 = getelementptr inbounds %struct.obstack, %struct.obstack* %426, i32 0, i32 3
  %427 = load i8*, i8** %next_free666, align 8
  %428 = load i32, i32* %__len665, align 4
  %idx.ext667 = sext i32 %428 to i64
  %add.ptr668 = getelementptr inbounds i8, i8* %427, i64 %idx.ext667
  %429 = load %struct.obstack*, %struct.obstack** %__o663, align 8
  %chunk_limit669 = getelementptr inbounds %struct.obstack, %struct.obstack* %429, i32 0, i32 4
  %430 = load i8*, i8** %chunk_limit669, align 8
  %cmp670 = icmp ugt i8* %add.ptr668, %430
  br i1 %cmp670, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %sw.bb.661
  %431 = load %struct.obstack*, %struct.obstack** %__o663, align 8
  %432 = load i32, i32* %__len665, align 4
  call void @_obstack_newchunk(%struct.obstack* %431, i32 %432)
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.672, %sw.bb.661
  %433 = load %struct.obstack*, %struct.obstack** %__o663, align 8
  %next_free674 = getelementptr inbounds %struct.obstack, %struct.obstack* %433, i32 0, i32 3
  %434 = load i8*, i8** %next_free674, align 8
  %435 = load i8*, i8** @ppdtext, align 8
  %436 = load i32, i32* %__len665, align 4
  %conv675 = sext i32 %436 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %434, i8* %435, i64 %conv675, i32 1, i1 false)
  %437 = load i32, i32* %__len665, align 4
  %438 = load %struct.obstack*, %struct.obstack** %__o663, align 8
  %next_free676 = getelementptr inbounds %struct.obstack, %struct.obstack* %438, i32 0, i32 3
  %439 = load i8*, i8** %next_free676, align 8
  %idx.ext677 = sext i32 %437 to i64
  %add.ptr678 = getelementptr inbounds i8, i8* %439, i64 %idx.ext677
  store i8* %add.ptr678, i8** %next_free676, align 8
  br label %sw.epilog.812

sw.bb.679:                                        ; preds = %do_action
  br label %sw.epilog.812

sw.bb.680:                                        ; preds = %do_action
  %440 = load i32, i32* @include_stack_ptr, align 4
  %cmp681 = icmp sge i32 %440, 10
  br i1 %cmp681, label %if.then.683, label %if.end.685

if.then.683:                                      ; preds = %sw.bb.680
  %call684 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #2
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call684)
  br label %if.end.685

if.end.685:                                       ; preds = %if.then.683, %sw.bb.680
  %441 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool686 = icmp ne %struct.yy_buffer_state** %441, null
  br i1 %tobool686, label %cond.true.687, label %cond.false.689

cond.true.687:                                    ; preds = %if.end.685
  %442 = load i64, i64* @yy_buffer_stack_top, align 8
  %443 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx688 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %443, i64 %442
  %444 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx688, align 8
  br label %cond.end

cond.false.689:                                   ; preds = %if.end.685
  br label %cond.end

cond.end:                                         ; preds = %cond.false.689, %cond.true.687
  %cond = phi %struct.yy_buffer_state* [ %444, %cond.true.687 ], [ null, %cond.false.689 ]
  %445 = load i32, i32* @include_stack_ptr, align 4
  %idxprom690 = sext i32 %445 to i64
  %arrayidx691 = getelementptr inbounds [10 x %struct.yy_buffer_state*], [10 x %struct.yy_buffer_state*]* @include_stack, i32 0, i64 %idxprom690
  store %struct.yy_buffer_state* %cond, %struct.yy_buffer_state** %arrayidx691, align 8
  %446 = load i8*, i8** @ppdfilename, align 8
  %447 = load i32, i32* @include_stack_ptr, align 4
  %inc692 = add nsw i32 %447, 1
  store i32 %inc692, i32* @include_stack_ptr, align 4
  %idxprom693 = sext i32 %447 to i64
  %arrayidx694 = getelementptr inbounds [10 x i8*], [10 x i8*]* @filename_stack, i32 0, i64 %idxprom693
  store i8* %446, i8** %arrayidx694, align 8
  %448 = load i8*, i8** @ppdtext, align 8
  %incdec.ptr695 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %incdec.ptr695, i8** @ppdtext, align 8
  %449 = load i32, i32* @ppdleng, align 4
  %sub696 = sub nsw i32 %449, 2
  %idxprom697 = sext i32 %sub696 to i64
  %450 = load i8*, i8** @ppdtext, align 8
  %arrayidx698 = getelementptr inbounds i8, i8* %450, i64 %idxprom697
  store i8 0, i8* %arrayidx698, align 1
  br label %do.body.699

do.body.699:                                      ; preds = %cond.end
  %451 = load i32, i32* @msg_verbosity, align 4
  %and700 = and i32 64, %451
  %tobool701 = icmp ne i32 %and700, 0
  br i1 %tobool701, label %if.then.702, label %if.end.704

if.then.702:                                      ; preds = %do.body.699
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %453 = load i8*, i8** @ppdfilename, align 8
  %454 = load i32, i32* @ppdlineno, align 4
  %455 = load i8*, i8** @ppdtext, align 8
  %call703 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %452, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %453, i32 %454, i8* %455)
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.702, %do.body.699
  br label %do.end.706

do.end.706:                                       ; preds = %if.end.704
  %456 = load i8**, i8*** @ppdpath, align 8
  %457 = load i8*, i8** @ppdfilename, align 8
  %458 = load i8*, i8** @ppdtext, align 8
  %call707 = call i8* @xpw_find_included_file(i8** %456, i8* %457, i8* %458, i8* null)
  store i8* %call707, i8** @ppdfilename, align 8
  %459 = load i8*, i8** @ppdfilename, align 8
  %call708 = call %struct._IO_FILE* @xrfopen(i8* %459)
  store %struct._IO_FILE* %call708, %struct._IO_FILE** @ppdin, align 8
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call709 = call %struct.yy_buffer_state* @ppd_create_buffer(%struct._IO_FILE* %460, i32 16384)
  call void @ppd_switch_to_buffer(%struct.yy_buffer_state* %call709)
  store i32 1, i32* @yy_start, align 4
  br label %sw.epilog.812

sw.bb.710:                                        ; preds = %do_action, %do_action, %do_action, %do_action
  br label %do.body.711

do.body.711:                                      ; preds = %sw.bb.710
  %461 = load i32, i32* @msg_verbosity, align 4
  %and712 = and i32 64, %461
  %tobool713 = icmp ne i32 %and712, 0
  br i1 %tobool713, label %if.then.714, label %if.end.716

if.then.714:                                      ; preds = %do.body.711
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %463 = load i8*, i8** @ppdfilename, align 8
  %call715 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* %463)
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.714, %do.body.711
  br label %do.end.718

do.end.718:                                       ; preds = %if.end.716
  %464 = load i32, i32* @include_stack_ptr, align 4
  %dec = add nsw i32 %464, -1
  store i32 %dec, i32* @include_stack_ptr, align 4
  %cmp719 = icmp slt i32 %dec, 0
  br i1 %cmp719, label %if.then.721, label %if.else.722

if.then.721:                                      ; preds = %do.end.718
  store i32 0, i32* %retval
  br label %return

if.else.722:                                      ; preds = %do.end.718
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call723 = call i32 @fclose(%struct._IO_FILE* %465)
  %466 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool724 = icmp ne %struct.yy_buffer_state** %466, null
  br i1 %tobool724, label %cond.true.725, label %cond.false.727

cond.true.725:                                    ; preds = %if.else.722
  %467 = load i64, i64* @yy_buffer_stack_top, align 8
  %468 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx726 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %468, i64 %467
  %469 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx726, align 8
  br label %cond.end.728

cond.false.727:                                   ; preds = %if.else.722
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.727, %cond.true.725
  %cond729 = phi %struct.yy_buffer_state* [ %469, %cond.true.725 ], [ null, %cond.false.727 ]
  call void @ppd_delete_buffer(%struct.yy_buffer_state* %cond729)
  br label %do.body.730

do.body.730:                                      ; preds = %cond.end.728
  %470 = load i8*, i8** @ppdfilename, align 8
  %tobool731 = icmp ne i8* %470, null
  br i1 %tobool731, label %if.then.732, label %if.end.733

if.then.732:                                      ; preds = %do.body.730
  %471 = load i8*, i8** @ppdfilename, align 8
  call void @free(i8* %471) #2
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.732, %do.body.730
  br label %do.end.735

do.end.735:                                       ; preds = %if.end.733
  %472 = load i32, i32* @include_stack_ptr, align 4
  %idxprom736 = sext i32 %472 to i64
  %arrayidx737 = getelementptr inbounds [10 x i8*], [10 x i8*]* @filename_stack, i32 0, i64 %idxprom736
  %473 = load i8*, i8** %arrayidx737, align 8
  store i8* %473, i8** @ppdfilename, align 8
  %474 = load i32, i32* @include_stack_ptr, align 4
  %idxprom738 = sext i32 %474 to i64
  %arrayidx739 = getelementptr inbounds [10 x %struct.yy_buffer_state*], [10 x %struct.yy_buffer_state*]* @include_stack, i32 0, i64 %idxprom738
  %475 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx739, align 8
  call void @ppd_switch_to_buffer(%struct.yy_buffer_state* %475)
  br label %do.body.740

do.body.740:                                      ; preds = %do.end.735
  %476 = load i32, i32* @msg_verbosity, align 4
  %and741 = and i32 64, %476
  %tobool742 = icmp ne i32 %and741, 0
  br i1 %tobool742, label %if.then.743, label %if.end.745

if.then.743:                                      ; preds = %do.body.740
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %478 = load i8*, i8** @ppdfilename, align 8
  %call744 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %478)
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.743, %do.body.740
  br label %do.end.747

do.end.747:                                       ; preds = %if.end.745
  br label %if.end.748

if.end.748:                                       ; preds = %do.end.747
  br label %sw.epilog.812

sw.bb.749:                                        ; preds = %do_action
  %479 = load i8*, i8** @ppdtext, align 8
  %480 = load i32, i32* @ppdleng, align 4
  %conv750 = sext i32 %480 to i64
  %481 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdout, align 8
  %call751 = call i64 @fwrite(i8* %479, i64 %conv750, i64 1, %struct._IO_FILE* %481)
  br label %sw.epilog.812

sw.bb.752:                                        ; preds = %do_action
  %482 = load i8*, i8** %yy_cp, align 8
  %483 = load i8*, i8** @ppdtext, align 8
  %sub.ptr.lhs.cast754 = ptrtoint i8* %482 to i64
  %sub.ptr.rhs.cast755 = ptrtoint i8* %483 to i64
  %sub.ptr.sub756 = sub i64 %sub.ptr.lhs.cast754, %sub.ptr.rhs.cast755
  %conv757 = trunc i64 %sub.ptr.sub756 to i32
  %sub758 = sub nsw i32 %conv757, 1
  store i32 %sub758, i32* %yy_amount_of_matched_text, align 4
  %484 = load i8, i8* @yy_hold_char, align 1
  %485 = load i8*, i8** %yy_cp, align 8
  store i8 %484, i8* %485, align 1
  %486 = load i64, i64* @yy_buffer_stack_top, align 8
  %487 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx759 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %487, i64 %486
  %488 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx759, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %488, i32 0, i32 11
  %489 = load i32, i32* %yy_buffer_status, align 4
  %cmp760 = icmp eq i32 %489, 0
  br i1 %cmp760, label %if.then.762, label %if.end.767

if.then.762:                                      ; preds = %sw.bb.752
  %490 = load i64, i64* @yy_buffer_stack_top, align 8
  %491 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx763 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %491, i64 %490
  %492 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx763, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %492, i32 0, i32 4
  %493 = load i32, i32* %yy_n_chars, align 4
  store i32 %493, i32* @yy_n_chars, align 4
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %495 = load i64, i64* @yy_buffer_stack_top, align 8
  %496 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx764 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %496, i64 %495
  %497 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx764, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %497, i32 0, i32 0
  store %struct._IO_FILE* %494, %struct._IO_FILE** %yy_input_file, align 8
  %498 = load i64, i64* @yy_buffer_stack_top, align 8
  %499 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx765 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %499, i64 %498
  %500 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx765, align 8
  %yy_buffer_status766 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %500, i32 0, i32 11
  store i32 1, i32* %yy_buffer_status766, align 4
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.762, %sw.bb.752
  %501 = load i8*, i8** @yy_c_buf_p, align 8
  %502 = load i32, i32* @yy_n_chars, align 4
  %idxprom768 = sext i32 %502 to i64
  %503 = load i64, i64* @yy_buffer_stack_top, align 8
  %504 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx769 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %504, i64 %503
  %505 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx769, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %505, i32 0, i32 1
  %506 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx770 = getelementptr inbounds i8, i8* %506, i64 %idxprom768
  %cmp771 = icmp ule i8* %501, %arrayidx770
  br i1 %cmp771, label %if.then.773, label %if.else.784

if.then.773:                                      ; preds = %if.end.767
  %507 = load i8*, i8** @ppdtext, align 8
  %508 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext775 = sext i32 %508 to i64
  %add.ptr776 = getelementptr inbounds i8, i8* %507, i64 %idx.ext775
  store i8* %add.ptr776, i8** @yy_c_buf_p, align 8
  %call777 = call i32 @yy_get_previous_state()
  store i32 %call777, i32* %yy_current_state, align 4
  %509 = load i32, i32* %yy_current_state, align 4
  %call778 = call i32 @yy_try_NUL_trans(i32 %509)
  store i32 %call778, i32* %yy_next_state, align 4
  %510 = load i8*, i8** @ppdtext, align 8
  %add.ptr779 = getelementptr inbounds i8, i8* %510, i64 0
  store i8* %add.ptr779, i8** %yy_bp, align 8
  %511 = load i32, i32* %yy_next_state, align 4
  %tobool780 = icmp ne i32 %511, 0
  br i1 %tobool780, label %if.then.781, label %if.else.783

if.then.781:                                      ; preds = %if.then.773
  %512 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr782 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %incdec.ptr782, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr782, i8** %yy_cp, align 8
  %513 = load i32, i32* %yy_next_state, align 4
  store i32 %513, i32* %yy_current_state, align 4
  br label %yy_match

if.else.783:                                      ; preds = %if.then.773
  %514 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %514, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.784:                                      ; preds = %if.end.767
  %call785 = call i32 @yy_get_next_buffer()
  switch i32 %call785, label %sw.epilog [
    i32 1, label %sw.bb.786
    i32 0, label %sw.bb.799
    i32 2, label %sw.bb.804
  ]

sw.bb.786:                                        ; preds = %if.else.784
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %call787 = call i32 @ppdwrap()
  %tobool788 = icmp ne i32 %call787, 0
  br i1 %tobool788, label %if.then.789, label %if.else.794

if.then.789:                                      ; preds = %sw.bb.786
  %515 = load i8*, i8** @ppdtext, align 8
  %add.ptr790 = getelementptr inbounds i8, i8* %515, i64 0
  store i8* %add.ptr790, i8** @yy_c_buf_p, align 8
  %516 = load i32, i32* @yy_start, align 4
  %sub791 = sub nsw i32 %516, 1
  %div = sdiv i32 %sub791, 2
  %add792 = add nsw i32 44, %div
  %add793 = add nsw i32 %add792, 1
  store i32 %add793, i32* %yy_act, align 4
  br label %do_action

if.else.794:                                      ; preds = %sw.bb.786
  %517 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %tobool795 = icmp ne i32 %517, 0
  br i1 %tobool795, label %if.end.797, label %if.then.796

if.then.796:                                      ; preds = %if.else.794
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  call void @ppdrestart(%struct._IO_FILE* %518)
  br label %if.end.797

if.end.797:                                       ; preds = %if.then.796, %if.else.794
  br label %if.end.798

if.end.798:                                       ; preds = %if.end.797
  br label %sw.epilog

sw.bb.799:                                        ; preds = %if.else.784
  %519 = load i8*, i8** @ppdtext, align 8
  %520 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext800 = sext i32 %520 to i64
  %add.ptr801 = getelementptr inbounds i8, i8* %519, i64 %idx.ext800
  store i8* %add.ptr801, i8** @yy_c_buf_p, align 8
  %call802 = call i32 @yy_get_previous_state()
  store i32 %call802, i32* %yy_current_state, align 4
  %521 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %521, i8** %yy_cp, align 8
  %522 = load i8*, i8** @ppdtext, align 8
  %add.ptr803 = getelementptr inbounds i8, i8* %522, i64 0
  store i8* %add.ptr803, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.804:                                        ; preds = %if.else.784
  %523 = load i32, i32* @yy_n_chars, align 4
  %idxprom805 = sext i32 %523 to i64
  %524 = load i64, i64* @yy_buffer_stack_top, align 8
  %525 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx806 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %525, i64 %524
  %526 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx806, align 8
  %yy_ch_buf807 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %526, i32 0, i32 1
  %527 = load i8*, i8** %yy_ch_buf807, align 8
  %arrayidx808 = getelementptr inbounds i8, i8* %527, i64 %idxprom805
  store i8* %arrayidx808, i8** @yy_c_buf_p, align 8
  %call809 = call i32 @yy_get_previous_state()
  store i32 %call809, i32* %yy_current_state, align 4
  %528 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %528, i8** %yy_cp, align 8
  %529 = load i8*, i8** @ppdtext, align 8
  %add.ptr810 = getelementptr inbounds i8, i8* %529, i64 0
  store i8* %add.ptr810, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.784, %if.end.798
  br label %if.end.811

if.end.811:                                       ; preds = %sw.epilog
  br label %sw.epilog.812

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog.812

sw.epilog.812:                                    ; preds = %sw.default, %if.end.811, %sw.bb.749, %if.end.748, %do.end.706, %sw.bb.679, %if.end.673, %if.end.657, %if.end.645, %if.end.633, %if.end.621, %if.end.609, %if.end.597, %if.end.585, %if.end.573, %if.end.561, %if.end.549, %if.end.536, %if.end.477, %if.end.369, %if.end.355, %if.end.343, %if.end.331, %if.end.319, %if.end.307, %if.end.295, %if.end.283, %if.end.271, %if.end.259, %if.end.247, %if.end.234, %if.end.175, %sw.bb.88, %sw.bb.87, %sw.bb.86, %sw.bb.85, %sw.bb.84
  br label %while.body

return:                                           ; preds = %if.then.721, %if.end.449, %if.end.150, %sw.bb.98, %sw.bb.95, %sw.bb.93, %sw.bb.92, %sw.bb.91, %sw.bb.90, %sw.bb.89
  %530 = load i32, i32* %retval
  ret i32 %530
}

; Function Attrs: nounwind uwtable
define internal void @ppdensure_buffer_stack() #0 {
entry:
  %num_to_alloc = alloca i32, align 4
  %grow_size = alloca i32, align 4
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %num_to_alloc, align 4
  %1 = load i32, i32* %num_to_alloc, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @ppdalloc(i32 %conv1)
  %2 = bitcast i8* %call to %struct.yy_buffer_state**
  store %struct.yy_buffer_state** %2, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %3 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %4 = bitcast %struct.yy_buffer_state** %3 to i8*
  %5 = load i32, i32* %num_to_alloc, align 4
  %conv2 = sext i32 %5 to i64
  %mul3 = mul i64 %conv2, 8
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul3, i32 8, i1 false)
  %6 = load i32, i32* %num_to_alloc, align 4
  %conv4 = sext i32 %6 to i64
  store i64 %conv4, i64* @yy_buffer_stack_max, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  br label %if.end.16

if.end:                                           ; preds = %entry
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = load i64, i64* @yy_buffer_stack_max, align 8
  %sub = sub i64 %8, 1
  %cmp = icmp uge i64 %7, %sub
  br i1 %cmp, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  store i32 8, i32* %grow_size, align 4
  %9 = load i64, i64* @yy_buffer_stack_max, align 8
  %10 = load i32, i32* %grow_size, align 4
  %conv7 = sext i32 %10 to i64
  %add = add i64 %9, %conv7
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %num_to_alloc, align 4
  %11 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %12 = bitcast %struct.yy_buffer_state** %11 to i8*
  %13 = load i32, i32* %num_to_alloc, align 4
  %conv9 = sext i32 %13 to i64
  %mul10 = mul i64 %conv9, 8
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call i8* @ppdrealloc(i8* %12, i32 %conv11)
  %14 = bitcast i8* %call12 to %struct.yy_buffer_state**
  store %struct.yy_buffer_state** %14, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %15 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %16 = load i64, i64* @yy_buffer_stack_max, align 8
  %add.ptr = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %15, i64 %16
  %17 = bitcast %struct.yy_buffer_state** %add.ptr to i8*
  %18 = load i32, i32* %grow_size, align 4
  %conv13 = sext i32 %18 to i64
  %mul14 = mul i64 %conv13, 8
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 %mul14, i32 8, i1 false)
  %19 = load i32, i32* %num_to_alloc, align 4
  %conv15 = sext i32 %19 to i64
  store i64 %conv15, i64* @yy_buffer_stack_max, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ppd_create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @ppdalloc(i32 64)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %size.addr, align 4
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 3
  store i32 %2, i32* %yy_buf_size, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 3
  %5 = load i32, i32* %yy_buf_size1, align 4
  %add = add i32 %5, 2
  %call2 = call i8* @ppdalloc(i32 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @ppd_init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define internal void @ppd_load_buffer_state() #0 {
entry:
  %0 = load i64, i64* @yy_buffer_stack_top, align 8
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %0
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 4
  %3 = load i32, i32* %yy_n_chars, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = load i64, i64* @yy_buffer_stack_top, align 8
  %5 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx1 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, i64 %4
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx1, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 2
  %7 = load i8*, i8** %yy_buf_pos, align 8
  store i8* %7, i8** @yy_c_buf_p, align 8
  store i8* %7, i8** @ppdtext, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @ppdin, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* @yy_hold_char, align 1
  ret void
}

declare i8* @xstrdup(i8*) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @xpw_find_included_file(i8**, i8*, i8*, i8*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

; Function Attrs: nounwind uwtable
define void @ppd_switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  call void @ppdensure_buffer_stack()
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @yy_buffer_stack_top, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %1
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %3, %cond.true ], [ null, %cond.false ]
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %cond, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state** %5, null
  br i1 %tobool1, label %cond.true.2, label %cond.false.5

cond.true.2:                                      ; preds = %if.end
  %6 = load i64, i64* @yy_buffer_stack_top, align 8
  %7 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx3 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %7, i64 %6
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx3, align 8
  %tobool4 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool4, label %if.then.6, label %if.end.9

cond.false.5:                                     ; preds = %if.end
  br i1 false, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %cond.false.5, %cond.true.2
  %9 = load i8, i8* @yy_hold_char, align 1
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** @yy_c_buf_p, align 8
  %12 = load i64, i64* @yy_buffer_stack_top, align 8
  %13 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx7 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %13, i64 %12
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx7, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 2
  store i8* %11, i8** %yy_buf_pos, align 8
  %15 = load i32, i32* @yy_n_chars, align 4
  %16 = load i64, i64* @yy_buffer_stack_top, align 8
  %17 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %17, i64 %16
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx8, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 4
  store i32 %15, i32* %yy_n_chars, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.false.5, %cond.true.2
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %20 = load i64, i64* @yy_buffer_stack_top, align 8
  %21 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx10 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %21, i64 %20
  store %struct.yy_buffer_state* %19, %struct.yy_buffer_state** %arrayidx10, align 8
  call void @ppd_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @ppd_delete_buffer(%struct.yy_buffer_state* %b) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state** %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i64, i64* @yy_buffer_stack_top, align 8
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %4, i64 %3
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %5, %cond.true ], [ null, %cond.false ]
  %cmp = icmp eq %struct.yy_buffer_state* %1, %cond
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %cond.end
  %6 = load i64, i64* @yy_buffer_stack_top, align 8
  %7 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx3 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %7, i64 %6
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx3, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %cond.end
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 5
  %9 = load i32, i32* %yy_is_our_buffer, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 1
  %11 = load i8*, i8** %yy_ch_buf, align 8
  call void @ppdfree(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %13 = bitcast %struct.yy_buffer_state* %12 to i8*
  call void @ppdfree(i8* %13)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @ppdtext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 0
  store i8* %add.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %yy_cp, align 8
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %yy_cp, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i8*, i8** %yy_cp, align 8
  %7 = load i8, i8* %6, align 1
  %conv1 = zext i8 %7 to i32
  %idxprom = zext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 1, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  store i8 %conv2, i8* %yy_c, align 1
  %9 = load i32, i32* %yy_current_state, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [115 x i16], [115 x i16]* @yy_accept, i32 0, i64 %idxprom3
  %10 = load i16, i16* %arrayidx4, align 2
  %tobool5 = icmp ne i16 %10, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, i32* %yy_current_state, align 4
  store i32 %11, i32* @yy_last_accepting_state, align 4
  %12 = load i8*, i8** %yy_cp, align 8
  store i8* %12, i8** @yy_last_accepting_cpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.end
  %13 = load i32, i32* %yy_current_state, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, i8* %yy_c, align 1
  %conv9 = zext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_chk, i32 0, i64 %idxprom10
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, i32* %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_def, i32 0, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, i32* %yy_current_state, align 4
  %20 = load i32, i32* %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 115
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %while.body
  %21 = load i8, i8* %yy_c, align 1
  %conv21 = zext i8 %21 to i32
  %idxprom22 = zext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [37 x i32], [37 x i32]* @yy_meta, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %conv24 = trunc i32 %22 to i8
  store i8 %conv24, i8* %yy_c, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom26
  %24 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %24 to i32
  %25 = load i8, i8* %yy_c, align 1
  %conv29 = zext i8 %25 to i32
  %add30 = add i32 %conv28, %conv29
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_nxt, i32 0, i64 %idxprom31
  %26 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %26 to i32
  store i32 %conv33, i32* %yy_current_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %27 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %yy_current_state, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 %yy_current_state) #0 {
entry:
  %yy_current_state.addr = alloca i32, align 4
  %yy_is_jam = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  store i32 %yy_current_state, i32* %yy_current_state.addr, align 4
  %0 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %0, i8** %yy_cp, align 8
  store i8 1, i8* %yy_c, align 1
  %1 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [115 x i16], [115 x i16]* @yy_accept, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %yy_current_state.addr, align 4
  store i32 %3, i32* @yy_last_accepting_state, align 4
  %4 = load i8*, i8** %yy_cp, align 8
  store i8* %4, i8** @yy_last_accepting_cpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %5 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 115
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %conv14 = zext i8 %13 to i32
  %idxprom15 = zext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [37 x i32], [37 x i32]* @yy_meta, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %14 to i8
  store i8 %conv17, i8* %yy_c, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [129 x i16], [129 x i16]* @yy_base, i32 0, i64 %idxprom19
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add i32 %conv21, %conv22
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [300 x i16], [300 x i16]* @yy_nxt, i32 0, i64 %idxprom24
  %18 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %18 to i32
  store i32 %conv26, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %cmp27 = icmp eq i32 %19, 114
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %yy_is_jam, align 4
  %20 = load i32, i32* %yy_is_jam, align 4
  %tobool29 = icmp ne i32 %20, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %21 = load i32, i32* %yy_current_state.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %21, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
entry:
  %retval = alloca i32, align 4
  %dest = alloca i8*, align 8
  %source = alloca i8*, align 8
  %number_to_move = alloca i32, align 4
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %num_to_read = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  %yy_c_buf_p_offset = alloca i32, align 4
  %new_size = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i64, align 8
  %0 = load i64, i64* @yy_buffer_stack_top, align 8
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %0
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load i8*, i8** @ppdtext, align 8
  store i8* %4, i8** %source, align 8
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load i32, i32* @yy_n_chars, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx1 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, i64 %7
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx1, align 8
  %yy_ch_buf2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 1
  %10 = load i8*, i8** %yy_ch_buf2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %cmp = icmp ugt i8* %5, %arrayidx3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx4, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 10
  %14 = load i32, i32* %yy_fill_buffer, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %15 = load i8*, i8** @yy_c_buf_p, align 8
  %16 = load i8*, i8** @ppdtext, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 0
  %cmp7 = icmp eq i64 %sub, 1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.6
  store i32 2, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %17 = load i8*, i8** @yy_c_buf_p, align 8
  %18 = load i8*, i8** @ppdtext, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %18 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv = trunc i64 %sub.ptr.sub12 to i32
  %sub13 = sub nsw i32 %conv, 1
  store i32 %sub13, i32* %number_to_move, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %number_to_move, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %source, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %source, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %dest, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr16, i8** %dest, align 8
  store i8 %22, i8* %23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* @yy_buffer_stack_top, align 8
  %26 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx17 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %26, i64 %25
  %27 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx17, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %27, i32 0, i32 11
  %28 = load i32, i32* %yy_buffer_status, align 4
  %cmp18 = icmp eq i32 %28, 2
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %for.end
  store i32 0, i32* @yy_n_chars, align 4
  %29 = load i64, i64* @yy_buffer_stack_top, align 8
  %30 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx21 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, i64 %29
  %31 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx21, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %31, i32 0, i32 4
  store i32 0, i32* %yy_n_chars, align 4
  br label %if.end.137

if.else.22:                                       ; preds = %for.end
  %32 = load i64, i64* @yy_buffer_stack_top, align 8
  %33 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx23 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %33, i64 %32
  %34 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx23, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %34, i32 0, i32 3
  %35 = load i32, i32* %yy_buf_size, align 4
  %36 = load i32, i32* %number_to_move, align 4
  %sub24 = sub i32 %35, %36
  %sub25 = sub i32 %sub24, 1
  store i32 %sub25, i32* %num_to_read, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %if.else.22
  %37 = load i32, i32* %num_to_read, align 4
  %cmp26 = icmp sle i32 %37, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %38, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %39 = load i64, i64* @yy_buffer_stack_top, align 8
  %40 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx28 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %40, i64 %39
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx28, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %41, %cond.true ], [ null, %cond.false ]
  store %struct.yy_buffer_state* %cond, %struct.yy_buffer_state** %b, align 8
  %42 = load i8*, i8** @yy_c_buf_p, align 8
  %43 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf29 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %43, i32 0, i32 1
  %44 = load i8*, i8** %yy_ch_buf29, align 8
  %sub.ptr.lhs.cast30 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %44 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i64 %sub.ptr.sub32 to i32
  store i32 %conv33, i32* %yy_c_buf_p_offset, align 4
  %45 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %45, i32 0, i32 5
  %46 = load i32, i32* %yy_is_our_buffer, align 4
  %tobool34 = icmp ne i32 %46, 0
  br i1 %tobool34, label %if.then.35, label %if.else.51

if.then.35:                                       ; preds = %cond.end
  %47 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size36 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %47, i32 0, i32 3
  %48 = load i32, i32* %yy_buf_size36, align 4
  %mul = mul i32 %48, 2
  store i32 %mul, i32* %new_size, align 4
  %49 = load i32, i32* %new_size, align 4
  %cmp37 = icmp sle i32 %49, 0
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.then.35
  %50 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size40 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %50, i32 0, i32 3
  %51 = load i32, i32* %yy_buf_size40, align 4
  %div = udiv i32 %51, 8
  %52 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size41 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %52, i32 0, i32 3
  %53 = load i32, i32* %yy_buf_size41, align 4
  %add42 = add i32 %53, %div
  store i32 %add42, i32* %yy_buf_size41, align 4
  br label %if.end.46

if.else.43:                                       ; preds = %if.then.35
  %54 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size44 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i32 0, i32 3
  %55 = load i32, i32* %yy_buf_size44, align 4
  %mul45 = mul i32 %55, 2
  store i32 %mul45, i32* %yy_buf_size44, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.39
  %56 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %56, i32 0, i32 1
  %57 = load i8*, i8** %yy_ch_buf47, align 8
  %58 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size48 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %58, i32 0, i32 3
  %59 = load i32, i32* %yy_buf_size48, align 4
  %add49 = add i32 %59, 2
  %call = call i8* @ppdrealloc(i8* %57, i32 %add49)
  %60 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %60, i32 0, i32 1
  store i8* %call, i8** %yy_ch_buf50, align 8
  br label %if.end.53

if.else.51:                                       ; preds = %cond.end
  %61 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf52 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %61, i32 0, i32 1
  store i8* null, i8** %yy_ch_buf52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.46
  %62 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf54 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %62, i32 0, i32 1
  %63 = load i8*, i8** %yy_ch_buf54, align 8
  %tobool55 = icmp ne i8* %63, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.53
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %64 = load i32, i32* %yy_c_buf_p_offset, align 4
  %idxprom58 = sext i32 %64 to i64
  %65 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf59 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %65, i32 0, i32 1
  %66 = load i8*, i8** %yy_ch_buf59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %66, i64 %idxprom58
  store i8* %arrayidx60, i8** @yy_c_buf_p, align 8
  %67 = load i64, i64* @yy_buffer_stack_top, align 8
  %68 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx61 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %68, i64 %67
  %69 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx61, align 8
  %yy_buf_size62 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %69, i32 0, i32 3
  %70 = load i32, i32* %yy_buf_size62, align 4
  %71 = load i32, i32* %number_to_move, align 4
  %sub63 = sub i32 %70, %71
  %sub64 = sub i32 %sub63, 1
  store i32 %sub64, i32* %num_to_read, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i32, i32* %num_to_read, align 4
  %cmp65 = icmp sgt i32 %72, 8192
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %while.end
  store i32 8192, i32* %num_to_read, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %while.end
  %73 = load i64, i64* @yy_buffer_stack_top, align 8
  %74 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx69 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %74, i64 %73
  %75 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx69, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %75, i32 0, i32 6
  %76 = load i32, i32* %yy_is_interactive, align 4
  %tobool70 = icmp ne i32 %76, 0
  br i1 %tobool70, label %if.then.71, label %if.else.110

if.then.71:                                       ; preds = %if.end.68
  store i32 42, i32* %c, align 4
  store i64 0, i64* %n, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.88, %if.then.71
  %77 = load i64, i64* %n, align 8
  %78 = load i32, i32* %num_to_read, align 4
  %conv73 = sext i32 %78 to i64
  %cmp74 = icmp ult i64 %77, %conv73
  br i1 %cmp74, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.72
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call76 = call i32 @_IO_getc(%struct._IO_FILE* %79)
  store i32 %call76, i32* %c, align 4
  %cmp77 = icmp ne i32 %call76, -1
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %80 = load i32, i32* %c, align 4
  %cmp79 = icmp ne i32 %80, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.72
  %81 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.72 ], [ %cmp79, %land.rhs ]
  br i1 %81, label %for.body.81, label %for.end.90

for.body.81:                                      ; preds = %land.end
  %82 = load i32, i32* %c, align 4
  %conv82 = trunc i32 %82 to i8
  %83 = load i64, i64* %n, align 8
  %84 = load i32, i32* %number_to_move, align 4
  %idxprom83 = sext i32 %84 to i64
  %85 = load i64, i64* @yy_buffer_stack_top, align 8
  %86 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx84 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %86, i64 %85
  %87 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx84, align 8
  %yy_ch_buf85 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %87, i32 0, i32 1
  %88 = load i8*, i8** %yy_ch_buf85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %88, i64 %idxprom83
  %arrayidx87 = getelementptr inbounds i8, i8* %arrayidx86, i64 %83
  store i8 %conv82, i8* %arrayidx87, align 1
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.81
  %89 = load i64, i64* %n, align 8
  %inc89 = add i64 %89, 1
  store i64 %inc89, i64* %n, align 8
  br label %for.cond.72

for.end.90:                                       ; preds = %land.end
  %90 = load i32, i32* %c, align 4
  %cmp91 = icmp eq i32 %90, 10
  br i1 %cmp91, label %if.then.93, label %if.end.101

if.then.93:                                       ; preds = %for.end.90
  %91 = load i32, i32* %c, align 4
  %conv94 = trunc i32 %91 to i8
  %92 = load i64, i64* %n, align 8
  %inc95 = add i64 %92, 1
  store i64 %inc95, i64* %n, align 8
  %93 = load i32, i32* %number_to_move, align 4
  %idxprom96 = sext i32 %93 to i64
  %94 = load i64, i64* @yy_buffer_stack_top, align 8
  %95 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx97 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %95, i64 %94
  %96 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx97, align 8
  %yy_ch_buf98 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %96, i32 0, i32 1
  %97 = load i8*, i8** %yy_ch_buf98, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %97, i64 %idxprom96
  %arrayidx100 = getelementptr inbounds i8, i8* %arrayidx99, i64 %92
  store i8 %conv94, i8* %arrayidx100, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.93, %for.end.90
  %98 = load i32, i32* %c, align 4
  %cmp102 = icmp eq i32 %98, -1
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %if.end.101
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call105 = call i32 @ferror(%struct._IO_FILE* %99) #2
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.104, %if.end.101
  %100 = load i64, i64* %n, align 8
  %conv109 = trunc i64 %100 to i32
  store i32 %conv109, i32* @yy_n_chars, align 4
  br label %if.end.134

if.else.110:                                      ; preds = %if.end.68
  %call111 = call i32* @__errno_location() #7
  store i32 0, i32* %call111, align 4
  br label %while.cond.112

while.cond.112:                                   ; preds = %if.end.131, %if.else.110
  %101 = load i32, i32* %number_to_move, align 4
  %idxprom113 = sext i32 %101 to i64
  %102 = load i64, i64* @yy_buffer_stack_top, align 8
  %103 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx114 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %103, i64 %102
  %104 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx114, align 8
  %yy_ch_buf115 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %104, i32 0, i32 1
  %105 = load i8*, i8** %yy_ch_buf115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %105, i64 %idxprom113
  %106 = load i32, i32* %num_to_read, align 4
  %conv117 = sext i32 %106 to i64
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call118 = call i64 @fread(i8* %arrayidx116, i64 1, i64 %conv117, %struct._IO_FILE* %107)
  %conv119 = trunc i64 %call118 to i32
  store i32 %conv119, i32* @yy_n_chars, align 4
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %while.cond.112
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call123 = call i32 @ferror(%struct._IO_FILE* %108) #2
  %tobool124 = icmp ne i32 %call123, 0
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.122, %while.cond.112
  %109 = phi i1 [ false, %while.cond.112 ], [ %tobool124, %land.rhs.122 ]
  br i1 %109, label %while.body.126, label %while.end.133

while.body.126:                                   ; preds = %land.end.125
  %call127 = call i32* @__errno_location() #7
  %110 = load i32, i32* %call127, align 4
  %cmp128 = icmp ne i32 %110, 4
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %while.body.126
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %while.end.133

if.end.131:                                       ; preds = %while.body.126
  %call132 = call i32* @__errno_location() #7
  store i32 0, i32* %call132, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  call void @clearerr(%struct._IO_FILE* %111) #2
  br label %while.cond.112

while.end.133:                                    ; preds = %if.then.130, %land.end.125
  br label %if.end.134

if.end.134:                                       ; preds = %while.end.133, %if.end.108
  %112 = load i32, i32* @yy_n_chars, align 4
  %113 = load i64, i64* @yy_buffer_stack_top, align 8
  %114 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx135 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %114, i64 %113
  %115 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx135, align 8
  %yy_n_chars136 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %115, i32 0, i32 4
  store i32 %112, i32* %yy_n_chars136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.134, %if.then.20
  %116 = load i32, i32* @yy_n_chars, align 4
  %cmp138 = icmp eq i32 %116, 0
  br i1 %cmp138, label %if.then.140, label %if.else.148

if.then.140:                                      ; preds = %if.end.137
  %117 = load i32, i32* %number_to_move, align 4
  %cmp141 = icmp eq i32 %117, 0
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.then.140
  store i32 1, i32* %ret_val, align 4
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  call void @ppdrestart(%struct._IO_FILE* %118)
  br label %if.end.147

if.else.144:                                      ; preds = %if.then.140
  store i32 2, i32* %ret_val, align 4
  %119 = load i64, i64* @yy_buffer_stack_top, align 8
  %120 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx145 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %120, i64 %119
  %121 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx145, align 8
  %yy_buffer_status146 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %121, i32 0, i32 11
  store i32 2, i32* %yy_buffer_status146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.143
  br label %if.end.149

if.else.148:                                      ; preds = %if.end.137
  store i32 0, i32* %ret_val, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.148, %if.end.147
  %122 = load i32, i32* %number_to_move, align 4
  %123 = load i32, i32* @yy_n_chars, align 4
  %add150 = add nsw i32 %123, %122
  store i32 %add150, i32* @yy_n_chars, align 4
  %124 = load i32, i32* @yy_n_chars, align 4
  %idxprom151 = sext i32 %124 to i64
  %125 = load i64, i64* @yy_buffer_stack_top, align 8
  %126 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx152 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %126, i64 %125
  %127 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx152, align 8
  %yy_ch_buf153 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %127, i32 0, i32 1
  %128 = load i8*, i8** %yy_ch_buf153, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %128, i64 %idxprom151
  store i8 0, i8* %arrayidx154, align 1
  %129 = load i32, i32* @yy_n_chars, align 4
  %add155 = add nsw i32 %129, 1
  %idxprom156 = sext i32 %add155 to i64
  %130 = load i64, i64* @yy_buffer_stack_top, align 8
  %131 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx157 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %131, i64 %130
  %132 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx157, align 8
  %yy_ch_buf158 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %132, i32 0, i32 1
  %133 = load i8*, i8** %yy_ch_buf158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %133, i64 %idxprom156
  store i8 0, i8* %arrayidx159, align 1
  %134 = load i64, i64* @yy_buffer_stack_top, align 8
  %135 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx160 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %135, i64 %134
  %136 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx160, align 8
  %yy_ch_buf161 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %136, i32 0, i32 1
  %137 = load i8*, i8** %yy_ch_buf161, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %137, i64 0
  store i8* %arrayidx162, i8** @ppdtext, align 8
  %138 = load i32, i32* %ret_val, align 4
  store i32 %138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.else, %if.then.8
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define i32 @ppdwrap() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @ppdrestart(%struct._IO_FILE* %input_file) #0 {
entry:
  %input_file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %input_file, %struct._IO_FILE** %input_file.addr, align 8
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @yy_buffer_stack_top, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %1
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state* %3, null
  br i1 %tobool1, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  call void @ppdensure_buffer_stack()
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call = call %struct.yy_buffer_state* @ppd_create_buffer(%struct._IO_FILE* %4, i32 16384)
  %5 = load i64, i64* @yy_buffer_stack_top, align 8
  %6 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, i64 %5
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %7 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool3 = icmp ne %struct.yy_buffer_state** %7, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %if.end
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx5 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx5, align 8
  br label %cond.end

cond.false.6:                                     ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.4
  %cond = phi %struct.yy_buffer_state* [ %10, %cond.true.4 ], [ null, %cond.false.6 ]
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file.addr, align 8
  call void @ppd_init_buffer(%struct.yy_buffer_state* %cond, %struct._IO_FILE* %11)
  call void @ppd_load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ppd_init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %oerrno = alloca i32, align 4
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %call = call i32* @__errno_location() #7
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %oerrno, align 4
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  call void @ppd_flush_buffer(%struct.yy_buffer_state* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %yy_input_file, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 10
  store i32 1, i32* %yy_fill_buffer, align 4
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %6 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, i64 %7
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %9, %cond.true ], [ null, %cond.false ]
  %cmp = icmp ne %struct.yy_buffer_state* %5, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_bs_lineno = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 8
  store i32 1, i32* %yy_bs_lineno, align 4
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_bs_column = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %11, i32 0, i32 9
  store i32 0, i32* %yy_bs_column, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %12, null
  br i1 %tobool1, label %cond.true.2, label %cond.false.6

cond.true.2:                                      ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 @fileno(%struct._IO_FILE* %13) #2
  %call4 = call i32 @isatty(i32 %call3) #2
  %cmp5 = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  br label %cond.end.7

cond.false.6:                                     ; preds = %if.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.2
  %cond8 = phi i32 [ %conv, %cond.true.2 ], [ 0, %cond.false.6 ]
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 6
  store i32 %cond8, i32* %yy_is_interactive, align 4
  %15 = load i32, i32* %oerrno, align 4
  %call9 = call i32* @__errno_location() #7
  store i32 %15, i32* %call9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ppdalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @ppdfree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppd_flush_buffer(%struct.yy_buffer_state* %b) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 4
  store i32 0, i32* %yy_n_chars, align 4
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 1
  %5 = load i8*, i8** %yy_ch_buf1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  %7 = load i8*, i8** %yy_ch_buf3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 2
  store i8* %arrayidx4, i8** %yy_buf_pos, align 8
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 7
  store i32 1, i32* %yy_at_bol, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 11
  store i32 0, i32* %yy_buffer_status, align 4
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool5 = icmp ne %struct.yy_buffer_state** %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load i64, i64* @yy_buffer_stack_top, align 8
  %14 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx6 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %14, i64 %13
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx6, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %15, %cond.true ], [ null, %cond.false ]
  %cmp = icmp eq %struct.yy_buffer_state* %11, %cond
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  call void @ppd_load_buffer_state()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppdpush_buffer_state(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @ppdensure_buffer_stack()
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i64, i64* @yy_buffer_stack_top, align 8
  %3 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, i64 %2
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

cond.false:                                       ; preds = %if.end
  br i1 false, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %cond.false, %cond.true
  %5 = load i8, i8* @yy_hold_char, align 1
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** @yy_c_buf_p, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx3 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx3, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 2
  store i8* %7, i8** %yy_buf_pos, align 8
  %11 = load i32, i32* @yy_n_chars, align 4
  %12 = load i64, i64* @yy_buffer_stack_top, align 8
  %13 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %13, i64 %12
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx4, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 4
  store i32 %11, i32* %yy_n_chars, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %cond.false, %cond.true
  %15 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool6 = icmp ne %struct.yy_buffer_state** %15, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %if.end.5
  %16 = load i64, i64* @yy_buffer_stack_top, align 8
  %17 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %17, i64 %16
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx8, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %18, null
  br i1 %tobool9, label %if.then.11, label %if.end.12

cond.false.10:                                    ; preds = %if.end.5
  br i1 false, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.false.10, %cond.true.7
  %19 = load i64, i64* @yy_buffer_stack_top, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* @yy_buffer_stack_top, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %cond.false.10, %cond.true.7
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %21 = load i64, i64* @yy_buffer_stack_top, align 8
  %22 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx13 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %22, i64 %21
  store %struct.yy_buffer_state* %20, %struct.yy_buffer_state** %arrayidx13, align 8
  call void @ppd_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppdpop_buffer_state() #0 {
entry:
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @yy_buffer_stack_top, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %1
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state* %3, null
  br i1 %tobool1, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  br label %if.end.15

if.end:                                           ; preds = %cond.false, %cond.true
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool2 = icmp ne %struct.yy_buffer_state** %4, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %if.end
  %5 = load i64, i64* @yy_buffer_stack_top, align 8
  %6 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, i64 %5
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx4, align 8
  br label %cond.end

cond.false.5:                                     ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.3
  %cond = phi %struct.yy_buffer_state* [ %7, %cond.true.3 ], [ null, %cond.false.5 ]
  call void @ppd_delete_buffer(%struct.yy_buffer_state* %cond)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx6 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx6, align 8
  %10 = load i64, i64* @yy_buffer_stack_top, align 8
  %cmp = icmp ugt i64 %10, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* @yy_buffer_stack_top, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %cond.end
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state** %12, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %if.end.8
  %13 = load i64, i64* @yy_buffer_stack_top, align 8
  %14 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx11 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %14, i64 %13
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx11, align 8
  %tobool12 = icmp ne %struct.yy_buffer_state* %15, null
  br i1 %tobool12, label %if.then.14, label %if.end.15

cond.false.13:                                    ; preds = %if.end.8
  br i1 false, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.false.13, %cond.true.10
  call void @ppd_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %cond.false.13, %cond.true.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ppd_scan_buffer(i8* %base, i32 %size) #0 {
entry:
  %retval = alloca %struct.yy_buffer_state*, align 8
  %base.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %sub = sub i32 %1, 2
  %idxprom = zext i32 %sub to i64
  %2 = load i8*, i8** %base.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %size.addr, align 4
  %sub4 = sub i32 %4, 1
  %idxprom5 = zext i32 %sub4 to i64
  %5 = load i8*, i8** %base.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call = call i8* @ppdalloc(i32 64)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %9 = load i32, i32* %size.addr, align 4
  %sub12 = sub i32 %9, 2
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 3
  store i32 %sub12, i32* %yy_buf_size, align 4
  %11 = load i8*, i8** %base.addr, align 8
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 1
  store i8* %11, i8** %yy_ch_buf, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 2
  store i8* %11, i8** %yy_buf_pos, align 8
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 5
  store i32 0, i32* %yy_is_our_buffer, align 4
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %15, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %yy_input_file, align 8
  %16 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %16, i32 0, i32 3
  %17 = load i32, i32* %yy_buf_size13, align 4
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 4
  store i32 %17, i32* %yy_n_chars, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 6
  store i32 0, i32* %yy_is_interactive, align 4
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %20, i32 0, i32 7
  store i32 1, i32* %yy_at_bol, align 4
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_fill_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 10
  store i32 0, i32* %yy_fill_buffer, align 4
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 11
  store i32 0, i32* %yy_buffer_status, align 4
  %23 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  call void @ppd_switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ppd_scan_string(i8* %yystr) #0 {
entry:
  %yystr.addr = alloca i8*, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %conv = trunc i64 %call to i32
  %call1 = call %struct.yy_buffer_state* @ppd_scan_bytes(i8* %0, i32 %conv)
  ret %struct.yy_buffer_state* %call1
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ppd_scan_bytes(i8* %yybytes, i32 %_yybytes_len) #0 {
entry:
  %yybytes.addr = alloca i8*, align 8
  %_yybytes_len.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  %buf = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %yybytes, i8** %yybytes.addr, align 8
  store i32 %_yybytes_len, i32* %_yybytes_len.addr, align 4
  %0 = load i32, i32* %_yybytes_len.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %call = call i8* @ppdalloc(i32 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %_yybytes_len.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %yybytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8*, i8** %buf, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  store i8 %7, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %_yybytes_len.addr, align 4
  %add3 = add nsw i32 %11, 1
  %idxprom4 = sext i32 %add3 to i64
  %12 = load i8*, i8** %buf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  %13 = load i32, i32* %_yybytes_len.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8*, i8** %buf, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  %15 = load i8*, i8** %buf, align 8
  %16 = load i32, i32* %n, align 4
  %call8 = call %struct.yy_buffer_state* @ppd_scan_buffer(i8* %15, i32 %16)
  store %struct.yy_buffer_state* %call8, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @ppdget_lineno() #0 {
entry:
  %0 = load i32, i32* @ppdlineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @ppdget_in() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @ppdget_out() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdout, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define i32 @ppdget_leng() #0 {
entry:
  %0 = load i32, i32* @ppdleng, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i8* @ppdget_text() #0 {
entry:
  %0 = load i8*, i8** @ppdtext, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @ppdset_lineno(i32 %line_number) #0 {
entry:
  %line_number.addr = alloca i32, align 4
  store i32 %line_number, i32* %line_number.addr, align 4
  %0 = load i32, i32* %line_number.addr, align 4
  store i32 %0, i32* @ppdlineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppdset_in(%struct._IO_FILE* %in_str) #0 {
entry:
  %in_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_str, %struct._IO_FILE** %in_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @ppdin, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppdset_out(%struct._IO_FILE* %out_str) #0 {
entry:
  %out_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out_str, %struct._IO_FILE** %out_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @ppdout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ppdget_debug() #0 {
entry:
  %0 = load i32, i32* @ppd_flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @ppdset_debug(i32 %bdebug) #0 {
entry:
  %bdebug.addr = alloca i32, align 4
  store i32 %bdebug, i32* %bdebug.addr, align 4
  %0 = load i32, i32* %bdebug.addr, align 4
  store i32 %0, i32* @ppd_flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ppdlex_destroy() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cond.end.6, %entry
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %1 = load i64, i64* @yy_buffer_stack_top, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %1
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %3, %cond.true ], [ null, %cond.false ]
  %tobool1 = icmp ne %struct.yy_buffer_state* %cond, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool2 = icmp ne %struct.yy_buffer_state** %4, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %while.body
  %5 = load i64, i64* @yy_buffer_stack_top, align 8
  %6 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, i64 %5
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx4, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %while.body
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi %struct.yy_buffer_state* [ %7, %cond.true.3 ], [ null, %cond.false.5 ]
  call void @ppd_delete_buffer(%struct.yy_buffer_state* %cond7)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx8, align 8
  call void @ppdpop_buffer_state()
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %11 = bitcast %struct.yy_buffer_state** %10 to i8*
  call void @ppdfree(i8* %11)
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %call = call i32 @yy_init_globals()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_init_globals() #0 {
entry:
  store i32 1, i32* @ppdlineno, align 4
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  store i64 0, i64* @yy_buffer_stack_max, align 8
  store i8* null, i8** @yy_c_buf_p, align 8
  store i32 0, i32* @yy_init, align 4
  store i32 0, i32* @yy_start, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @ppdin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @ppdout, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @ppdrealloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @ppdlex_initialize() #0 {
entry:
  %0 = load i32, i32* @ppdlex_initialize.first_time, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @ppdlex_initialize.first_time, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* @string_stack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @include_stack_ptr, align 4
  ret void
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare i8* @xmalloc(i64) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
