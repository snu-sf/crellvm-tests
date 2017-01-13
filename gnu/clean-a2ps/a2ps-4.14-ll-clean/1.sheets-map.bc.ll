; ModuleID = './src/sheets-map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }

@smapin = global %struct._IO_FILE* null, align 8
@smapout = global %struct._IO_FILE* null, align 8
@smaplineno = global i32 1, align 4
@smap_flex_debug = global i32 0, align 4
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 5, i32 6, i32 1, i32 1, i32 1, i32 7, i32 1, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 11, i32 1, i32 12, i32 1, i32 13, i32 1, i32 1, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 1, i32 14, i32 1, i32 1, i32 7, i32 1, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 7, i32 7, i32 21, i32 7, i32 7, i32 22, i32 7, i32 23, i32 7, i32 7, i32 7, i32 24, i32 7, i32 25, i32 26, i32 27, i32 7, i32 28, i32 7, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [74 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 39, i16 7, i16 4, i16 4, i16 5, i16 7, i16 2, i16 3, i16 7, i16 22, i16 21, i16 8, i16 38, i16 37, i16 36, i16 23, i16 38, i16 4, i16 5, i16 0, i16 1, i16 0, i16 22, i16 8, i16 20, i16 9, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 37, i16 23, i16 35, i16 24, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 0, i16 9, i16 10, i16 24, i16 25, i16 0, i16 9, i16 10, i16 24, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 6, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [85 x i16] [i16 0, i16 0, i16 0, i16 26, i16 27, i16 29, i16 33, i16 154, i16 174, i16 35, i16 42, i16 0, i16 140, i16 174, i16 174, i16 28, i16 0, i16 174, i16 122, i16 51, i16 0, i16 174, i16 103, i16 79, i16 46, i16 0, i16 112, i16 174, i16 97, i16 0, i16 174, i16 174, i16 110, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 0, i16 0, i16 174, i16 174, i16 108, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 174, i16 0, i16 98, i16 106, i16 0, i16 103, i16 0, i16 99, i16 174, i16 174, i16 174, i16 174, i16 100, i16 102, i16 111, i16 0, i16 76, i16 174, i16 174, i16 125, i16 133, i16 141, i16 146, i16 152, i16 159, i16 48, i16 44, i16 27, i16 25, i16 165], align 16
@yy_chk = internal constant [203 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3, i16 4, i16 83, i16 5, i16 82, i16 3, i16 4, i16 6, i16 9, i16 9, i16 15, i16 3, i16 4, i16 5, i16 5, i16 10, i16 10, i16 6, i16 6, i16 24, i16 24, i16 81, i16 15, i16 19, i16 19, i16 80, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 19, i16 23, i16 23, i16 71, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 28, i16 57, i16 62, i16 67, i16 60, i16 68, i16 28, i16 58, i16 69, i16 46, i16 67, i16 32, i16 57, i16 68, i16 69, i16 26, i16 22, i16 62, i16 74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 74, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 76, i16 18, i16 76, i16 76, i16 76, i16 76, i16 76, i16 76, i16 77, i16 12, i16 77, i16 78, i16 7, i16 78, i16 78, i16 0, i16 78, i16 78, i16 79, i16 0, i16 79, i16 79, i16 79, i16 79, i16 84, i16 84, i16 0, i16 84, i16 84, i16 84, i16 84, i16 84, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73], align 16
@yy_def = internal constant [85 x i16] [i16 0, i16 73, i16 1, i16 74, i16 74, i16 75, i16 75, i16 73, i16 73, i16 73, i16 73, i16 76, i16 77, i16 73, i16 73, i16 77, i16 78, i16 73, i16 73, i16 73, i16 79, i16 73, i16 73, i16 73, i16 73, i16 76, i16 77, i16 73, i16 77, i16 78, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 80, i16 79, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 81, i16 77, i16 73, i16 82, i16 73, i16 83, i16 77, i16 73, i16 73, i16 73, i16 73, i16 77, i16 77, i16 77, i16 84, i16 84, i16 73, i16 0, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73], align 16
@yy_meta = internal constant [29 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 1, i32 3, i32 4, i32 5, i32 6, i32 6, i32 4, i32 1, i32 7, i32 8, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@yy_nxt = internal constant [203 x i16] [i16 0, i16 8, i16 9, i16 10, i16 11, i16 8, i16 8, i16 12, i16 13, i16 12, i16 12, i16 8, i16 14, i16 8, i16 8, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 15, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 17, i16 17, i16 66, i16 21, i16 64, i16 18, i16 18, i16 21, i16 24, i16 24, i16 27, i16 19, i16 19, i16 22, i16 23, i16 24, i16 24, i16 22, i16 23, i16 24, i16 24, i16 61, i16 28, i16 31, i16 31, i16 59, i16 31, i16 31, i16 31, i16 31, i16 31, i16 32, i16 31, i16 31, i16 31, i16 31, i16 31, i16 33, i16 34, i16 31, i16 35, i16 36, i16 37, i16 31, i16 31, i16 38, i16 39, i16 40, i16 31, i16 41, i16 42, i16 45, i16 45, i16 72, i16 45, i16 45, i16 45, i16 45, i16 45, i16 46, i16 45, i16 45, i16 45, i16 45, i16 45, i16 47, i16 48, i16 45, i16 49, i16 50, i16 51, i16 45, i16 45, i16 52, i16 53, i16 54, i16 45, i16 55, i16 56, i16 27, i16 27, i16 27, i16 27, i16 65, i16 27, i16 57, i16 63, i16 70, i16 60, i16 68, i16 58, i16 62, i16 69, i16 27, i16 27, i16 44, i16 67, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 25, i16 30, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 26, i16 27, i16 26, i16 29, i16 73, i16 29, i16 29, i16 73, i16 29, i16 29, i16 43, i16 73, i16 43, i16 43, i16 43, i16 43, i16 71, i16 71, i16 73, i16 71, i16 71, i16 71, i16 71, i16 71, i16 7, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73, i16 73], align 16
@smaptext = common global i8* null, align 8
@smapleng = common global i32 0, align 4
@yy_rule_can_match_eol = internal constant [39 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], align 16
@token_val = internal global i8* null, align 8
@yyfilename = internal global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unexpected character `%c'\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"End of file `%s'.\0A\00", align 1
@include_stack_ptr = internal global i32 0, align 4
@string_stack = internal global %struct.obstack zeroinitializer, align 8
@insensitive_p = internal global i8 0, align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"end of line inside a %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<..>\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in smap_create_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in smap_scan_buffer()\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"out of dynamic memory in smap_scan_bytes()\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"bad buffer in smap_scan_bytes()\00", align 1
@sheets_map_load.first_time = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"no key defined for `%s'\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"too many includes\00", align 1
@include_stack = internal global [10 x %struct.yy_buffer_state*] zeroinitializer, align 16
@lineno_stack = internal global [10 x i32] zeroinitializer, align 16
@filename_stack = internal global [10 x i8*] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"%s:%d: includes %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Back to file `%s'.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @smaplex() #0 {
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
  %__o151 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %__o176 = alloca %struct.obstack*, align 8
  %__o188 = alloca %struct.obstack*, align 8
  %__o200 = alloca %struct.obstack*, align 8
  %__o212 = alloca %struct.obstack*, align 8
  %__o224 = alloca %struct.obstack*, align 8
  %__o236 = alloca %struct.obstack*, align 8
  %__o248 = alloca %struct.obstack*, align 8
  %__o260 = alloca %struct.obstack*, align 8
  %__o272 = alloca %struct.obstack*, align 8
  %__o284 = alloca %struct.obstack*, align 8
  %__o299 = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %string315 = alloca i8*, align 8
  %__o317 = alloca %struct.obstack*, align 8
  %__o1328 = alloca %struct.obstack*, align 8
  %value330 = alloca i8*, align 8
  %tmp371 = alloca i8*, align 8
  %__o373 = alloca %struct.obstack*, align 8
  %__obj375 = alloca i8*, align 8
  %__o400 = alloca %struct.obstack*, align 8
  %__o412 = alloca %struct.obstack*, align 8
  %__o424 = alloca %struct.obstack*, align 8
  %__o436 = alloca %struct.obstack*, align 8
  %__o448 = alloca %struct.obstack*, align 8
  %__o460 = alloca %struct.obstack*, align 8
  %__o472 = alloca %struct.obstack*, align 8
  %__o484 = alloca %struct.obstack*, align 8
  %__o496 = alloca %struct.obstack*, align 8
  %__o508 = alloca %struct.obstack*, align 8
  %__o523 = alloca %struct.obstack*, align 8
  %__len525 = alloca i32, align 4
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
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @smapin, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @smapout, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @smapout, align 8
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
  call void @smapensure_buffer_stack()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call = call %struct.yy_buffer_state* @smap_create_buffer(%struct._IO_FILE* %10, i32 16384)
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx12 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.false, %cond.true
  call void @smap_load_buffer_state()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.14, %sw.epilog.602
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

yy_match:                                         ; preds = %sw.bb.589, %if.then.571, %while.body
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
  %arrayidx18 = getelementptr inbounds [74 x i16], [74 x i16]* @yy_accept, i32 0, i64 %idxprom17
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
  %arrayidx24 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom23
  %26 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %26 to i32
  %27 = load i8, i8* %yy_c, align 1
  %conv26 = zext i8 %27 to i32
  %add = add nsw i32 %conv25, %conv26
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_chk, i32 0, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  %29 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv29, %29
  br i1 %cmp, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.22
  %30 = load i32, i32* %yy_current_state, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_def, i32 0, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  store i32 %conv34, i32* %yy_current_state, align 4
  %32 = load i32, i32* %yy_current_state, align 4
  %cmp35 = icmp sge i32 %32, 74
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %while.body.31
  %33 = load i8, i8* %yy_c, align 1
  %conv38 = zext i8 %33 to i32
  %idxprom39 = zext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds [29 x i32], [29 x i32]* @yy_meta, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %conv41 = trunc i32 %34 to i8
  store i8 %conv41, i8* %yy_c, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %while.body.31
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  %35 = load i32, i32* %yy_current_state, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom43
  %36 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %36 to i32
  %37 = load i8, i8* %yy_c, align 1
  %conv46 = zext i8 %37 to i32
  %add47 = add i32 %conv45, %conv46
  %idxprom48 = zext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_nxt, i32 0, i64 %idxprom48
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
  %arrayidx52 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom51
  %41 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %41 to i32
  %cmp54 = icmp ne i32 %conv53, 174
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.594, %if.else.573, %sw.bb, %do.end
  %42 = load i32, i32* %yy_current_state, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [74 x i16], [74 x i16]* @yy_accept, i32 0, i64 %idxprom56
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
  %arrayidx63 = getelementptr inbounds [74 x i16], [74 x i16]* @yy_accept, i32 0, i64 %idxprom62
  %48 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %48 to i32
  store i32 %conv64, i32* %yy_act, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %yy_find_action
  %49 = load i8*, i8** %yy_bp, align 8
  store i8* %49, i8** @smaptext, align 8
  %50 = load i8*, i8** %yy_cp, align 8
  %51 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv66 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv66, i32* @smapleng, align 4
  %52 = load i8*, i8** %yy_cp, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* @yy_hold_char, align 1
  %54 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %yy_cp, align 8
  store i8* %55, i8** @yy_c_buf_p, align 8
  %56 = load i32, i32* %yy_act, align 4
  %cmp67 = icmp ne i32 %56, 39
  br i1 %cmp67, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end.65
  %57 = load i32, i32* %yy_act, align 4
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [39 x i32], [39 x i32]* @yy_rule_can_match_eol, i32 0, i64 %idxprom69
  %58 = load i32, i32* %arrayidx70, align 4
  %tobool71 = icmp ne i32 %58, 0
  br i1 %tobool71, label %if.then.72, label %if.end.83

if.then.72:                                       ; preds = %land.lhs.true
  store i32 0, i32* %yyl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %59 = load i32, i32* %yyl, align 4
  %60 = load i32, i32* @smapleng, align 4
  %cmp73 = icmp slt i32 %59, %60
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %yyl, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i8*, i8** @smaptext, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %62, i64 %idxprom75
  %63 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %63 to i32
  %cmp78 = icmp eq i32 %conv77, 10
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body
  %64 = load i32, i32* @smaplineno, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* @smaplineno, align 4
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

do_action:                                        ; preds = %if.then.579, %if.end.83
  %66 = load i32, i32* %yy_act, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.84
    i32 2, label %sw.bb.87
    i32 3, label %sw.bb.88
    i32 4, label %sw.bb.89
    i32 5, label %sw.bb.90
    i32 6, label %sw.bb.91
    i32 7, label %sw.bb.95
    i32 40, label %sw.bb.98
    i32 41, label %sw.bb.98
    i32 42, label %sw.bb.98
    i32 8, label %sw.bb.110
    i32 9, label %sw.bb.170
    i32 10, label %sw.bb.172
    i32 11, label %sw.bb.174
    i32 12, label %sw.bb.186
    i32 13, label %sw.bb.198
    i32 14, label %sw.bb.210
    i32 15, label %sw.bb.222
    i32 16, label %sw.bb.234
    i32 17, label %sw.bb.246
    i32 18, label %sw.bb.258
    i32 19, label %sw.bb.270
    i32 20, label %sw.bb.282
    i32 21, label %sw.bb.295
    i32 22, label %sw.bb.297
    i32 23, label %sw.bb.313
    i32 24, label %sw.bb.394
    i32 25, label %sw.bb.396
    i32 26, label %sw.bb.398
    i32 27, label %sw.bb.410
    i32 28, label %sw.bb.422
    i32 29, label %sw.bb.434
    i32 30, label %sw.bb.446
    i32 31, label %sw.bb.458
    i32 32, label %sw.bb.470
    i32 33, label %sw.bb.482
    i32 34, label %sw.bb.494
    i32 35, label %sw.bb.506
    i32 36, label %sw.bb.519
    i32 37, label %sw.bb.521
    i32 38, label %sw.bb.539
    i32 39, label %sw.bb.542
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
  %71 = load i8*, i8** @smaptext, align 8
  %72 = load i32, i32* @smapleng, align 4
  %sub = sub nsw i32 %72, 1
  %conv85 = sext i32 %sub to i64
  %call86 = call i8* @xstrndup(i8* %71, i64 %conv85)
  store i8* %call86, i8** @token_val, align 8
  store i32 10, i32* %retval
  br label %return

sw.bb.87:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  br label %sw.epilog.602

sw.bb.88:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  br label %sw.epilog.602

sw.bb.89:                                         ; preds = %do_action
  br label %sw.epilog.602

sw.bb.90:                                         ; preds = %do_action
  br label %sw.epilog.602

sw.bb.91:                                         ; preds = %do_action
  %73 = load i32, i32* @smapleng, align 4
  %sub92 = sub nsw i32 %73, 1
  %idxprom93 = sext i32 %sub92 to i64
  %74 = load i8*, i8** @smaptext, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %74, i64 %idxprom93
  store i8 0, i8* %arrayidx94, align 1
  %75 = load i8*, i8** @smaptext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 8
  call void @yy_include_push(i8* %add.ptr)
  br label %sw.epilog.602

sw.bb.95:                                         ; preds = %do_action
  %76 = load i8*, i8** @yyfilename, align 8
  %77 = load i32, i32* @smaplineno, align 4
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #4
  %78 = load i8*, i8** @smaptext, align 8
  %79 = load i8, i8* %78, align 1
  %conv97 = sext i8 %79 to i32
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %76, i32 %77, i8* %call96, i32 %conv97)
  br label %sw.epilog.602

sw.bb.98:                                         ; preds = %do_action, %do_action, %do_action
  br label %do.body.99

do.body.99:                                       ; preds = %sw.bb.98
  %80 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %80
  %tobool100 = icmp ne i32 %and, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %do.body.99
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** @yyfilename, align 8
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %82)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %do.body.99
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.103
  %83 = load i32, i32* @include_stack_ptr, align 4
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* @include_stack_ptr, align 4
  %cmp106 = icmp slt i32 %dec, 0
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %do.end.105
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end.105
  call void @yy_include_pop()
  br label %if.end.109

if.end.109:                                       ; preds = %if.else
  br label %sw.epilog.602

sw.bb.110:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o, align 8
  %84 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3
  %85 = load i8*, i8** %next_free, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 4
  %87 = load i8*, i8** %chunk_limit, align 8
  %cmp112 = icmp ugt i8* %add.ptr111, %87
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %sw.bb.110
  %88 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %88, i32 1)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %sw.bb.110
  %89 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free116 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 3
  %90 = load i8*, i8** %next_free116, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr117, i8** %next_free116, align 8
  store i8 0, i8* %90, align 1
  store %struct.obstack* @string_stack, %struct.obstack** %__o1, align 8
  %91 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %91, i32 0, i32 2
  %92 = load i8*, i8** %object_base, align 8
  store i8* %92, i8** %value, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free118 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 3
  %94 = load i8*, i8** %next_free118, align 8
  %95 = load i8*, i8** %value, align 8
  %cmp119 = icmp eq i8* %94, %95
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.115
  %96 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.115
  %97 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free123 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 3
  %98 = load i8*, i8** %next_free123, align 8
  %sub.ptr.lhs.cast124 = ptrtoint i8* %98 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast124, 0
  %99 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 6
  %100 = load i32, i32* %alignment_mask, align 4
  %conv126 = sext i32 %100 to i64
  %add127 = add nsw i64 %sub.ptr.sub125, %conv126
  %101 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask128 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 6
  %102 = load i32, i32* %alignment_mask128, align 4
  %neg = xor i32 %102, -1
  %conv129 = sext i32 %neg to i64
  %and130 = and i64 %add127, %conv129
  %add.ptr131 = getelementptr inbounds i8, i8* null, i64 %and130
  %103 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free132 = getelementptr inbounds %struct.obstack, %struct.obstack* %103, i32 0, i32 3
  store i8* %add.ptr131, i8** %next_free132, align 8
  %104 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free133 = getelementptr inbounds %struct.obstack, %struct.obstack* %104, i32 0, i32 3
  %105 = load i8*, i8** %next_free133, align 8
  %106 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 1
  %107 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %108 = bitcast %struct._obstack_chunk* %107 to i8*
  %sub.ptr.lhs.cast134 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast135 = ptrtoint i8* %108 to i64
  %sub.ptr.sub136 = sub i64 %sub.ptr.lhs.cast134, %sub.ptr.rhs.cast135
  %109 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit137 = getelementptr inbounds %struct.obstack, %struct.obstack* %109, i32 0, i32 4
  %110 = load i8*, i8** %chunk_limit137, align 8
  %111 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk138 = getelementptr inbounds %struct.obstack, %struct.obstack* %111, i32 0, i32 1
  %112 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk138, align 8
  %113 = bitcast %struct._obstack_chunk* %112 to i8*
  %sub.ptr.lhs.cast139 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast140 = ptrtoint i8* %113 to i64
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  %cmp142 = icmp sgt i64 %sub.ptr.sub136, %sub.ptr.sub141
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %if.end.122
  %114 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit145 = getelementptr inbounds %struct.obstack, %struct.obstack* %114, i32 0, i32 4
  %115 = load i8*, i8** %chunk_limit145, align 8
  %116 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free146 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 3
  store i8* %115, i8** %next_free146, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %if.end.122
  %117 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free148 = getelementptr inbounds %struct.obstack, %struct.obstack* %117, i32 0, i32 3
  %118 = load i8*, i8** %next_free148, align 8
  %119 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base149 = getelementptr inbounds %struct.obstack, %struct.obstack* %119, i32 0, i32 2
  store i8* %118, i8** %object_base149, align 8
  %120 = load i8*, i8** %value, align 8
  store i8* %120, i8** %tmp
  %121 = load i8*, i8** %tmp
  store i8* %121, i8** %string, align 8
  store %struct.obstack* @string_stack, %struct.obstack** %__o151, align 8
  %122 = load i8*, i8** %string, align 8
  store i8* %122, i8** %__obj, align 8
  %123 = load i8*, i8** %__obj, align 8
  %124 = load %struct.obstack*, %struct.obstack** %__o151, align 8
  %chunk153 = getelementptr inbounds %struct.obstack, %struct.obstack* %124, i32 0, i32 1
  %125 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk153, align 8
  %126 = bitcast %struct._obstack_chunk* %125 to i8*
  %cmp154 = icmp ugt i8* %123, %126
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.163

land.lhs.true.156:                                ; preds = %if.end.147
  %127 = load i8*, i8** %__obj, align 8
  %128 = load %struct.obstack*, %struct.obstack** %__o151, align 8
  %chunk_limit157 = getelementptr inbounds %struct.obstack, %struct.obstack* %128, i32 0, i32 4
  %129 = load i8*, i8** %chunk_limit157, align 8
  %cmp158 = icmp ult i8* %127, %129
  br i1 %cmp158, label %if.then.160, label %if.else.163

if.then.160:                                      ; preds = %land.lhs.true.156
  %130 = load i8*, i8** %__obj, align 8
  %131 = load %struct.obstack*, %struct.obstack** %__o151, align 8
  %object_base161 = getelementptr inbounds %struct.obstack, %struct.obstack* %131, i32 0, i32 2
  store i8* %130, i8** %object_base161, align 8
  %132 = load %struct.obstack*, %struct.obstack** %__o151, align 8
  %next_free162 = getelementptr inbounds %struct.obstack, %struct.obstack* %132, i32 0, i32 3
  store i8* %130, i8** %next_free162, align 8
  br label %if.end.164

if.else.163:                                      ; preds = %land.lhs.true.156, %if.end.147
  %133 = load %struct.obstack*, %struct.obstack** %__o151, align 8
  %134 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %133, i8* %134)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.160
  %135 = load i8*, i8** %string, align 8
  %call165 = call i8* @xstrdup(i8* %135)
  store i8* %call165, i8** @token_val, align 8
  %136 = load i8*, i8** @smaptext, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %137 to i32
  %cmp168 = icmp eq i32 %conv167, 105
  %frombool = zext i1 %cmp168 to i8
  store i8 %frombool, i8* @insensitive_p, align 1
  store i32 1, i32* @yy_start, align 4
  store i32 11, i32* %retval
  br label %return

sw.bb.170:                                        ; preds = %do_action
  %138 = load i8*, i8** @smaptext, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %138, i64 1
  call void @obstack_octal_grow(%struct.obstack* @string_stack, i8* %add.ptr171)
  br label %sw.epilog.602

sw.bb.172:                                        ; preds = %do_action
  %139 = load i8*, i8** @smaptext, align 8
  %add.ptr173 = getelementptr inbounds i8, i8* %139, i64 2
  call void @obstack_hexa_grow(%struct.obstack* @string_stack, i8* %add.ptr173)
  br label %sw.epilog.602

sw.bb.174:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o176, align 8
  %140 = load %struct.obstack*, %struct.obstack** %__o176, align 8
  %next_free177 = getelementptr inbounds %struct.obstack, %struct.obstack* %140, i32 0, i32 3
  %141 = load i8*, i8** %next_free177, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load %struct.obstack*, %struct.obstack** %__o176, align 8
  %chunk_limit179 = getelementptr inbounds %struct.obstack, %struct.obstack* %142, i32 0, i32 4
  %143 = load i8*, i8** %chunk_limit179, align 8
  %cmp180 = icmp ugt i8* %add.ptr178, %143
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %sw.bb.174
  %144 = load %struct.obstack*, %struct.obstack** %__o176, align 8
  call void @_obstack_newchunk(%struct.obstack* %144, i32 1)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %sw.bb.174
  %145 = load %struct.obstack*, %struct.obstack** %__o176, align 8
  %next_free184 = getelementptr inbounds %struct.obstack, %struct.obstack* %145, i32 0, i32 3
  %146 = load i8*, i8** %next_free184, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr185, i8** %next_free184, align 8
  store i8 7, i8* %146, align 1
  br label %sw.epilog.602

sw.bb.186:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o188, align 8
  %147 = load %struct.obstack*, %struct.obstack** %__o188, align 8
  %next_free189 = getelementptr inbounds %struct.obstack, %struct.obstack* %147, i32 0, i32 3
  %148 = load i8*, i8** %next_free189, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %148, i64 1
  %149 = load %struct.obstack*, %struct.obstack** %__o188, align 8
  %chunk_limit191 = getelementptr inbounds %struct.obstack, %struct.obstack* %149, i32 0, i32 4
  %150 = load i8*, i8** %chunk_limit191, align 8
  %cmp192 = icmp ugt i8* %add.ptr190, %150
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %sw.bb.186
  %151 = load %struct.obstack*, %struct.obstack** %__o188, align 8
  call void @_obstack_newchunk(%struct.obstack* %151, i32 1)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %sw.bb.186
  %152 = load %struct.obstack*, %struct.obstack** %__o188, align 8
  %next_free196 = getelementptr inbounds %struct.obstack, %struct.obstack* %152, i32 0, i32 3
  %153 = load i8*, i8** %next_free196, align 8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr197, i8** %next_free196, align 8
  store i8 8, i8* %153, align 1
  br label %sw.epilog.602

sw.bb.198:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o200, align 8
  %154 = load %struct.obstack*, %struct.obstack** %__o200, align 8
  %next_free201 = getelementptr inbounds %struct.obstack, %struct.obstack* %154, i32 0, i32 3
  %155 = load i8*, i8** %next_free201, align 8
  %add.ptr202 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load %struct.obstack*, %struct.obstack** %__o200, align 8
  %chunk_limit203 = getelementptr inbounds %struct.obstack, %struct.obstack* %156, i32 0, i32 4
  %157 = load i8*, i8** %chunk_limit203, align 8
  %cmp204 = icmp ugt i8* %add.ptr202, %157
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %sw.bb.198
  %158 = load %struct.obstack*, %struct.obstack** %__o200, align 8
  call void @_obstack_newchunk(%struct.obstack* %158, i32 1)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %sw.bb.198
  %159 = load %struct.obstack*, %struct.obstack** %__o200, align 8
  %next_free208 = getelementptr inbounds %struct.obstack, %struct.obstack* %159, i32 0, i32 3
  %160 = load i8*, i8** %next_free208, align 8
  %incdec.ptr209 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr209, i8** %next_free208, align 8
  store i8 127, i8* %160, align 1
  br label %sw.epilog.602

sw.bb.210:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o212, align 8
  %161 = load %struct.obstack*, %struct.obstack** %__o212, align 8
  %next_free213 = getelementptr inbounds %struct.obstack, %struct.obstack* %161, i32 0, i32 3
  %162 = load i8*, i8** %next_free213, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load %struct.obstack*, %struct.obstack** %__o212, align 8
  %chunk_limit215 = getelementptr inbounds %struct.obstack, %struct.obstack* %163, i32 0, i32 4
  %164 = load i8*, i8** %chunk_limit215, align 8
  %cmp216 = icmp ugt i8* %add.ptr214, %164
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.210
  %165 = load %struct.obstack*, %struct.obstack** %__o212, align 8
  call void @_obstack_newchunk(%struct.obstack* %165, i32 1)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.218, %sw.bb.210
  %166 = load %struct.obstack*, %struct.obstack** %__o212, align 8
  %next_free220 = getelementptr inbounds %struct.obstack, %struct.obstack* %166, i32 0, i32 3
  %167 = load i8*, i8** %next_free220, align 8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr221, i8** %next_free220, align 8
  store i8 27, i8* %167, align 1
  br label %sw.epilog.602

sw.bb.222:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o224, align 8
  %168 = load %struct.obstack*, %struct.obstack** %__o224, align 8
  %next_free225 = getelementptr inbounds %struct.obstack, %struct.obstack* %168, i32 0, i32 3
  %169 = load i8*, i8** %next_free225, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load %struct.obstack*, %struct.obstack** %__o224, align 8
  %chunk_limit227 = getelementptr inbounds %struct.obstack, %struct.obstack* %170, i32 0, i32 4
  %171 = load i8*, i8** %chunk_limit227, align 8
  %cmp228 = icmp ugt i8* %add.ptr226, %171
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %sw.bb.222
  %172 = load %struct.obstack*, %struct.obstack** %__o224, align 8
  call void @_obstack_newchunk(%struct.obstack* %172, i32 1)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %sw.bb.222
  %173 = load %struct.obstack*, %struct.obstack** %__o224, align 8
  %next_free232 = getelementptr inbounds %struct.obstack, %struct.obstack* %173, i32 0, i32 3
  %174 = load i8*, i8** %next_free232, align 8
  %incdec.ptr233 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr233, i8** %next_free232, align 8
  store i8 12, i8* %174, align 1
  br label %sw.epilog.602

sw.bb.234:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o236, align 8
  %175 = load %struct.obstack*, %struct.obstack** %__o236, align 8
  %next_free237 = getelementptr inbounds %struct.obstack, %struct.obstack* %175, i32 0, i32 3
  %176 = load i8*, i8** %next_free237, align 8
  %add.ptr238 = getelementptr inbounds i8, i8* %176, i64 1
  %177 = load %struct.obstack*, %struct.obstack** %__o236, align 8
  %chunk_limit239 = getelementptr inbounds %struct.obstack, %struct.obstack* %177, i32 0, i32 4
  %178 = load i8*, i8** %chunk_limit239, align 8
  %cmp240 = icmp ugt i8* %add.ptr238, %178
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %sw.bb.234
  %179 = load %struct.obstack*, %struct.obstack** %__o236, align 8
  call void @_obstack_newchunk(%struct.obstack* %179, i32 1)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %sw.bb.234
  %180 = load %struct.obstack*, %struct.obstack** %__o236, align 8
  %next_free244 = getelementptr inbounds %struct.obstack, %struct.obstack* %180, i32 0, i32 3
  %181 = load i8*, i8** %next_free244, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr245, i8** %next_free244, align 8
  store i8 10, i8* %181, align 1
  br label %sw.epilog.602

sw.bb.246:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o248, align 8
  %182 = load %struct.obstack*, %struct.obstack** %__o248, align 8
  %next_free249 = getelementptr inbounds %struct.obstack, %struct.obstack* %182, i32 0, i32 3
  %183 = load i8*, i8** %next_free249, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %183, i64 1
  %184 = load %struct.obstack*, %struct.obstack** %__o248, align 8
  %chunk_limit251 = getelementptr inbounds %struct.obstack, %struct.obstack* %184, i32 0, i32 4
  %185 = load i8*, i8** %chunk_limit251, align 8
  %cmp252 = icmp ugt i8* %add.ptr250, %185
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %sw.bb.246
  %186 = load %struct.obstack*, %struct.obstack** %__o248, align 8
  call void @_obstack_newchunk(%struct.obstack* %186, i32 1)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %sw.bb.246
  %187 = load %struct.obstack*, %struct.obstack** %__o248, align 8
  %next_free256 = getelementptr inbounds %struct.obstack, %struct.obstack* %187, i32 0, i32 3
  %188 = load i8*, i8** %next_free256, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr257, i8** %next_free256, align 8
  store i8 13, i8* %188, align 1
  br label %sw.epilog.602

sw.bb.258:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o260, align 8
  %189 = load %struct.obstack*, %struct.obstack** %__o260, align 8
  %next_free261 = getelementptr inbounds %struct.obstack, %struct.obstack* %189, i32 0, i32 3
  %190 = load i8*, i8** %next_free261, align 8
  %add.ptr262 = getelementptr inbounds i8, i8* %190, i64 1
  %191 = load %struct.obstack*, %struct.obstack** %__o260, align 8
  %chunk_limit263 = getelementptr inbounds %struct.obstack, %struct.obstack* %191, i32 0, i32 4
  %192 = load i8*, i8** %chunk_limit263, align 8
  %cmp264 = icmp ugt i8* %add.ptr262, %192
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %sw.bb.258
  %193 = load %struct.obstack*, %struct.obstack** %__o260, align 8
  call void @_obstack_newchunk(%struct.obstack* %193, i32 1)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %sw.bb.258
  %194 = load %struct.obstack*, %struct.obstack** %__o260, align 8
  %next_free268 = getelementptr inbounds %struct.obstack, %struct.obstack* %194, i32 0, i32 3
  %195 = load i8*, i8** %next_free268, align 8
  %incdec.ptr269 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr269, i8** %next_free268, align 8
  store i8 9, i8* %195, align 1
  br label %sw.epilog.602

sw.bb.270:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o272, align 8
  %196 = load %struct.obstack*, %struct.obstack** %__o272, align 8
  %next_free273 = getelementptr inbounds %struct.obstack, %struct.obstack* %196, i32 0, i32 3
  %197 = load i8*, i8** %next_free273, align 8
  %add.ptr274 = getelementptr inbounds i8, i8* %197, i64 1
  %198 = load %struct.obstack*, %struct.obstack** %__o272, align 8
  %chunk_limit275 = getelementptr inbounds %struct.obstack, %struct.obstack* %198, i32 0, i32 4
  %199 = load i8*, i8** %chunk_limit275, align 8
  %cmp276 = icmp ugt i8* %add.ptr274, %199
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %sw.bb.270
  %200 = load %struct.obstack*, %struct.obstack** %__o272, align 8
  call void @_obstack_newchunk(%struct.obstack* %200, i32 1)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %sw.bb.270
  %201 = load %struct.obstack*, %struct.obstack** %__o272, align 8
  %next_free280 = getelementptr inbounds %struct.obstack, %struct.obstack* %201, i32 0, i32 3
  %202 = load i8*, i8** %next_free280, align 8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %incdec.ptr281, i8** %next_free280, align 8
  store i8 11, i8* %202, align 1
  br label %sw.epilog.602

sw.bb.282:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o284, align 8
  %203 = load %struct.obstack*, %struct.obstack** %__o284, align 8
  %next_free285 = getelementptr inbounds %struct.obstack, %struct.obstack* %203, i32 0, i32 3
  %204 = load i8*, i8** %next_free285, align 8
  %add.ptr286 = getelementptr inbounds i8, i8* %204, i64 1
  %205 = load %struct.obstack*, %struct.obstack** %__o284, align 8
  %chunk_limit287 = getelementptr inbounds %struct.obstack, %struct.obstack* %205, i32 0, i32 4
  %206 = load i8*, i8** %chunk_limit287, align 8
  %cmp288 = icmp ugt i8* %add.ptr286, %206
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %sw.bb.282
  %207 = load %struct.obstack*, %struct.obstack** %__o284, align 8
  call void @_obstack_newchunk(%struct.obstack* %207, i32 1)
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %sw.bb.282
  %208 = load i8*, i8** @smaptext, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx292, align 1
  %210 = load %struct.obstack*, %struct.obstack** %__o284, align 8
  %next_free293 = getelementptr inbounds %struct.obstack, %struct.obstack* %210, i32 0, i32 3
  %211 = load i8*, i8** %next_free293, align 8
  %incdec.ptr294 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr294, i8** %next_free293, align 8
  store i8 %209, i8* %211, align 1
  br label %sw.epilog.602

sw.bb.295:                                        ; preds = %do_action
  %212 = load i8*, i8** @yyfilename, align 8
  %213 = load i32, i32* @smaplineno, align 4
  %call296 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %212, i32 %213, i8* %call296, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog.602

sw.bb.297:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o299, align 8
  %214 = load i32, i32* @smapleng, align 4
  store i32 %214, i32* %__len, align 4
  %215 = load %struct.obstack*, %struct.obstack** %__o299, align 8
  %next_free301 = getelementptr inbounds %struct.obstack, %struct.obstack* %215, i32 0, i32 3
  %216 = load i8*, i8** %next_free301, align 8
  %217 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %217 to i64
  %add.ptr302 = getelementptr inbounds i8, i8* %216, i64 %idx.ext
  %218 = load %struct.obstack*, %struct.obstack** %__o299, align 8
  %chunk_limit303 = getelementptr inbounds %struct.obstack, %struct.obstack* %218, i32 0, i32 4
  %219 = load i8*, i8** %chunk_limit303, align 8
  %cmp304 = icmp ugt i8* %add.ptr302, %219
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %sw.bb.297
  %220 = load %struct.obstack*, %struct.obstack** %__o299, align 8
  %221 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %220, i32 %221)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %sw.bb.297
  %222 = load %struct.obstack*, %struct.obstack** %__o299, align 8
  %next_free308 = getelementptr inbounds %struct.obstack, %struct.obstack* %222, i32 0, i32 3
  %223 = load i8*, i8** %next_free308, align 8
  %224 = load i8*, i8** @smaptext, align 8
  %225 = load i32, i32* %__len, align 4
  %conv309 = sext i32 %225 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %224, i64 %conv309, i32 1, i1 false)
  %226 = load i32, i32* %__len, align 4
  %227 = load %struct.obstack*, %struct.obstack** %__o299, align 8
  %next_free310 = getelementptr inbounds %struct.obstack, %struct.obstack* %227, i32 0, i32 3
  %228 = load i8*, i8** %next_free310, align 8
  %idx.ext311 = sext i32 %226 to i64
  %add.ptr312 = getelementptr inbounds i8, i8* %228, i64 %idx.ext311
  store i8* %add.ptr312, i8** %next_free310, align 8
  br label %sw.epilog.602

sw.bb.313:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o317, align 8
  %229 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %next_free318 = getelementptr inbounds %struct.obstack, %struct.obstack* %229, i32 0, i32 3
  %230 = load i8*, i8** %next_free318, align 8
  %add.ptr319 = getelementptr inbounds i8, i8* %230, i64 1
  %231 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %chunk_limit320 = getelementptr inbounds %struct.obstack, %struct.obstack* %231, i32 0, i32 4
  %232 = load i8*, i8** %chunk_limit320, align 8
  %cmp321 = icmp ugt i8* %add.ptr319, %232
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %sw.bb.313
  %233 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  call void @_obstack_newchunk(%struct.obstack* %233, i32 1)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %sw.bb.313
  %234 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %next_free325 = getelementptr inbounds %struct.obstack, %struct.obstack* %234, i32 0, i32 3
  %235 = load i8*, i8** %next_free325, align 8
  %incdec.ptr326 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr326, i8** %next_free325, align 8
  store i8 0, i8* %235, align 1
  store %struct.obstack* @string_stack, %struct.obstack** %__o1328, align 8
  %236 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %object_base331 = getelementptr inbounds %struct.obstack, %struct.obstack* %236, i32 0, i32 2
  %237 = load i8*, i8** %object_base331, align 8
  store i8* %237, i8** %value330, align 8
  %238 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free332 = getelementptr inbounds %struct.obstack, %struct.obstack* %238, i32 0, i32 3
  %239 = load i8*, i8** %next_free332, align 8
  %240 = load i8*, i8** %value330, align 8
  %cmp333 = icmp eq i8* %239, %240
  br i1 %cmp333, label %if.then.335, label %if.end.340

if.then.335:                                      ; preds = %if.end.324
  %241 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %maybe_empty_object336 = getelementptr inbounds %struct.obstack, %struct.obstack* %241, i32 0, i32 10
  %bf.load337 = load i8, i8* %maybe_empty_object336, align 8
  %bf.clear338 = and i8 %bf.load337, -3
  %bf.set339 = or i8 %bf.clear338, 2
  store i8 %bf.set339, i8* %maybe_empty_object336, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.335, %if.end.324
  %242 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free341 = getelementptr inbounds %struct.obstack, %struct.obstack* %242, i32 0, i32 3
  %243 = load i8*, i8** %next_free341, align 8
  %sub.ptr.lhs.cast342 = ptrtoint i8* %243 to i64
  %sub.ptr.sub343 = sub i64 %sub.ptr.lhs.cast342, 0
  %244 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %alignment_mask344 = getelementptr inbounds %struct.obstack, %struct.obstack* %244, i32 0, i32 6
  %245 = load i32, i32* %alignment_mask344, align 4
  %conv345 = sext i32 %245 to i64
  %add346 = add nsw i64 %sub.ptr.sub343, %conv345
  %246 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %alignment_mask347 = getelementptr inbounds %struct.obstack, %struct.obstack* %246, i32 0, i32 6
  %247 = load i32, i32* %alignment_mask347, align 4
  %neg348 = xor i32 %247, -1
  %conv349 = sext i32 %neg348 to i64
  %and350 = and i64 %add346, %conv349
  %add.ptr351 = getelementptr inbounds i8, i8* null, i64 %and350
  %248 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free352 = getelementptr inbounds %struct.obstack, %struct.obstack* %248, i32 0, i32 3
  store i8* %add.ptr351, i8** %next_free352, align 8
  %249 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free353 = getelementptr inbounds %struct.obstack, %struct.obstack* %249, i32 0, i32 3
  %250 = load i8*, i8** %next_free353, align 8
  %251 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %chunk354 = getelementptr inbounds %struct.obstack, %struct.obstack* %251, i32 0, i32 1
  %252 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk354, align 8
  %253 = bitcast %struct._obstack_chunk* %252 to i8*
  %sub.ptr.lhs.cast355 = ptrtoint i8* %250 to i64
  %sub.ptr.rhs.cast356 = ptrtoint i8* %253 to i64
  %sub.ptr.sub357 = sub i64 %sub.ptr.lhs.cast355, %sub.ptr.rhs.cast356
  %254 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %chunk_limit358 = getelementptr inbounds %struct.obstack, %struct.obstack* %254, i32 0, i32 4
  %255 = load i8*, i8** %chunk_limit358, align 8
  %256 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %chunk359 = getelementptr inbounds %struct.obstack, %struct.obstack* %256, i32 0, i32 1
  %257 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk359, align 8
  %258 = bitcast %struct._obstack_chunk* %257 to i8*
  %sub.ptr.lhs.cast360 = ptrtoint i8* %255 to i64
  %sub.ptr.rhs.cast361 = ptrtoint i8* %258 to i64
  %sub.ptr.sub362 = sub i64 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast361
  %cmp363 = icmp sgt i64 %sub.ptr.sub357, %sub.ptr.sub362
  br i1 %cmp363, label %if.then.365, label %if.end.368

if.then.365:                                      ; preds = %if.end.340
  %259 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %chunk_limit366 = getelementptr inbounds %struct.obstack, %struct.obstack* %259, i32 0, i32 4
  %260 = load i8*, i8** %chunk_limit366, align 8
  %261 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free367 = getelementptr inbounds %struct.obstack, %struct.obstack* %261, i32 0, i32 3
  store i8* %260, i8** %next_free367, align 8
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.365, %if.end.340
  %262 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %next_free369 = getelementptr inbounds %struct.obstack, %struct.obstack* %262, i32 0, i32 3
  %263 = load i8*, i8** %next_free369, align 8
  %264 = load %struct.obstack*, %struct.obstack** %__o1328, align 8
  %object_base370 = getelementptr inbounds %struct.obstack, %struct.obstack* %264, i32 0, i32 2
  store i8* %263, i8** %object_base370, align 8
  %265 = load i8*, i8** %value330, align 8
  store i8* %265, i8** %tmp371
  %266 = load i8*, i8** %tmp371
  store i8* %266, i8** %string315, align 8
  store %struct.obstack* @string_stack, %struct.obstack** %__o373, align 8
  %267 = load i8*, i8** %string315, align 8
  store i8* %267, i8** %__obj375, align 8
  %268 = load i8*, i8** %__obj375, align 8
  %269 = load %struct.obstack*, %struct.obstack** %__o373, align 8
  %chunk376 = getelementptr inbounds %struct.obstack, %struct.obstack* %269, i32 0, i32 1
  %270 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk376, align 8
  %271 = bitcast %struct._obstack_chunk* %270 to i8*
  %cmp377 = icmp ugt i8* %268, %271
  br i1 %cmp377, label %land.lhs.true.379, label %if.else.386

land.lhs.true.379:                                ; preds = %if.end.368
  %272 = load i8*, i8** %__obj375, align 8
  %273 = load %struct.obstack*, %struct.obstack** %__o373, align 8
  %chunk_limit380 = getelementptr inbounds %struct.obstack, %struct.obstack* %273, i32 0, i32 4
  %274 = load i8*, i8** %chunk_limit380, align 8
  %cmp381 = icmp ult i8* %272, %274
  br i1 %cmp381, label %if.then.383, label %if.else.386

if.then.383:                                      ; preds = %land.lhs.true.379
  %275 = load i8*, i8** %__obj375, align 8
  %276 = load %struct.obstack*, %struct.obstack** %__o373, align 8
  %object_base384 = getelementptr inbounds %struct.obstack, %struct.obstack* %276, i32 0, i32 2
  store i8* %275, i8** %object_base384, align 8
  %277 = load %struct.obstack*, %struct.obstack** %__o373, align 8
  %next_free385 = getelementptr inbounds %struct.obstack, %struct.obstack* %277, i32 0, i32 3
  store i8* %275, i8** %next_free385, align 8
  br label %if.end.387

if.else.386:                                      ; preds = %land.lhs.true.379, %if.end.368
  %278 = load %struct.obstack*, %struct.obstack** %__o373, align 8
  %279 = load i8*, i8** %__obj375, align 8
  call void @obstack_free(%struct.obstack* %278, i8* %279)
  br label %if.end.387

if.end.387:                                       ; preds = %if.else.386, %if.then.383
  %280 = load i8*, i8** %string315, align 8
  %call388 = call i8* @xstrdup(i8* %280)
  store i8* %call388, i8** @token_val, align 8
  %281 = load i8*, i8** @smaptext, align 8
  %arrayidx389 = getelementptr inbounds i8, i8* %281, i64 1
  %282 = load i8, i8* %arrayidx389, align 1
  %conv390 = sext i8 %282 to i32
  %cmp391 = icmp eq i32 %conv390, 105
  %frombool393 = zext i1 %cmp391 to i8
  store i8 %frombool393, i8* @insensitive_p, align 1
  store i32 1, i32* @yy_start, align 4
  store i32 12, i32* %retval
  br label %return

sw.bb.394:                                        ; preds = %do_action
  %283 = load i8*, i8** @smaptext, align 8
  %add.ptr395 = getelementptr inbounds i8, i8* %283, i64 1
  call void @obstack_octal_grow(%struct.obstack* @string_stack, i8* %add.ptr395)
  br label %sw.epilog.602

sw.bb.396:                                        ; preds = %do_action
  %284 = load i8*, i8** @smaptext, align 8
  %add.ptr397 = getelementptr inbounds i8, i8* %284, i64 2
  call void @obstack_hexa_grow(%struct.obstack* @string_stack, i8* %add.ptr397)
  br label %sw.epilog.602

sw.bb.398:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o400, align 8
  %285 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %next_free401 = getelementptr inbounds %struct.obstack, %struct.obstack* %285, i32 0, i32 3
  %286 = load i8*, i8** %next_free401, align 8
  %add.ptr402 = getelementptr inbounds i8, i8* %286, i64 1
  %287 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %chunk_limit403 = getelementptr inbounds %struct.obstack, %struct.obstack* %287, i32 0, i32 4
  %288 = load i8*, i8** %chunk_limit403, align 8
  %cmp404 = icmp ugt i8* %add.ptr402, %288
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %sw.bb.398
  %289 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  call void @_obstack_newchunk(%struct.obstack* %289, i32 1)
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.406, %sw.bb.398
  %290 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %next_free408 = getelementptr inbounds %struct.obstack, %struct.obstack* %290, i32 0, i32 3
  %291 = load i8*, i8** %next_free408, align 8
  %incdec.ptr409 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr409, i8** %next_free408, align 8
  store i8 7, i8* %291, align 1
  br label %sw.epilog.602

sw.bb.410:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o412, align 8
  %292 = load %struct.obstack*, %struct.obstack** %__o412, align 8
  %next_free413 = getelementptr inbounds %struct.obstack, %struct.obstack* %292, i32 0, i32 3
  %293 = load i8*, i8** %next_free413, align 8
  %add.ptr414 = getelementptr inbounds i8, i8* %293, i64 1
  %294 = load %struct.obstack*, %struct.obstack** %__o412, align 8
  %chunk_limit415 = getelementptr inbounds %struct.obstack, %struct.obstack* %294, i32 0, i32 4
  %295 = load i8*, i8** %chunk_limit415, align 8
  %cmp416 = icmp ugt i8* %add.ptr414, %295
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %sw.bb.410
  %296 = load %struct.obstack*, %struct.obstack** %__o412, align 8
  call void @_obstack_newchunk(%struct.obstack* %296, i32 1)
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.418, %sw.bb.410
  %297 = load %struct.obstack*, %struct.obstack** %__o412, align 8
  %next_free420 = getelementptr inbounds %struct.obstack, %struct.obstack* %297, i32 0, i32 3
  %298 = load i8*, i8** %next_free420, align 8
  %incdec.ptr421 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %incdec.ptr421, i8** %next_free420, align 8
  store i8 8, i8* %298, align 1
  br label %sw.epilog.602

sw.bb.422:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o424, align 8
  %299 = load %struct.obstack*, %struct.obstack** %__o424, align 8
  %next_free425 = getelementptr inbounds %struct.obstack, %struct.obstack* %299, i32 0, i32 3
  %300 = load i8*, i8** %next_free425, align 8
  %add.ptr426 = getelementptr inbounds i8, i8* %300, i64 1
  %301 = load %struct.obstack*, %struct.obstack** %__o424, align 8
  %chunk_limit427 = getelementptr inbounds %struct.obstack, %struct.obstack* %301, i32 0, i32 4
  %302 = load i8*, i8** %chunk_limit427, align 8
  %cmp428 = icmp ugt i8* %add.ptr426, %302
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %sw.bb.422
  %303 = load %struct.obstack*, %struct.obstack** %__o424, align 8
  call void @_obstack_newchunk(%struct.obstack* %303, i32 1)
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.430, %sw.bb.422
  %304 = load %struct.obstack*, %struct.obstack** %__o424, align 8
  %next_free432 = getelementptr inbounds %struct.obstack, %struct.obstack* %304, i32 0, i32 3
  %305 = load i8*, i8** %next_free432, align 8
  %incdec.ptr433 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %incdec.ptr433, i8** %next_free432, align 8
  store i8 127, i8* %305, align 1
  br label %sw.epilog.602

sw.bb.434:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o436, align 8
  %306 = load %struct.obstack*, %struct.obstack** %__o436, align 8
  %next_free437 = getelementptr inbounds %struct.obstack, %struct.obstack* %306, i32 0, i32 3
  %307 = load i8*, i8** %next_free437, align 8
  %add.ptr438 = getelementptr inbounds i8, i8* %307, i64 1
  %308 = load %struct.obstack*, %struct.obstack** %__o436, align 8
  %chunk_limit439 = getelementptr inbounds %struct.obstack, %struct.obstack* %308, i32 0, i32 4
  %309 = load i8*, i8** %chunk_limit439, align 8
  %cmp440 = icmp ugt i8* %add.ptr438, %309
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %sw.bb.434
  %310 = load %struct.obstack*, %struct.obstack** %__o436, align 8
  call void @_obstack_newchunk(%struct.obstack* %310, i32 1)
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.442, %sw.bb.434
  %311 = load %struct.obstack*, %struct.obstack** %__o436, align 8
  %next_free444 = getelementptr inbounds %struct.obstack, %struct.obstack* %311, i32 0, i32 3
  %312 = load i8*, i8** %next_free444, align 8
  %incdec.ptr445 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %incdec.ptr445, i8** %next_free444, align 8
  store i8 27, i8* %312, align 1
  br label %sw.epilog.602

sw.bb.446:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o448, align 8
  %313 = load %struct.obstack*, %struct.obstack** %__o448, align 8
  %next_free449 = getelementptr inbounds %struct.obstack, %struct.obstack* %313, i32 0, i32 3
  %314 = load i8*, i8** %next_free449, align 8
  %add.ptr450 = getelementptr inbounds i8, i8* %314, i64 1
  %315 = load %struct.obstack*, %struct.obstack** %__o448, align 8
  %chunk_limit451 = getelementptr inbounds %struct.obstack, %struct.obstack* %315, i32 0, i32 4
  %316 = load i8*, i8** %chunk_limit451, align 8
  %cmp452 = icmp ugt i8* %add.ptr450, %316
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %sw.bb.446
  %317 = load %struct.obstack*, %struct.obstack** %__o448, align 8
  call void @_obstack_newchunk(%struct.obstack* %317, i32 1)
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %sw.bb.446
  %318 = load %struct.obstack*, %struct.obstack** %__o448, align 8
  %next_free456 = getelementptr inbounds %struct.obstack, %struct.obstack* %318, i32 0, i32 3
  %319 = load i8*, i8** %next_free456, align 8
  %incdec.ptr457 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %incdec.ptr457, i8** %next_free456, align 8
  store i8 12, i8* %319, align 1
  br label %sw.epilog.602

sw.bb.458:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o460, align 8
  %320 = load %struct.obstack*, %struct.obstack** %__o460, align 8
  %next_free461 = getelementptr inbounds %struct.obstack, %struct.obstack* %320, i32 0, i32 3
  %321 = load i8*, i8** %next_free461, align 8
  %add.ptr462 = getelementptr inbounds i8, i8* %321, i64 1
  %322 = load %struct.obstack*, %struct.obstack** %__o460, align 8
  %chunk_limit463 = getelementptr inbounds %struct.obstack, %struct.obstack* %322, i32 0, i32 4
  %323 = load i8*, i8** %chunk_limit463, align 8
  %cmp464 = icmp ugt i8* %add.ptr462, %323
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %sw.bb.458
  %324 = load %struct.obstack*, %struct.obstack** %__o460, align 8
  call void @_obstack_newchunk(%struct.obstack* %324, i32 1)
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.466, %sw.bb.458
  %325 = load %struct.obstack*, %struct.obstack** %__o460, align 8
  %next_free468 = getelementptr inbounds %struct.obstack, %struct.obstack* %325, i32 0, i32 3
  %326 = load i8*, i8** %next_free468, align 8
  %incdec.ptr469 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr469, i8** %next_free468, align 8
  store i8 10, i8* %326, align 1
  br label %sw.epilog.602

sw.bb.470:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o472, align 8
  %327 = load %struct.obstack*, %struct.obstack** %__o472, align 8
  %next_free473 = getelementptr inbounds %struct.obstack, %struct.obstack* %327, i32 0, i32 3
  %328 = load i8*, i8** %next_free473, align 8
  %add.ptr474 = getelementptr inbounds i8, i8* %328, i64 1
  %329 = load %struct.obstack*, %struct.obstack** %__o472, align 8
  %chunk_limit475 = getelementptr inbounds %struct.obstack, %struct.obstack* %329, i32 0, i32 4
  %330 = load i8*, i8** %chunk_limit475, align 8
  %cmp476 = icmp ugt i8* %add.ptr474, %330
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %sw.bb.470
  %331 = load %struct.obstack*, %struct.obstack** %__o472, align 8
  call void @_obstack_newchunk(%struct.obstack* %331, i32 1)
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.478, %sw.bb.470
  %332 = load %struct.obstack*, %struct.obstack** %__o472, align 8
  %next_free480 = getelementptr inbounds %struct.obstack, %struct.obstack* %332, i32 0, i32 3
  %333 = load i8*, i8** %next_free480, align 8
  %incdec.ptr481 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr481, i8** %next_free480, align 8
  store i8 13, i8* %333, align 1
  br label %sw.epilog.602

sw.bb.482:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o484, align 8
  %334 = load %struct.obstack*, %struct.obstack** %__o484, align 8
  %next_free485 = getelementptr inbounds %struct.obstack, %struct.obstack* %334, i32 0, i32 3
  %335 = load i8*, i8** %next_free485, align 8
  %add.ptr486 = getelementptr inbounds i8, i8* %335, i64 1
  %336 = load %struct.obstack*, %struct.obstack** %__o484, align 8
  %chunk_limit487 = getelementptr inbounds %struct.obstack, %struct.obstack* %336, i32 0, i32 4
  %337 = load i8*, i8** %chunk_limit487, align 8
  %cmp488 = icmp ugt i8* %add.ptr486, %337
  br i1 %cmp488, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %sw.bb.482
  %338 = load %struct.obstack*, %struct.obstack** %__o484, align 8
  call void @_obstack_newchunk(%struct.obstack* %338, i32 1)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.490, %sw.bb.482
  %339 = load %struct.obstack*, %struct.obstack** %__o484, align 8
  %next_free492 = getelementptr inbounds %struct.obstack, %struct.obstack* %339, i32 0, i32 3
  %340 = load i8*, i8** %next_free492, align 8
  %incdec.ptr493 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr493, i8** %next_free492, align 8
  store i8 9, i8* %340, align 1
  br label %sw.epilog.602

sw.bb.494:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o496, align 8
  %341 = load %struct.obstack*, %struct.obstack** %__o496, align 8
  %next_free497 = getelementptr inbounds %struct.obstack, %struct.obstack* %341, i32 0, i32 3
  %342 = load i8*, i8** %next_free497, align 8
  %add.ptr498 = getelementptr inbounds i8, i8* %342, i64 1
  %343 = load %struct.obstack*, %struct.obstack** %__o496, align 8
  %chunk_limit499 = getelementptr inbounds %struct.obstack, %struct.obstack* %343, i32 0, i32 4
  %344 = load i8*, i8** %chunk_limit499, align 8
  %cmp500 = icmp ugt i8* %add.ptr498, %344
  br i1 %cmp500, label %if.then.502, label %if.end.503

if.then.502:                                      ; preds = %sw.bb.494
  %345 = load %struct.obstack*, %struct.obstack** %__o496, align 8
  call void @_obstack_newchunk(%struct.obstack* %345, i32 1)
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.502, %sw.bb.494
  %346 = load %struct.obstack*, %struct.obstack** %__o496, align 8
  %next_free504 = getelementptr inbounds %struct.obstack, %struct.obstack* %346, i32 0, i32 3
  %347 = load i8*, i8** %next_free504, align 8
  %incdec.ptr505 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %incdec.ptr505, i8** %next_free504, align 8
  store i8 11, i8* %347, align 1
  br label %sw.epilog.602

sw.bb.506:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o508, align 8
  %348 = load %struct.obstack*, %struct.obstack** %__o508, align 8
  %next_free509 = getelementptr inbounds %struct.obstack, %struct.obstack* %348, i32 0, i32 3
  %349 = load i8*, i8** %next_free509, align 8
  %add.ptr510 = getelementptr inbounds i8, i8* %349, i64 1
  %350 = load %struct.obstack*, %struct.obstack** %__o508, align 8
  %chunk_limit511 = getelementptr inbounds %struct.obstack, %struct.obstack* %350, i32 0, i32 4
  %351 = load i8*, i8** %chunk_limit511, align 8
  %cmp512 = icmp ugt i8* %add.ptr510, %351
  br i1 %cmp512, label %if.then.514, label %if.end.515

if.then.514:                                      ; preds = %sw.bb.506
  %352 = load %struct.obstack*, %struct.obstack** %__o508, align 8
  call void @_obstack_newchunk(%struct.obstack* %352, i32 1)
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.514, %sw.bb.506
  %353 = load i8*, i8** @smaptext, align 8
  %arrayidx516 = getelementptr inbounds i8, i8* %353, i64 1
  %354 = load i8, i8* %arrayidx516, align 1
  %355 = load %struct.obstack*, %struct.obstack** %__o508, align 8
  %next_free517 = getelementptr inbounds %struct.obstack, %struct.obstack* %355, i32 0, i32 3
  %356 = load i8*, i8** %next_free517, align 8
  %incdec.ptr518 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %incdec.ptr518, i8** %next_free517, align 8
  store i8 %354, i8* %356, align 1
  br label %sw.epilog.602

sw.bb.519:                                        ; preds = %do_action
  %357 = load i8*, i8** @yyfilename, align 8
  %358 = load i32, i32* @smaplineno, align 4
  %call520 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %357, i32 %358, i8* %call520, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog.602

sw.bb.521:                                        ; preds = %do_action
  store %struct.obstack* @string_stack, %struct.obstack** %__o523, align 8
  %359 = load i32, i32* @smapleng, align 4
  store i32 %359, i32* %__len525, align 4
  %360 = load %struct.obstack*, %struct.obstack** %__o523, align 8
  %next_free526 = getelementptr inbounds %struct.obstack, %struct.obstack* %360, i32 0, i32 3
  %361 = load i8*, i8** %next_free526, align 8
  %362 = load i32, i32* %__len525, align 4
  %idx.ext527 = sext i32 %362 to i64
  %add.ptr528 = getelementptr inbounds i8, i8* %361, i64 %idx.ext527
  %363 = load %struct.obstack*, %struct.obstack** %__o523, align 8
  %chunk_limit529 = getelementptr inbounds %struct.obstack, %struct.obstack* %363, i32 0, i32 4
  %364 = load i8*, i8** %chunk_limit529, align 8
  %cmp530 = icmp ugt i8* %add.ptr528, %364
  br i1 %cmp530, label %if.then.532, label %if.end.533

if.then.532:                                      ; preds = %sw.bb.521
  %365 = load %struct.obstack*, %struct.obstack** %__o523, align 8
  %366 = load i32, i32* %__len525, align 4
  call void @_obstack_newchunk(%struct.obstack* %365, i32 %366)
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.532, %sw.bb.521
  %367 = load %struct.obstack*, %struct.obstack** %__o523, align 8
  %next_free534 = getelementptr inbounds %struct.obstack, %struct.obstack* %367, i32 0, i32 3
  %368 = load i8*, i8** %next_free534, align 8
  %369 = load i8*, i8** @smaptext, align 8
  %370 = load i32, i32* %__len525, align 4
  %conv535 = sext i32 %370 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %368, i8* %369, i64 %conv535, i32 1, i1 false)
  %371 = load i32, i32* %__len525, align 4
  %372 = load %struct.obstack*, %struct.obstack** %__o523, align 8
  %next_free536 = getelementptr inbounds %struct.obstack, %struct.obstack* %372, i32 0, i32 3
  %373 = load i8*, i8** %next_free536, align 8
  %idx.ext537 = sext i32 %371 to i64
  %add.ptr538 = getelementptr inbounds i8, i8* %373, i64 %idx.ext537
  store i8* %add.ptr538, i8** %next_free536, align 8
  br label %sw.epilog.602

sw.bb.539:                                        ; preds = %do_action
  %374 = load i8*, i8** @smaptext, align 8
  %375 = load i32, i32* @smapleng, align 4
  %conv540 = sext i32 %375 to i64
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @smapout, align 8
  %call541 = call i64 @fwrite(i8* %374, i64 %conv540, i64 1, %struct._IO_FILE* %376)
  br label %sw.epilog.602

sw.bb.542:                                        ; preds = %do_action
  %377 = load i8*, i8** %yy_cp, align 8
  %378 = load i8*, i8** @smaptext, align 8
  %sub.ptr.lhs.cast544 = ptrtoint i8* %377 to i64
  %sub.ptr.rhs.cast545 = ptrtoint i8* %378 to i64
  %sub.ptr.sub546 = sub i64 %sub.ptr.lhs.cast544, %sub.ptr.rhs.cast545
  %conv547 = trunc i64 %sub.ptr.sub546 to i32
  %sub548 = sub nsw i32 %conv547, 1
  store i32 %sub548, i32* %yy_amount_of_matched_text, align 4
  %379 = load i8, i8* @yy_hold_char, align 1
  %380 = load i8*, i8** %yy_cp, align 8
  store i8 %379, i8* %380, align 1
  %381 = load i64, i64* @yy_buffer_stack_top, align 8
  %382 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx549 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %382, i64 %381
  %383 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx549, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %383, i32 0, i32 11
  %384 = load i32, i32* %yy_buffer_status, align 4
  %cmp550 = icmp eq i32 %384, 0
  br i1 %cmp550, label %if.then.552, label %if.end.557

if.then.552:                                      ; preds = %sw.bb.542
  %385 = load i64, i64* @yy_buffer_stack_top, align 8
  %386 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx553 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %386, i64 %385
  %387 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx553, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %387, i32 0, i32 4
  %388 = load i32, i32* %yy_n_chars, align 4
  store i32 %388, i32* @yy_n_chars, align 4
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %390 = load i64, i64* @yy_buffer_stack_top, align 8
  %391 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx554 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %391, i64 %390
  %392 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx554, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %392, i32 0, i32 0
  store %struct._IO_FILE* %389, %struct._IO_FILE** %yy_input_file, align 8
  %393 = load i64, i64* @yy_buffer_stack_top, align 8
  %394 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx555 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %394, i64 %393
  %395 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx555, align 8
  %yy_buffer_status556 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %395, i32 0, i32 11
  store i32 1, i32* %yy_buffer_status556, align 4
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.552, %sw.bb.542
  %396 = load i8*, i8** @yy_c_buf_p, align 8
  %397 = load i32, i32* @yy_n_chars, align 4
  %idxprom558 = sext i32 %397 to i64
  %398 = load i64, i64* @yy_buffer_stack_top, align 8
  %399 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx559 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %399, i64 %398
  %400 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx559, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %400, i32 0, i32 1
  %401 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx560 = getelementptr inbounds i8, i8* %401, i64 %idxprom558
  %cmp561 = icmp ule i8* %396, %arrayidx560
  br i1 %cmp561, label %if.then.563, label %if.else.574

if.then.563:                                      ; preds = %if.end.557
  %402 = load i8*, i8** @smaptext, align 8
  %403 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext565 = sext i32 %403 to i64
  %add.ptr566 = getelementptr inbounds i8, i8* %402, i64 %idx.ext565
  store i8* %add.ptr566, i8** @yy_c_buf_p, align 8
  %call567 = call i32 @yy_get_previous_state()
  store i32 %call567, i32* %yy_current_state, align 4
  %404 = load i32, i32* %yy_current_state, align 4
  %call568 = call i32 @yy_try_NUL_trans(i32 %404)
  store i32 %call568, i32* %yy_next_state, align 4
  %405 = load i8*, i8** @smaptext, align 8
  %add.ptr569 = getelementptr inbounds i8, i8* %405, i64 0
  store i8* %add.ptr569, i8** %yy_bp, align 8
  %406 = load i32, i32* %yy_next_state, align 4
  %tobool570 = icmp ne i32 %406, 0
  br i1 %tobool570, label %if.then.571, label %if.else.573

if.then.571:                                      ; preds = %if.then.563
  %407 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr572 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %incdec.ptr572, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr572, i8** %yy_cp, align 8
  %408 = load i32, i32* %yy_next_state, align 4
  store i32 %408, i32* %yy_current_state, align 4
  br label %yy_match

if.else.573:                                      ; preds = %if.then.563
  %409 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %409, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.574:                                      ; preds = %if.end.557
  %call575 = call i32 @yy_get_next_buffer()
  switch i32 %call575, label %sw.epilog [
    i32 1, label %sw.bb.576
    i32 0, label %sw.bb.589
    i32 2, label %sw.bb.594
  ]

sw.bb.576:                                        ; preds = %if.else.574
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %call577 = call i32 @smapwrap()
  %tobool578 = icmp ne i32 %call577, 0
  br i1 %tobool578, label %if.then.579, label %if.else.584

if.then.579:                                      ; preds = %sw.bb.576
  %410 = load i8*, i8** @smaptext, align 8
  %add.ptr580 = getelementptr inbounds i8, i8* %410, i64 0
  store i8* %add.ptr580, i8** @yy_c_buf_p, align 8
  %411 = load i32, i32* @yy_start, align 4
  %sub581 = sub nsw i32 %411, 1
  %div = sdiv i32 %sub581, 2
  %add582 = add nsw i32 39, %div
  %add583 = add nsw i32 %add582, 1
  store i32 %add583, i32* %yy_act, align 4
  br label %do_action

if.else.584:                                      ; preds = %sw.bb.576
  %412 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %tobool585 = icmp ne i32 %412, 0
  br i1 %tobool585, label %if.end.587, label %if.then.586

if.then.586:                                      ; preds = %if.else.584
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  call void @smaprestart(%struct._IO_FILE* %413)
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.586, %if.else.584
  br label %if.end.588

if.end.588:                                       ; preds = %if.end.587
  br label %sw.epilog

sw.bb.589:                                        ; preds = %if.else.574
  %414 = load i8*, i8** @smaptext, align 8
  %415 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext590 = sext i32 %415 to i64
  %add.ptr591 = getelementptr inbounds i8, i8* %414, i64 %idx.ext590
  store i8* %add.ptr591, i8** @yy_c_buf_p, align 8
  %call592 = call i32 @yy_get_previous_state()
  store i32 %call592, i32* %yy_current_state, align 4
  %416 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %416, i8** %yy_cp, align 8
  %417 = load i8*, i8** @smaptext, align 8
  %add.ptr593 = getelementptr inbounds i8, i8* %417, i64 0
  store i8* %add.ptr593, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.594:                                        ; preds = %if.else.574
  %418 = load i32, i32* @yy_n_chars, align 4
  %idxprom595 = sext i32 %418 to i64
  %419 = load i64, i64* @yy_buffer_stack_top, align 8
  %420 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx596 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %420, i64 %419
  %421 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx596, align 8
  %yy_ch_buf597 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %421, i32 0, i32 1
  %422 = load i8*, i8** %yy_ch_buf597, align 8
  %arrayidx598 = getelementptr inbounds i8, i8* %422, i64 %idxprom595
  store i8* %arrayidx598, i8** @yy_c_buf_p, align 8
  %call599 = call i32 @yy_get_previous_state()
  store i32 %call599, i32* %yy_current_state, align 4
  %423 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %423, i8** %yy_cp, align 8
  %424 = load i8*, i8** @smaptext, align 8
  %add.ptr600 = getelementptr inbounds i8, i8* %424, i64 0
  store i8* %add.ptr600, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.574, %if.end.588
  br label %if.end.601

if.end.601:                                       ; preds = %sw.epilog
  br label %sw.epilog.602

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog.602

sw.epilog.602:                                    ; preds = %sw.default, %if.end.601, %sw.bb.539, %if.end.533, %sw.bb.519, %if.end.515, %if.end.503, %if.end.491, %if.end.479, %if.end.467, %if.end.455, %if.end.443, %if.end.431, %if.end.419, %if.end.407, %sw.bb.396, %sw.bb.394, %if.end.307, %sw.bb.295, %if.end.291, %if.end.279, %if.end.267, %if.end.255, %if.end.243, %if.end.231, %if.end.219, %if.end.207, %if.end.195, %if.end.183, %sw.bb.172, %sw.bb.170, %if.end.109, %sw.bb.95, %sw.bb.91, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb.87
  br label %while.body

return:                                           ; preds = %if.end.387, %if.end.164, %if.then.108, %sw.bb.84
  %425 = load i32, i32* %retval
  ret i32 %425
}

; Function Attrs: nounwind uwtable
define internal void @smapensure_buffer_stack() #0 {
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
  %call = call i8* @smapalloc(i32 %conv1)
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
  %call12 = call i8* @smaprealloc(i8* %12, i32 %conv11)
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
define %struct.yy_buffer_state* @smap_create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @smapalloc(i32 64)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
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
  %call2 = call i8* @smapalloc(i32 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @smap_init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define internal void @smap_load_buffer_state() #0 {
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
  store i8* %7, i8** @smaptext, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @smapin, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* @yy_hold_char, align 1
  ret void
}

declare i8* @xstrndup(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @yy_include_push(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i32, i32* @include_stack_ptr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %2 = load i64, i64* @yy_buffer_stack_top, align 8
  %3 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, i64 %2
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %4, %cond.true ], [ null, %cond.false ]
  %5 = load i32, i32* @include_stack_ptr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds [10 x %struct.yy_buffer_state*], [10 x %struct.yy_buffer_state*]* @include_stack, i32 0, i64 %idxprom
  store %struct.yy_buffer_state* %cond, %struct.yy_buffer_state** %arrayidx1, align 8
  %6 = load i32, i32* @smaplineno, align 4
  %7 = load i32, i32* @include_stack_ptr, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* @lineno_stack, i32 0, i64 %idxprom2
  store i32 %6, i32* %arrayidx3, align 4
  %8 = load i8*, i8** @yyfilename, align 8
  %9 = load i32, i32* @include_stack_ptr, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @include_stack_ptr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @filename_stack, i32 0, i64 %idxprom4
  store i8* %8, i8** %arrayidx5, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %10 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %10
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** @yyfilename, align 8
  %13 = load i32, i32* @smaplineno, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %12, i32 %13, i8* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %15 = load i8*, i8** %file.addr, align 8
  store i8* %15, i8** @yyfilename, align 8
  %16 = load i8*, i8** @yyfilename, align 8
  %call10 = call %struct._IO_FILE* @xrfopen(i8* %16)
  store %struct._IO_FILE* %call10, %struct._IO_FILE** @smapin, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call11 = call %struct.yy_buffer_state* @smap_create_buffer(%struct._IO_FILE* %17, i32 16384)
  call void @smap_switch_to_buffer(%struct.yy_buffer_state* %call11)
  ret void
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @yy_include_pop() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* @yy_buffer_stack_top, align 8
  %3 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, i64 %2
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.yy_buffer_state* [ %4, %cond.true ], [ null, %cond.false ]
  call void @smap_delete_buffer(%struct.yy_buffer_state* %cond)
  %5 = load i32, i32* @include_stack_ptr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds [10 x i8*], [10 x i8*]* @filename_stack, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx1, align 8
  store i8* %6, i8** @yyfilename, align 8
  %7 = load i32, i32* @include_stack_ptr, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* @lineno_stack, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  store i32 %8, i32* @smaplineno, align 4
  %9 = load i32, i32* @include_stack_ptr, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.yy_buffer_state*], [10 x %struct.yy_buffer_state*]* @include_stack, i32 0, i64 %idxprom4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx5, align 8
  call void @smap_switch_to_buffer(%struct.yy_buffer_state* %10)
  br label %do.body

do.body:                                          ; preds = %cond.end
  %11 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %11
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @yyfilename, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @obstack_octal_grow(%struct.obstack* %o, i8* %str) #3 {
entry:
  %o.addr = alloca %struct.obstack*, align 8
  %str.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  store %struct.obstack* %o, %struct.obstack** %o.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, 48
  store i32 %sub, i32* %value, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %value, align 4
  %mul = mul nsw i32 8, %4
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %add = add nsw i32 %mul, %conv2
  %sub3 = sub nsw i32 %add, 48
  store i32 %sub3, i32* %value, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.obstack*, %struct.obstack** %o.addr, align 8
  store %struct.obstack* %7, %struct.obstack** %__o, align 8
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %8, i32 0, i32 3
  %9 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 4
  %11 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %12, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %13 = load i32, i32* %value, align 4
  %conv5 = trunc i32 %13 to i8
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free6, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %next_free6, align 8
  store i8 %conv5, i8* %15, align 1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @obstack_hexa_grow(%struct.obstack* %o, i8* %str) #3 {
entry:
  %o.addr = alloca %struct.obstack*, align 8
  %str.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  store %struct.obstack* %o, %struct.obstack** %o.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %value, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 102
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %value, align 4
  %mul = mul nsw i32 16, %6
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %add = add nsw i32 %mul, %conv5
  %sub = sub nsw i32 %add, 97
  %add6 = add nsw i32 %sub, 10
  store i32 %add6, i32* %value, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %while.body
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp sge i32 %conv7, 65
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.21

land.lhs.true.10:                                 ; preds = %if.else
  %11 = load i8*, i8** %str.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp sle i32 %conv11, 70
  br i1 %cmp12, label %if.then.14, label %if.else.21

if.then.14:                                       ; preds = %land.lhs.true.10
  %13 = load i32, i32* %value, align 4
  %mul15 = mul nsw i32 16, %13
  %14 = load i8*, i8** %str.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr16, i8** %str.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %add18 = add nsw i32 %mul15, %conv17
  %sub19 = sub nsw i32 %add18, 65
  %add20 = add nsw i32 %sub19, 10
  store i32 %add20, i32* %value, align 4
  br label %if.end

if.else.21:                                       ; preds = %land.lhs.true.10, %if.else
  %16 = load i32, i32* %value, align 4
  %mul22 = mul nsw i32 16, %16
  %17 = load i8*, i8** %str.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr23, i8** %str.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv24 = sext i8 %18 to i32
  %add25 = add nsw i32 %mul22, %conv24
  %sub26 = sub nsw i32 %add25, 48
  store i32 %sub26, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.obstack*, %struct.obstack** %o.addr, align 8
  store %struct.obstack* %19, %struct.obstack** %__o, align 8
  %20 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 4
  %23 = load i8*, i8** %chunk_limit, align 8
  %cmp28 = icmp ugt i8* %add.ptr, %23
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.end
  %24 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %24, i32 1)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %while.end
  %25 = load i32, i32* %value, align 4
  %conv32 = trunc i32 %25 to i8
  %26 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free33, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %next_free33, align 8
  store i8 %conv32, i8* %27, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @smaptext, align 8
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
  %arrayidx4 = getelementptr inbounds [74 x i16], [74 x i16]* @yy_accept, i32 0, i64 %idxprom3
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
  %arrayidx7 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, i8* %yy_c, align 1
  %conv9 = zext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_chk, i32 0, i64 %idxprom10
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, i32* %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_def, i32 0, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, i32* %yy_current_state, align 4
  %20 = load i32, i32* %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 74
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %while.body
  %21 = load i8, i8* %yy_c, align 1
  %conv21 = zext i8 %21 to i32
  %idxprom22 = zext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [29 x i32], [29 x i32]* @yy_meta, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %conv24 = trunc i32 %22 to i8
  store i8 %conv24, i8* %yy_c, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom26
  %24 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %24 to i32
  %25 = load i8, i8* %yy_c, align 1
  %conv29 = zext i8 %25 to i32
  %add30 = add i32 %conv28, %conv29
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_nxt, i32 0, i64 %idxprom31
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
  %arrayidx = getelementptr inbounds [74 x i16], [74 x i16]* @yy_accept, i32 0, i64 %idxprom
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
  %arrayidx2 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 74
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %conv14 = zext i8 %13 to i32
  %idxprom15 = zext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [29 x i32], [29 x i32]* @yy_meta, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %14 to i8
  store i8 %conv17, i8* %yy_c, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [85 x i16], [85 x i16]* @yy_base, i32 0, i64 %idxprom19
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add i32 %conv21, %conv22
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [203 x i16], [203 x i16]* @yy_nxt, i32 0, i64 %idxprom24
  %18 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %18 to i32
  store i32 %conv26, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %cmp27 = icmp eq i32 %19, 73
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
  %4 = load i8*, i8** @smaptext, align 8
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i32 0, i32 0))
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
  %16 = load i8*, i8** @smaptext, align 8
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
  %18 = load i8*, i8** @smaptext, align 8
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
  %call = call i8* @smaprealloc(i8* %57, i32 %add49)
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0))
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
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
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
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call105 = call i32 @ferror(%struct._IO_FILE* %99) #4
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.104, %if.end.101
  %100 = load i64, i64* %n, align 8
  %conv109 = trunc i64 %100 to i32
  store i32 %conv109, i32* @yy_n_chars, align 4
  br label %if.end.134

if.else.110:                                      ; preds = %if.end.68
  %call111 = call i32* @__errno_location() #8
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
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call118 = call i64 @fread(i8* %arrayidx116, i64 1, i64 %conv117, %struct._IO_FILE* %107)
  %conv119 = trunc i64 %call118 to i32
  store i32 %conv119, i32* @yy_n_chars, align 4
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %while.cond.112
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call123 = call i32 @ferror(%struct._IO_FILE* %108) #4
  %tobool124 = icmp ne i32 %call123, 0
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.122, %while.cond.112
  %109 = phi i1 [ false, %while.cond.112 ], [ %tobool124, %land.rhs.122 ]
  br i1 %109, label %while.body.126, label %while.end.133

while.body.126:                                   ; preds = %land.end.125
  %call127 = call i32* @__errno_location() #8
  %110 = load i32, i32* %call127, align 4
  %cmp128 = icmp ne i32 %110, 4
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %while.body.126
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %while.end.133

if.end.131:                                       ; preds = %while.body.126
  %call132 = call i32* @__errno_location() #8
  store i32 0, i32* %call132, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  call void @clearerr(%struct._IO_FILE* %111) #4
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
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  call void @smaprestart(%struct._IO_FILE* %118)
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
  store i8* %arrayidx162, i8** @smaptext, align 8
  %138 = load i32, i32* %ret_val, align 4
  store i32 %138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.else, %if.then.8
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define i32 @smapwrap() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @smaprestart(%struct._IO_FILE* %input_file) #0 {
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
  call void @smapensure_buffer_stack()
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call = call %struct.yy_buffer_state* @smap_create_buffer(%struct._IO_FILE* %4, i32 16384)
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
  call void @smap_init_buffer(%struct.yy_buffer_state* %cond, %struct._IO_FILE* %11)
  call void @smap_load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smap_init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %oerrno = alloca i32, align 4
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %call = call i32* @__errno_location() #8
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %oerrno, align 4
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  call void @smap_flush_buffer(%struct.yy_buffer_state* %1)
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
  %call3 = call i32 @fileno(%struct._IO_FILE* %13) #4
  %call4 = call i32 @isatty(i32 %call3) #4
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
  %call9 = call i32* @__errno_location() #8
  store i32 %15, i32* %call9, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @smap_switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  call void @smapensure_buffer_stack()
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
  call void @smap_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @smapalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @smap_delete_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @smapfree(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %13 = bitcast %struct.yy_buffer_state* %12 to i8*
  call void @smapfree(i8* %13)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @smapfree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @smap_flush_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @smap_load_buffer_state()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @smappush_buffer_state(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @smapensure_buffer_stack()
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
  call void @smap_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @smappop_buffer_state() #0 {
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
  call void @smap_delete_buffer(%struct.yy_buffer_state* %cond)
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
  call void @smap_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %cond.false.13, %cond.true.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @smap_scan_buffer(i8* %base, i32 %size) #0 {
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
  %call = call i8* @smapalloc(i32 64)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
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
  call void @smap_switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @smap_scan_string(i8* %yystr) #0 {
entry:
  %yystr.addr = alloca i8*, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %1) #10
  %conv = trunc i64 %call to i32
  %call1 = call %struct.yy_buffer_state* @smap_scan_bytes(i8* %0, i32 %conv)
  ret %struct.yy_buffer_state* %call1
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @smap_scan_bytes(i8* %yybytes, i32 %_yybytes_len) #0 {
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
  %call = call i8* @smapalloc(i32 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
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
  %call8 = call %struct.yy_buffer_state* @smap_scan_buffer(i8* %15, i32 %16)
  store %struct.yy_buffer_state* %call8, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @smapget_lineno() #0 {
entry:
  %0 = load i32, i32* @smaplineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @smapget_in() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @smapget_out() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @smapout, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define i32 @smapget_leng() #0 {
entry:
  %0 = load i32, i32* @smapleng, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i8* @smapget_text() #0 {
entry:
  %0 = load i8*, i8** @smaptext, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @smapset_lineno(i32 %line_number) #0 {
entry:
  %line_number.addr = alloca i32, align 4
  store i32 %line_number, i32* %line_number.addr, align 4
  %0 = load i32, i32* %line_number.addr, align 4
  store i32 %0, i32* @smaplineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @smapset_in(%struct._IO_FILE* %in_str) #0 {
entry:
  %in_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_str, %struct._IO_FILE** %in_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @smapin, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @smapset_out(%struct._IO_FILE* %out_str) #0 {
entry:
  %out_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out_str, %struct._IO_FILE** %out_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @smapout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @smapget_debug() #0 {
entry:
  %0 = load i32, i32* @smap_flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @smapset_debug(i32 %bdebug) #0 {
entry:
  %bdebug.addr = alloca i32, align 4
  store i32 %bdebug, i32* %bdebug.addr, align 4
  %0 = load i32, i32* %bdebug.addr, align 4
  store i32 %0, i32* @smap_flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @smaplex_destroy() #0 {
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
  call void @smap_delete_buffer(%struct.yy_buffer_state* %cond7)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx8, align 8
  call void @smappop_buffer_state()
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %11 = bitcast %struct.yy_buffer_state** %10 to i8*
  call void @smapfree(i8* %11)
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %call = call i32 @yy_init_globals()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_init_globals() #0 {
entry:
  store i32 1, i32* @smaplineno, align 4
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  store i64 0, i64* @yy_buffer_stack_max, align 8
  store i8* null, i8** @yy_c_buf_p, align 8
  store i32 0, i32* @yy_init, align 4
  store i32 0, i32* @yy_start, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @smapin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @smapout, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @smaprealloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #4
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @sheets_map_load(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %token = alloca i32, align 4
  %key = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* null, i8** %key, align 8
  %0 = load i32, i32* @sheets_map_load.first_time, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @sheets_map_load.first_time, align 4
  %call = call i32 @_obstack_begin(%struct.obstack* @string_stack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %filename.addr, align 8
  call void @yy_open(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %call1 = call i32 @smaplex()
  store i32 %call1, i32* %token, align 4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %token, align 4
  switch i32 %2, label %sw.epilog [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.3
    i32 12, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i8*, i8** @token_val, align 8
  store i8* %3, i8** %key, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %4 = load i8*, i8** %key, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.3
  %5 = load i8*, i8** @yyfilename, align 8
  %6 = load i32, i32* @smaplineno, align 4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #4
  %7 = load i8*, i8** @token_val, align 8
  %call7 = call i8* @quotearg(i8* %7)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %5, i32 %6, i8* %call6, i8* %call7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %sw.bb.3
  %8 = load i8*, i8** @token_val, align 8
  %9 = load i8, i8* @insensitive_p, align 1
  %tobool9 = trunc i8 %9 to i1
  %10 = load i8*, i8** %key, align 8
  call void @sheets_map_add(i8* %8, i32 0, i1 zeroext %tobool9, i8* %10)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  %11 = load i8*, i8** %key, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %sw.bb.10
  %12 = load i8*, i8** @yyfilename, align 8
  %13 = load i32, i32* @smaplineno, align 4
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #4
  %14 = load i8*, i8** @token_val, align 8
  %call14 = call i8* @quotearg(i8* %14)
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %12, i32 %13, i8* %call13, i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %sw.bb.10
  %15 = load i8*, i8** @token_val, align 8
  %16 = load i8, i8* @insensitive_p, align 1
  %tobool16 = trunc i8 %16 to i1
  %17 = load i8*, i8** %key, align 8
  call void @sheets_map_add(i8* %15, i32 1, i1 zeroext %tobool16, i8* %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.15, %if.end.8, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @yy_close()
  ret void
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

declare i8* @xmalloc(i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @yy_open(i8* %file) #3 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @xstrdup(i8* %0)
  store i8* %call, i8** @yyfilename, align 8
  %1 = load i8*, i8** @yyfilename, align 8
  %call1 = call %struct._IO_FILE* @xrfopen(i8* %1)
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @smapin, align 8
  store i32 0, i32* @include_stack_ptr, align 4
  ret void
}

declare i8* @quotearg(i8*) #1

declare void @sheets_map_add(i8*, i32, i1 zeroext, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @yy_close() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @smapin, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load i8*, i8** @yyfilename, align 8
  call void @free(i8* %1) #4
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare void @error(i32, i32, i8*, ...) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
