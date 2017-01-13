; ModuleID = './plug-ins/imagemap/imap_ncsa_lex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%union.YYSTYPE = type { double }

@ncsa_in = global %struct._IO_FILE* null, align 8
@ncsa_out = global %struct._IO_FILE* null, align 8
@ncsa_lineno = global i32 1, align 4
@ncsa__flex_debug = global i32 0, align 4
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 4, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 6, i32 7, i32 8, i32 9, i32 1, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 12, i32 1, i32 13, i32 14, i32 15, i32 16, i32 1, i32 17, i32 18, i32 1, i32 1, i32 19, i32 1, i32 20, i32 21, i32 22, i32 1, i32 23, i32 24, i32 25, i32 26, i32 1, i32 1, i32 1, i32 27, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 28, i32 1, i32 29, i32 30, i32 31, i32 32, i32 1, i32 33, i32 34, i32 1, i32 1, i32 35, i32 1, i32 36, i32 37, i32 38, i32 1, i32 39, i32 40, i32 41, i32 42, i32 1, i32 1, i32 1, i32 43, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [76 x i16] [i16 0, i16 11, i16 11, i16 0, i16 0, i16 5, i16 5, i16 15, i16 13, i16 12, i16 12, i16 4, i16 11, i16 11, i16 11, i16 13, i16 13, i16 11, i16 13, i16 13, i16 10, i16 14, i16 5, i16 12, i16 0, i16 11, i16 11, i16 11, i16 11, i16 0, i16 0, i16 11, i16 11, i16 0, i16 0, i16 10, i16 5, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 8, i16 6, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7, i16 0, i16 0, i16 0, i16 0, i16 9, i16 0, i16 0, i16 2, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [81 x i16] [i16 0, i16 0, i16 38, i16 4, i16 14, i16 62, i16 61, i16 58, i16 178, i16 16, i16 22, i16 49, i16 18, i16 35, i16 47, i16 2, i16 28, i16 64, i16 34, i16 48, i16 0, i16 178, i16 0, i16 32, i16 61, i16 70, i16 72, i16 82, i16 83, i16 60, i16 68, i16 34, i16 27, i16 75, i16 82, i16 0, i16 0, i16 70, i16 82, i16 86, i16 92, i16 94, i16 80, i16 83, i16 84, i16 91, i16 91, i16 98, i16 92, i16 178, i16 178, i16 102, i16 113, i16 108, i16 113, i16 110, i16 109, i16 113, i16 122, i16 178, i16 113, i16 116, i16 122, i16 21, i16 178, i16 15, i16 119, i16 178, i16 178, i16 122, i16 130, i16 128, i16 130, i16 1, i16 178, i16 178, i16 166, i16 169, i16 172, i16 0, i16 175], align 16
@yy_chk = internal constant [222 x i16] [i16 0, i16 79, i16 1, i16 1, i16 1, i16 0, i16 3, i16 3, i16 1, i16 1, i16 1, i16 3, i16 73, i16 1, i16 1, i16 1, i16 4, i16 4, i16 9, i16 9, i16 15, i16 4, i16 1, i16 1, i16 10, i16 10, i16 65, i16 12, i16 12, i16 1, i16 1, i16 1, i16 63, i16 12, i16 23, i16 23, i16 15, i16 32, i16 1, i16 1, i16 2, i16 2, i16 2, i16 16, i16 31, i16 13, i16 2, i16 2, i16 2, i16 12, i16 13, i16 2, i16 2, i16 2, i16 11, i16 18, i16 14, i16 14, i16 7, i16 16, i16 2, i16 2, i16 14, i16 19, i16 6, i16 5, i16 13, i16 2, i16 2, i16 2, i16 17, i16 18, i16 17, i16 24, i16 17, i16 24, i16 2, i16 2, i16 14, i16 19, i16 25, i16 26, i16 26, i16 29, i16 30, i16 25, i16 24, i16 26, i16 27, i16 24, i16 27, i16 24, i16 27, i16 28, i16 33, i16 34, i16 37, i16 38, i16 28, i16 29, i16 30, i16 25, i16 24, i16 26, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 33, i16 34, i16 37, i16 38, i16 28, i16 45, i16 46, i16 47, i16 48, i16 51, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 52, i16 53, i16 54, i16 55, i16 56, i16 45, i16 46, i16 47, i16 48, i16 51, i16 57, i16 58, i16 60, i16 61, i16 62, i16 66, i16 52, i16 53, i16 54, i16 55, i16 56, i16 69, i16 70, i16 71, i16 72, i16 0, i16 57, i16 58, i16 60, i16 61, i16 62, i16 66, i16 0, i16 0, i16 0, i16 0, i16 0, i16 69, i16 70, i16 71, i16 72, i16 76, i16 76, i16 76, i16 77, i16 77, i16 77, i16 78, i16 78, i16 78, i16 80, i16 80, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75], align 16
@yy_def = internal constant [81 x i16] [i16 0, i16 76, i16 76, i16 77, i16 77, i16 78, i16 78, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 79, i16 75, i16 80, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 79, i16 80, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 0, i16 75, i16 75, i16 75, i16 75, i16 75], align 16
@yy_meta = internal constant [44 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_nxt = internal constant [222 x i16] [i16 0, i16 35, i16 9, i16 10, i16 11, i16 75, i16 21, i16 21, i16 12, i16 13, i16 14, i16 21, i16 74, i16 15, i16 16, i16 17, i16 21, i16 21, i16 23, i16 23, i16 29, i16 21, i16 18, i16 19, i16 23, i16 23, i16 68, i16 25, i16 26, i16 15, i16 16, i16 17, i16 67, i16 27, i16 23, i16 23, i16 29, i16 32, i16 18, i16 19, i16 9, i16 10, i16 11, i16 30, i16 32, i16 28, i16 12, i16 13, i16 14, i16 27, i16 27, i16 15, i16 16, i16 17, i16 24, i16 33, i16 25, i16 26, i16 75, i16 30, i16 18, i16 19, i16 27, i16 34, i16 21, i16 21, i16 27, i16 15, i16 16, i16 17, i16 31, i16 33, i16 31, i16 37, i16 32, i16 38, i16 18, i16 19, i16 27, i16 34, i16 28, i16 25, i16 26, i16 40, i16 41, i16 27, i16 39, i16 27, i16 31, i16 37, i16 31, i16 38, i16 32, i16 28, i16 42, i16 43, i16 44, i16 45, i16 27, i16 40, i16 41, i16 27, i16 39, i16 27, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 42, i16 43, i16 44, i16 45, i16 27, i16 52, i16 53, i16 54, i16 55, i16 56, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 57, i16 58, i16 59, i16 60, i16 61, i16 52, i16 53, i16 54, i16 55, i16 56, i16 62, i16 63, i16 64, i16 65, i16 66, i16 69, i16 57, i16 58, i16 59, i16 60, i16 61, i16 70, i16 71, i16 72, i16 73, i16 75, i16 62, i16 63, i16 64, i16 65, i16 66, i16 69, i16 75, i16 75, i16 75, i16 75, i16 75, i16 70, i16 71, i16 72, i16 73, i16 8, i16 8, i16 8, i16 20, i16 20, i16 20, i16 22, i16 22, i16 22, i16 36, i16 36, i16 7, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75], align 16
@ncsa_text = global i8* null, align 8
@ncsa_leng = global i64 0, align 8
@ncsa_lval = external global %union.YYSTYPE, align 8
@yy_n_chars = internal global i64 0, align 8
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"out of dynamic memory in ncsa__create_buffer()\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"out of dynamic memory in ncsa__scan_buffer()\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in ncsa__scan_bytes()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bad buffer in ncsa__scan_bytes()\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"out of dynamic memory in yy_get_next_buffer()\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"out of dynamic memory in ncsa_ensure_buffer_stack()\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ncsa_lex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_bp = alloca i8*, align 8
  %yy_act = alloca i32, align 4
  %yy_c = alloca i8, align 1
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
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @ncsa_in, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_out, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @ncsa_out, align 8
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
  call void @ncsa_ensure_buffer_stack()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call = call %struct.yy_buffer_state* @ncsa__create_buffer(%struct._IO_FILE* %10, i32 16384)
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx12 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.false, %cond.true
  call void @ncsa__load_buffer_state()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.14, %sw.epilog.136
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

yy_match:                                         ; preds = %sw.bb.124, %if.then.115, %while.body
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
  %arrayidx18 = getelementptr inbounds [76 x i16], [76 x i16]* @yy_accept, i32 0, i64 %idxprom17
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
  %arrayidx24 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom23
  %26 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %26 to i32
  %27 = load i8, i8* %yy_c, align 1
  %conv26 = zext i8 %27 to i32
  %add = add nsw i32 %conv25, %conv26
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_chk, i32 0, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  %29 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv29, %29
  br i1 %cmp, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.22
  %30 = load i32, i32* %yy_current_state, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_def, i32 0, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  store i32 %conv34, i32* %yy_current_state, align 4
  %32 = load i32, i32* %yy_current_state, align 4
  %cmp35 = icmp sge i32 %32, 76
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %while.body.31
  %33 = load i8, i8* %yy_c, align 1
  %conv38 = zext i8 %33 to i32
  %idxprom39 = zext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds [44 x i32], [44 x i32]* @yy_meta, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %conv41 = trunc i32 %34 to i8
  store i8 %conv41, i8* %yy_c, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %while.body.31
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  %35 = load i32, i32* %yy_current_state, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom43
  %36 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %36 to i32
  %37 = load i8, i8* %yy_c, align 1
  %conv46 = zext i8 %37 to i32
  %add47 = add i32 %conv45, %conv46
  %idxprom48 = zext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_nxt, i32 0, i64 %idxprom48
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
  %arrayidx52 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom51
  %41 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %41 to i32
  %cmp54 = icmp ne i32 %conv53, 178
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.129, %if.else, %sw.bb, %do.end
  %42 = load i32, i32* %yy_current_state, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [76 x i16], [76 x i16]* @yy_accept, i32 0, i64 %idxprom56
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
  %arrayidx63 = getelementptr inbounds [76 x i16], [76 x i16]* @yy_accept, i32 0, i64 %idxprom62
  %48 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %48 to i32
  store i32 %conv64, i32* %yy_act, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %yy_find_action
  %49 = load i8*, i8** %yy_bp, align 8
  store i8* %49, i8** @ncsa_text, align 8
  %50 = load i8*, i8** %yy_cp, align 8
  %51 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* @ncsa_leng, align 8
  %52 = load i8*, i8** %yy_cp, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* @yy_hold_char, align 1
  %54 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %yy_cp, align 8
  store i8* %55, i8** @yy_c_buf_p, align 8
  br label %do_action

do_action:                                        ; preds = %sw.bb.119, %if.end.65
  %56 = load i32, i32* %yy_act, align 4
  switch i32 %56, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.66
    i32 2, label %sw.bb.67
    i32 3, label %sw.bb.68
    i32 4, label %sw.bb.69
    i32 5, label %sw.bb.70
    i32 6, label %sw.bb.72
    i32 7, label %sw.bb.73
    i32 8, label %sw.bb.74
    i32 9, label %sw.bb.75
    i32 10, label %sw.bb.76
    i32 11, label %sw.bb.78
    i32 12, label %sw.bb.80
    i32 13, label %sw.bb.81
    i32 14, label %sw.bb.83
    i32 16, label %sw.bb.91
    i32 17, label %sw.bb.91
    i32 18, label %sw.bb.91
    i32 15, label %sw.bb.92
  ]

sw.bb:                                            ; preds = %do_action
  %57 = load i8, i8* @yy_hold_char, align 1
  %58 = load i8*, i8** %yy_cp, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %59, i8** %yy_cp, align 8
  %60 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %60, i32* %yy_current_state, align 4
  br label %yy_find_action

sw.bb.66:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  store i32 262, i32* %retval
  br label %return

sw.bb.67:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  store i32 263, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  store i32 264, i32* %retval
  br label %return

sw.bb.69:                                         ; preds = %do_action
  store i32 5, i32* @yy_start, align 4
  store i32 265, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %do_action
  store i32 1, i32* @yy_start, align 4
  %61 = load i8*, i8** @ncsa_text, align 8
  %62 = load i64, i64* @ncsa_leng, align 8
  %call71 = call noalias i8* @g_strndup(i8* %61, i64 %62)
  store i8* %call71, i8** bitcast (%union.YYSTYPE* @ncsa_lval to i8**), align 8
  store i32 268, i32* %retval
  br label %return

sw.bb.72:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  store i32 258, i32* %retval
  br label %return

sw.bb.73:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  store i32 260, i32* %retval
  br label %return

sw.bb.74:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  store i32 259, i32* %retval
  br label %return

sw.bb.75:                                         ; preds = %do_action
  store i32 3, i32* @yy_start, align 4
  store i32 261, i32* %retval
  br label %return

sw.bb.76:                                         ; preds = %do_action
  store i32 1, i32* @yy_start, align 4
  %63 = load i8*, i8** @ncsa_text, align 8
  %64 = load i64, i64* @ncsa_leng, align 8
  %call77 = call noalias i8* @g_strndup(i8* %63, i64 %64)
  store i8* %call77, i8** bitcast (%union.YYSTYPE* @ncsa_lval to i8**), align 8
  store i32 267, i32* %retval
  br label %return

sw.bb.78:                                         ; preds = %do_action
  %65 = load i8*, i8** @ncsa_text, align 8
  %call79 = call double @g_ascii_strtod(i8* %65, i8** null)
  store double %call79, double* getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @ncsa_lval, i32 0, i32 0), align 8
  store i32 266, i32* %retval
  br label %return

sw.bb.80:                                         ; preds = %do_action
  br label %sw.epilog.136

sw.bb.81:                                         ; preds = %do_action
  %66 = load i8*, i8** @ncsa_text, align 8
  %67 = load i8, i8* %66, align 1
  %conv82 = sext i8 %67 to i32
  store i32 %conv82, i32* %retval
  br label %return

sw.bb.83:                                         ; preds = %do_action
  br label %do.body.84

do.body.84:                                       ; preds = %sw.bb.83
  %68 = load i8*, i8** @ncsa_text, align 8
  %69 = load i64, i64* @ncsa_leng, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_out, align 8
  %call85 = call i64 @fwrite(i8* %68, i64 %69, i64 1, %struct._IO_FILE* %70)
  %tobool86 = icmp ne i64 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.body.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %do.body.84
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.88
  br label %sw.epilog.136

sw.bb.91:                                         ; preds = %do_action, %do_action, %do_action
  store i32 0, i32* %retval
  br label %return

sw.bb.92:                                         ; preds = %do_action
  %71 = load i8*, i8** %yy_cp, align 8
  %72 = load i8*, i8** @ncsa_text, align 8
  %sub.ptr.lhs.cast93 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast94 = ptrtoint i8* %72 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %conv96 = trunc i64 %sub.ptr.sub95 to i32
  %sub = sub nsw i32 %conv96, 1
  store i32 %sub, i32* %yy_amount_of_matched_text, align 4
  %73 = load i8, i8* @yy_hold_char, align 1
  %74 = load i8*, i8** %yy_cp, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i64, i64* @yy_buffer_stack_top, align 8
  %76 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx97 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %76, i64 %75
  %77 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx97, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %77, i32 0, i32 11
  %78 = load i32, i32* %yy_buffer_status, align 4
  %cmp98 = icmp eq i32 %78, 0
  br i1 %cmp98, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %sw.bb.92
  %79 = load i64, i64* @yy_buffer_stack_top, align 8
  %80 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx101 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %80, i64 %79
  %81 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx101, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %81, i32 0, i32 4
  %82 = load i64, i64* %yy_n_chars, align 8
  store i64 %82, i64* @yy_n_chars, align 8
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %84 = load i64, i64* @yy_buffer_stack_top, align 8
  %85 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx102 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %85, i64 %84
  %86 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx102, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %86, i32 0, i32 0
  store %struct._IO_FILE* %83, %struct._IO_FILE** %yy_input_file, align 8
  %87 = load i64, i64* @yy_buffer_stack_top, align 8
  %88 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx103 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %88, i64 %87
  %89 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx103, align 8
  %yy_buffer_status104 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %89, i32 0, i32 11
  store i32 1, i32* %yy_buffer_status104, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %sw.bb.92
  %90 = load i8*, i8** @yy_c_buf_p, align 8
  %91 = load i64, i64* @yy_n_chars, align 8
  %92 = load i64, i64* @yy_buffer_stack_top, align 8
  %93 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx106 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %93, i64 %92
  %94 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx106, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %94, i32 0, i32 1
  %95 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %95, i64 %91
  %cmp108 = icmp ule i8* %90, %arrayidx107
  br i1 %cmp108, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.end.105
  %96 = load i8*, i8** @ncsa_text, align 8
  %97 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext = sext i32 %97 to i64
  %add.ptr = getelementptr inbounds i8, i8* %96, i64 %idx.ext
  store i8* %add.ptr, i8** @yy_c_buf_p, align 8
  %call111 = call i32 @yy_get_previous_state()
  store i32 %call111, i32* %yy_current_state, align 4
  %98 = load i32, i32* %yy_current_state, align 4
  %call112 = call i32 @yy_try_NUL_trans(i32 %98)
  store i32 %call112, i32* %yy_next_state, align 4
  %99 = load i8*, i8** @ncsa_text, align 8
  %add.ptr113 = getelementptr inbounds i8, i8* %99, i64 0
  store i8* %add.ptr113, i8** %yy_bp, align 8
  %100 = load i32, i32* %yy_next_state, align 4
  %tobool114 = icmp ne i32 %100, 0
  br i1 %tobool114, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.then.110
  %101 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr116, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr116, i8** %yy_cp, align 8
  %102 = load i32, i32* %yy_next_state, align 4
  store i32 %102, i32* %yy_current_state, align 4
  br label %yy_match

if.else:                                          ; preds = %if.then.110
  %103 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %103, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.117:                                      ; preds = %if.end.105
  %call118 = call i32 @yy_get_next_buffer()
  switch i32 %call118, label %sw.epilog [
    i32 1, label %sw.bb.119
    i32 0, label %sw.bb.124
    i32 2, label %sw.bb.129
  ]

sw.bb.119:                                        ; preds = %if.else.117
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %104 = load i8*, i8** @ncsa_text, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %104, i64 0
  store i8* %add.ptr120, i8** @yy_c_buf_p, align 8
  %105 = load i32, i32* @yy_start, align 4
  %sub121 = sub nsw i32 %105, 1
  %div = sdiv i32 %sub121, 2
  %add122 = add nsw i32 15, %div
  %add123 = add nsw i32 %add122, 1
  store i32 %add123, i32* %yy_act, align 4
  br label %do_action

sw.bb.124:                                        ; preds = %if.else.117
  %106 = load i8*, i8** @ncsa_text, align 8
  %107 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext125 = sext i32 %107 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %106, i64 %idx.ext125
  store i8* %add.ptr126, i8** @yy_c_buf_p, align 8
  %call127 = call i32 @yy_get_previous_state()
  store i32 %call127, i32* %yy_current_state, align 4
  %108 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %108, i8** %yy_cp, align 8
  %109 = load i8*, i8** @ncsa_text, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %109, i64 0
  store i8* %add.ptr128, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.129:                                        ; preds = %if.else.117
  %110 = load i64, i64* @yy_n_chars, align 8
  %111 = load i64, i64* @yy_buffer_stack_top, align 8
  %112 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx130 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %112, i64 %111
  %113 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx130, align 8
  %yy_ch_buf131 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %113, i32 0, i32 1
  %114 = load i8*, i8** %yy_ch_buf131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %114, i64 %110
  store i8* %arrayidx132, i8** @yy_c_buf_p, align 8
  %call133 = call i32 @yy_get_previous_state()
  store i32 %call133, i32* %yy_current_state, align 4
  %115 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %115, i8** %yy_cp, align 8
  %116 = load i8*, i8** @ncsa_text, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %116, i64 0
  store i8* %add.ptr134, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.117
  br label %if.end.135

if.end.135:                                       ; preds = %sw.epilog
  br label %sw.epilog.136

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog.136

sw.epilog.136:                                    ; preds = %sw.default, %if.end.135, %do.end.90, %sw.bb.80
  br label %while.body

return:                                           ; preds = %sw.bb.91, %sw.bb.81, %sw.bb.78, %sw.bb.76, %sw.bb.75, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb.67, %sw.bb.66
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define internal void @ncsa_ensure_buffer_stack() #0 {
entry:
  %num_to_alloc = alloca i64, align 8
  %grow_size = alloca i32, align 4
  %0 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool = icmp ne %struct.yy_buffer_state** %0, null
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  store i64 1, i64* %num_to_alloc, align 8
  %1 = load i64, i64* %num_to_alloc, align 8
  %mul = mul i64 %1, 8
  %call = call i8* @ncsa_alloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.yy_buffer_state**
  store %struct.yy_buffer_state** %2, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %3 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool1 = icmp ne %struct.yy_buffer_state** %3, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @yy_fatal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %5 = bitcast %struct.yy_buffer_state** %4 to i8*
  %6 = load i64, i64* %num_to_alloc, align 8
  %mul3 = mul i64 %6, 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %mul3, i32 8, i1 false)
  %7 = load i64, i64* %num_to_alloc, align 8
  store i64 %7, i64* @yy_buffer_stack_max, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  br label %if.end.13

if.end.4:                                         ; preds = %entry
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load i64, i64* @yy_buffer_stack_max, align 8
  %sub = sub i64 %9, 1
  %cmp = icmp uge i64 %8, %sub
  br i1 %cmp, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end.4
  store i32 8, i32* %grow_size, align 4
  %10 = load i64, i64* @yy_buffer_stack_max, align 8
  %11 = load i32, i32* %grow_size, align 4
  %conv = sext i32 %11 to i64
  %add = add i64 %10, %conv
  store i64 %add, i64* %num_to_alloc, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %13 = bitcast %struct.yy_buffer_state** %12 to i8*
  %14 = load i64, i64* %num_to_alloc, align 8
  %mul6 = mul i64 %14, 8
  %call7 = call i8* @ncsa_realloc(i8* %13, i64 %mul6)
  %15 = bitcast i8* %call7 to %struct.yy_buffer_state**
  store %struct.yy_buffer_state** %15, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %16 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %tobool8 = icmp ne %struct.yy_buffer_state** %16, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.5
  call void @yy_fatal_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  %17 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %18 = load i64, i64* @yy_buffer_stack_max, align 8
  %add.ptr = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %17, i64 %18
  %19 = bitcast %struct.yy_buffer_state** %add.ptr to i8*
  %20 = load i32, i32* %grow_size, align 4
  %conv11 = sext i32 %20 to i64
  %mul12 = mul i64 %conv11, 8
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul12, i32 8, i1 false)
  %21 = load i64, i64* %num_to_alloc, align 8
  store i64 %21, i64* @yy_buffer_stack_max, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.end.10, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ncsa__create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @ncsa_alloc(i64 72)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 3
  store i64 %conv, i64* %yy_buf_size, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 3
  %5 = load i64, i64* %yy_buf_size1, align 8
  %add = add i64 %5, 2
  %call2 = call i8* @ncsa_alloc(i64 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @ncsa__init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define internal void @ncsa__load_buffer_state() #0 {
entry:
  %0 = load i64, i64* @yy_buffer_stack_top, align 8
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %0
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 4
  %3 = load i64, i64* %yy_n_chars, align 8
  store i64 %3, i64* @yy_n_chars, align 8
  %4 = load i64, i64* @yy_buffer_stack_top, align 8
  %5 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx1 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, i64 %4
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx1, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 2
  %7 = load i8*, i8** %yy_buf_pos, align 8
  store i8* %7, i8** @yy_c_buf_p, align 8
  store i8* %7, i8** @ncsa_text, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @ncsa_in, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* @yy_hold_char, align 1
  ret void
}

declare noalias i8* @g_strndup(i8*, i64) #1

declare double @g_ascii_strtod(i8*, i8**) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @ncsa_text, align 8
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
  %arrayidx4 = getelementptr inbounds [76 x i16], [76 x i16]* @yy_accept, i32 0, i64 %idxprom3
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
  %arrayidx7 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, i8* %yy_c, align 1
  %conv9 = zext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_chk, i32 0, i64 %idxprom10
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, i32* %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_def, i32 0, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, i32* %yy_current_state, align 4
  %20 = load i32, i32* %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 76
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %while.body
  %21 = load i8, i8* %yy_c, align 1
  %conv21 = zext i8 %21 to i32
  %idxprom22 = zext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [44 x i32], [44 x i32]* @yy_meta, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %conv24 = trunc i32 %22 to i8
  store i8 %conv24, i8* %yy_c, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom26
  %24 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %24 to i32
  %25 = load i8, i8* %yy_c, align 1
  %conv29 = zext i8 %25 to i32
  %add30 = add i32 %conv28, %conv29
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_nxt, i32 0, i64 %idxprom31
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
  %arrayidx = getelementptr inbounds [76 x i16], [76 x i16]* @yy_accept, i32 0, i64 %idxprom
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
  %arrayidx2 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 76
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %conv14 = zext i8 %13 to i32
  %idxprom15 = zext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [44 x i32], [44 x i32]* @yy_meta, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %14 to i8
  store i8 %conv17, i8* %yy_c, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [81 x i16], [81 x i16]* @yy_base, i32 0, i64 %idxprom19
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add i32 %conv21, %conv22
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [222 x i16], [222 x i16]* @yy_nxt, i32 0, i64 %idxprom24
  %18 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %18 to i32
  store i32 %conv26, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %cmp27 = icmp eq i32 %19, 75
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
  %num_to_read = alloca i64, align 8
  %b = alloca %struct.yy_buffer_state*, align 8
  %yy_c_buf_p_offset = alloca i32, align 4
  %new_size = alloca i64, align 8
  %c = alloca i32, align 4
  %n = alloca i64, align 8
  %new_size153 = alloca i64, align 8
  %0 = load i64, i64* @yy_buffer_stack_top, align 8
  %1 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %1, i64 %0
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load i8*, i8** @ncsa_text, align 8
  store i8* %4, i8** %source, align 8
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load i64, i64* @yy_n_chars, align 8
  %add = add i64 %6, 1
  %7 = load i64, i64* @yy_buffer_stack_top, align 8
  %8 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx1 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, i64 %7
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx1, align 8
  %yy_ch_buf2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 1
  %10 = load i8*, i8** %yy_ch_buf2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %add
  %cmp = icmp ugt i8* %5, %arrayidx3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i32 0, i32 0))
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
  %16 = load i8*, i8** @ncsa_text, align 8
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
  %18 = load i8*, i8** @ncsa_text, align 8
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
  store i64 0, i64* @yy_n_chars, align 8
  %29 = load i64, i64* @yy_buffer_stack_top, align 8
  %30 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx21 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %30, i64 %29
  %31 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx21, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %31, i32 0, i32 4
  store i64 0, i64* %yy_n_chars, align 8
  br label %if.end.133

if.else.22:                                       ; preds = %for.end
  %32 = load i64, i64* @yy_buffer_stack_top, align 8
  %33 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx23 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %33, i64 %32
  %34 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx23, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %34, i32 0, i32 3
  %35 = load i64, i64* %yy_buf_size, align 8
  %36 = load i32, i32* %number_to_move, align 4
  %conv24 = sext i32 %36 to i64
  %sub25 = sub i64 %35, %conv24
  %sub26 = sub i64 %sub25, 1
  store i64 %sub26, i64* %num_to_read, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %if.else.22
  %37 = load i64, i64* %num_to_read, align 8
  %cmp27 = icmp ule i64 %37, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i64, i64* @yy_buffer_stack_top, align 8
  %39 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx29 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %39, i64 %38
  %40 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx29, align 8
  store %struct.yy_buffer_state* %40, %struct.yy_buffer_state** %b, align 8
  %41 = load i8*, i8** @yy_c_buf_p, align 8
  %42 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf30 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %42, i32 0, i32 1
  %43 = load i8*, i8** %yy_ch_buf30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast32 = ptrtoint i8* %43 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %conv34 = trunc i64 %sub.ptr.sub33 to i32
  store i32 %conv34, i32* %yy_c_buf_p_offset, align 4
  %44 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %44, i32 0, i32 5
  %45 = load i32, i32* %yy_is_our_buffer, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then.35, label %if.else.51

if.then.35:                                       ; preds = %while.body
  %46 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size36 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %46, i32 0, i32 3
  %47 = load i64, i64* %yy_buf_size36, align 8
  %mul = mul i64 %47, 2
  store i64 %mul, i64* %new_size, align 8
  %48 = load i64, i64* %new_size, align 8
  %cmp37 = icmp ule i64 %48, 0
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.then.35
  %49 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size40 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %49, i32 0, i32 3
  %50 = load i64, i64* %yy_buf_size40, align 8
  %div = udiv i64 %50, 8
  %51 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size41 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %51, i32 0, i32 3
  %52 = load i64, i64* %yy_buf_size41, align 8
  %add42 = add i64 %52, %div
  store i64 %add42, i64* %yy_buf_size41, align 8
  br label %if.end.46

if.else.43:                                       ; preds = %if.then.35
  %53 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size44 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %53, i32 0, i32 3
  %54 = load i64, i64* %yy_buf_size44, align 8
  %mul45 = mul i64 %54, 2
  store i64 %mul45, i64* %yy_buf_size44, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.39
  %55 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %55, i32 0, i32 1
  %56 = load i8*, i8** %yy_ch_buf47, align 8
  %57 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size48 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %57, i32 0, i32 3
  %58 = load i64, i64* %yy_buf_size48, align 8
  %add49 = add i64 %58, 2
  %call = call i8* @ncsa_realloc(i8* %56, i64 %add49)
  %59 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %59, i32 0, i32 1
  store i8* %call, i8** %yy_ch_buf50, align 8
  br label %if.end.53

if.else.51:                                       ; preds = %while.body
  %60 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf52 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %60, i32 0, i32 1
  store i8* null, i8** %yy_ch_buf52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.46
  %61 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf54 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %61, i32 0, i32 1
  %62 = load i8*, i8** %yy_ch_buf54, align 8
  %tobool55 = icmp ne i8* %62, null
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.53
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %63 = load i32, i32* %yy_c_buf_p_offset, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf58 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %64, i32 0, i32 1
  %65 = load i8*, i8** %yy_ch_buf58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %65, i64 %idxprom
  store i8* %arrayidx59, i8** @yy_c_buf_p, align 8
  %66 = load i64, i64* @yy_buffer_stack_top, align 8
  %67 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx60 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %67, i64 %66
  %68 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx60, align 8
  %yy_buf_size61 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %68, i32 0, i32 3
  %69 = load i64, i64* %yy_buf_size61, align 8
  %70 = load i32, i32* %number_to_move, align 4
  %conv62 = sext i32 %70 to i64
  %sub63 = sub i64 %69, %conv62
  %sub64 = sub i64 %sub63, 1
  store i64 %sub64, i64* %num_to_read, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load i64, i64* %num_to_read, align 8
  %cmp65 = icmp ugt i64 %71, 8192
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %while.end
  store i64 8192, i64* %num_to_read, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %while.end
  %72 = load i64, i64* @yy_buffer_stack_top, align 8
  %73 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx69 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %73, i64 %72
  %74 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx69, align 8
  %yy_is_interactive = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %74, i32 0, i32 6
  %75 = load i32, i32* %yy_is_interactive, align 4
  %tobool70 = icmp ne i32 %75, 0
  br i1 %tobool70, label %if.then.71, label %if.else.108

if.then.71:                                       ; preds = %if.end.68
  store i32 42, i32* %c, align 4
  store i64 0, i64* %n, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.87, %if.then.71
  %76 = load i64, i64* %n, align 8
  %77 = load i64, i64* %num_to_read, align 8
  %cmp73 = icmp ult i64 %76, %77
  br i1 %cmp73, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.72
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call75 = call i32 @_IO_getc(%struct._IO_FILE* %78)
  store i32 %call75, i32* %c, align 4
  %cmp76 = icmp ne i32 %call75, -1
  br i1 %cmp76, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %79 = load i32, i32* %c, align 4
  %cmp78 = icmp ne i32 %79, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond.72
  %80 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond.72 ], [ %cmp78, %land.rhs ]
  br i1 %80, label %for.body.80, label %for.end.89

for.body.80:                                      ; preds = %land.end
  %81 = load i32, i32* %c, align 4
  %conv81 = trunc i32 %81 to i8
  %82 = load i64, i64* %n, align 8
  %83 = load i32, i32* %number_to_move, align 4
  %idxprom82 = sext i32 %83 to i64
  %84 = load i64, i64* @yy_buffer_stack_top, align 8
  %85 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx83 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %85, i64 %84
  %86 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx83, align 8
  %yy_ch_buf84 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %86, i32 0, i32 1
  %87 = load i8*, i8** %yy_ch_buf84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %87, i64 %idxprom82
  %arrayidx86 = getelementptr inbounds i8, i8* %arrayidx85, i64 %82
  store i8 %conv81, i8* %arrayidx86, align 1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.80
  %88 = load i64, i64* %n, align 8
  %inc88 = add i64 %88, 1
  store i64 %inc88, i64* %n, align 8
  br label %for.cond.72

for.end.89:                                       ; preds = %land.end
  %89 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %89, 10
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %for.end.89
  %90 = load i32, i32* %c, align 4
  %conv93 = trunc i32 %90 to i8
  %91 = load i64, i64* %n, align 8
  %inc94 = add i64 %91, 1
  store i64 %inc94, i64* %n, align 8
  %92 = load i32, i32* %number_to_move, align 4
  %idxprom95 = sext i32 %92 to i64
  %93 = load i64, i64* @yy_buffer_stack_top, align 8
  %94 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx96 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %94, i64 %93
  %95 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx96, align 8
  %yy_ch_buf97 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %95, i32 0, i32 1
  %96 = load i8*, i8** %yy_ch_buf97, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %96, i64 %idxprom95
  %arrayidx99 = getelementptr inbounds i8, i8* %arrayidx98, i64 %91
  store i8 %conv93, i8* %arrayidx99, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.92, %for.end.89
  %97 = load i32, i32* %c, align 4
  %cmp101 = icmp eq i32 %97, -1
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.107

land.lhs.true.103:                                ; preds = %if.end.100
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call104 = call i32 @ferror(%struct._IO_FILE* %98) #5
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.103
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %land.lhs.true.103, %if.end.100
  %99 = load i64, i64* %n, align 8
  store i64 %99, i64* @yy_n_chars, align 8
  br label %if.end.130

if.else.108:                                      ; preds = %if.end.68
  %call109 = call i32* @__errno_location() #7
  store i32 0, i32* %call109, align 4
  br label %while.cond.110

while.cond.110:                                   ; preds = %if.end.127, %if.else.108
  %100 = load i32, i32* %number_to_move, align 4
  %idxprom111 = sext i32 %100 to i64
  %101 = load i64, i64* @yy_buffer_stack_top, align 8
  %102 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx112 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %102, i64 %101
  %103 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx112, align 8
  %yy_ch_buf113 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %103, i32 0, i32 1
  %104 = load i8*, i8** %yy_ch_buf113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %104, i64 %idxprom111
  %105 = load i64, i64* %num_to_read, align 8
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call115 = call i64 @fread(i8* %arrayidx114, i64 1, i64 %105, %struct._IO_FILE* %106)
  store i64 %call115, i64* @yy_n_chars, align 8
  %cmp116 = icmp eq i64 %call115, 0
  br i1 %cmp116, label %land.rhs.118, label %land.end.121

land.rhs.118:                                     ; preds = %while.cond.110
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call119 = call i32 @ferror(%struct._IO_FILE* %107) #5
  %tobool120 = icmp ne i32 %call119, 0
  br label %land.end.121

land.end.121:                                     ; preds = %land.rhs.118, %while.cond.110
  %108 = phi i1 [ false, %while.cond.110 ], [ %tobool120, %land.rhs.118 ]
  br i1 %108, label %while.body.122, label %while.end.129

while.body.122:                                   ; preds = %land.end.121
  %call123 = call i32* @__errno_location() #7
  %109 = load i32, i32* %call123, align 4
  %cmp124 = icmp ne i32 %109, 4
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %while.body.122
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end.129

if.end.127:                                       ; preds = %while.body.122
  %call128 = call i32* @__errno_location() #7
  store i32 0, i32* %call128, align 4
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  call void @clearerr(%struct._IO_FILE* %110) #5
  br label %while.cond.110

while.end.129:                                    ; preds = %if.then.126, %land.end.121
  br label %if.end.130

if.end.130:                                       ; preds = %while.end.129, %if.end.107
  %111 = load i64, i64* @yy_n_chars, align 8
  %112 = load i64, i64* @yy_buffer_stack_top, align 8
  %113 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx131 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %113, i64 %112
  %114 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx131, align 8
  %yy_n_chars132 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %114, i32 0, i32 4
  store i64 %111, i64* %yy_n_chars132, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.130, %if.then.20
  %115 = load i64, i64* @yy_n_chars, align 8
  %cmp134 = icmp eq i64 %115, 0
  br i1 %cmp134, label %if.then.136, label %if.else.144

if.then.136:                                      ; preds = %if.end.133
  %116 = load i32, i32* %number_to_move, align 4
  %cmp137 = icmp eq i32 %116, 0
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.then.136
  store i32 1, i32* %ret_val, align 4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  call void @ncsa_restart(%struct._IO_FILE* %117)
  br label %if.end.143

if.else.140:                                      ; preds = %if.then.136
  store i32 2, i32* %ret_val, align 4
  %118 = load i64, i64* @yy_buffer_stack_top, align 8
  %119 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx141 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %119, i64 %118
  %120 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx141, align 8
  %yy_buffer_status142 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %120, i32 0, i32 11
  store i32 2, i32* %yy_buffer_status142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %if.end.145

if.else.144:                                      ; preds = %if.end.133
  store i32 0, i32* %ret_val, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.144, %if.end.143
  %121 = load i64, i64* @yy_n_chars, align 8
  %122 = load i32, i32* %number_to_move, align 4
  %conv146 = sext i32 %122 to i64
  %add147 = add i64 %121, %conv146
  %123 = load i64, i64* @yy_buffer_stack_top, align 8
  %124 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx148 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %124, i64 %123
  %125 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx148, align 8
  %yy_buf_size149 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %125, i32 0, i32 3
  %126 = load i64, i64* %yy_buf_size149, align 8
  %cmp150 = icmp ugt i64 %add147, %126
  br i1 %cmp150, label %if.then.152, label %if.end.167

if.then.152:                                      ; preds = %if.end.145
  %127 = load i64, i64* @yy_n_chars, align 8
  %128 = load i32, i32* %number_to_move, align 4
  %conv154 = sext i32 %128 to i64
  %add155 = add i64 %127, %conv154
  %129 = load i64, i64* @yy_n_chars, align 8
  %shr = lshr i64 %129, 1
  %add156 = add i64 %add155, %shr
  store i64 %add156, i64* %new_size153, align 8
  %130 = load i64, i64* @yy_buffer_stack_top, align 8
  %131 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx157 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %131, i64 %130
  %132 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx157, align 8
  %yy_ch_buf158 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %132, i32 0, i32 1
  %133 = load i8*, i8** %yy_ch_buf158, align 8
  %134 = load i64, i64* %new_size153, align 8
  %call159 = call i8* @ncsa_realloc(i8* %133, i64 %134)
  %135 = load i64, i64* @yy_buffer_stack_top, align 8
  %136 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx160 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %136, i64 %135
  %137 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx160, align 8
  %yy_ch_buf161 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %137, i32 0, i32 1
  store i8* %call159, i8** %yy_ch_buf161, align 8
  %138 = load i64, i64* @yy_buffer_stack_top, align 8
  %139 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx162 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %139, i64 %138
  %140 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx162, align 8
  %yy_ch_buf163 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %140, i32 0, i32 1
  %141 = load i8*, i8** %yy_ch_buf163, align 8
  %tobool164 = icmp ne i8* %141, null
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.then.152
  call void @yy_fatal_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.152
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.145
  %142 = load i32, i32* %number_to_move, align 4
  %conv168 = sext i32 %142 to i64
  %143 = load i64, i64* @yy_n_chars, align 8
  %add169 = add i64 %143, %conv168
  store i64 %add169, i64* @yy_n_chars, align 8
  %144 = load i64, i64* @yy_n_chars, align 8
  %145 = load i64, i64* @yy_buffer_stack_top, align 8
  %146 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx170 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %146, i64 %145
  %147 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx170, align 8
  %yy_ch_buf171 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %147, i32 0, i32 1
  %148 = load i8*, i8** %yy_ch_buf171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %148, i64 %144
  store i8 0, i8* %arrayidx172, align 1
  %149 = load i64, i64* @yy_n_chars, align 8
  %add173 = add i64 %149, 1
  %150 = load i64, i64* @yy_buffer_stack_top, align 8
  %151 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx174 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %151, i64 %150
  %152 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx174, align 8
  %yy_ch_buf175 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %152, i32 0, i32 1
  %153 = load i8*, i8** %yy_ch_buf175, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %153, i64 %add173
  store i8 0, i8* %arrayidx176, align 1
  %154 = load i64, i64* @yy_buffer_stack_top, align 8
  %155 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx177 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %155, i64 %154
  %156 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx177, align 8
  %yy_ch_buf178 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %156, i32 0, i32 1
  %157 = load i8*, i8** %yy_ch_buf178, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %157, i64 0
  store i8* %arrayidx179, i8** @ncsa_text, align 8
  %158 = load i32, i32* %ret_val, align 4
  store i32 %158, i32* %retval
  br label %return

return:                                           ; preds = %if.end.167, %if.else, %if.then.8
  %159 = load i32, i32* %retval
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_restart(%struct._IO_FILE* %input_file) #0 {
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
  call void @ncsa_ensure_buffer_stack()
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  %call = call %struct.yy_buffer_state* @ncsa__create_buffer(%struct._IO_FILE* %4, i32 16384)
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
  call void @ncsa__init_buffer(%struct.yy_buffer_state* %cond, %struct._IO_FILE* %11)
  call void @ncsa__load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ncsa__init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
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
  call void @ncsa__flush_buffer(%struct.yy_buffer_state* %1)
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
  %call3 = call i32 @fileno(%struct._IO_FILE* %13) #5
  %call4 = call i32 @isatty(i32 %call3) #5
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
define void @ncsa__switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  call void @ncsa_ensure_buffer_stack()
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
  %15 = load i64, i64* @yy_n_chars, align 8
  %16 = load i64, i64* @yy_buffer_stack_top, align 8
  %17 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %17, i64 %16
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx8, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 4
  store i64 %15, i64* %yy_n_chars, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %cond.false.5, %cond.true.2
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %20 = load i64, i64* @yy_buffer_stack_top, align 8
  %21 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx10 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %21, i64 %20
  store %struct.yy_buffer_state* %19, %struct.yy_buffer_state** %arrayidx10, align 8
  call void @ncsa__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ncsa_alloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @ncsa__delete_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @ncsa_free(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %13 = bitcast %struct.yy_buffer_state* %12 to i8*
  call void @ncsa_free(i8* %13)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa__flush_buffer(%struct.yy_buffer_state* %b) #0 {
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
  store i64 0, i64* %yy_n_chars, align 8
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
  call void @ncsa__load_buffer_state()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_push_buffer_state(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @ncsa_ensure_buffer_stack()
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
  %11 = load i64, i64* @yy_n_chars, align 8
  %12 = load i64, i64* @yy_buffer_stack_top, align 8
  %13 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %13, i64 %12
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx4, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 4
  store i64 %11, i64* %yy_n_chars, align 8
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
  call void @ncsa__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_pop_buffer_state() #0 {
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
  call void @ncsa__delete_buffer(%struct.yy_buffer_state* %cond)
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
  call void @ncsa__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %cond.false.13, %cond.true.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ncsa__scan_buffer(i8* %base, i64 %size) #0 {
entry:
  %retval = alloca %struct.yy_buffer_state*, align 8
  %base.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %b = alloca %struct.yy_buffer_state*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 2
  %2 = load i8*, i8** %base.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i64, i64* %size.addr, align 8
  %sub4 = sub i64 %4, 1
  %5 = load i8*, i8** %base.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %sub4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call = call i8* @ncsa_alloc(i64 72)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %9 = load i64, i64* %size.addr, align 8
  %sub11 = sub i64 %9, 2
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 3
  store i64 %sub11, i64* %yy_buf_size, align 8
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
  %yy_buf_size12 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %16, i32 0, i32 3
  %17 = load i64, i64* %yy_buf_size12, align 8
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 4
  store i64 %17, i64* %yy_n_chars, align 8
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
  call void @ncsa__switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ncsa__scan_string(i8* %yystr) #0 {
entry:
  %yystr.addr = alloca i8*, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %call1 = call %struct.yy_buffer_state* @ncsa__scan_bytes(i8* %0, i64 %call)
  ret %struct.yy_buffer_state* %call1
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ncsa__scan_bytes(i8* %yybytes, i64 %_yybytes_len) #0 {
entry:
  %yybytes.addr = alloca i8*, align 8
  %_yybytes_len.addr = alloca i64, align 8
  %b = alloca %struct.yy_buffer_state*, align 8
  %buf = alloca i8*, align 8
  %n = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %yybytes, i8** %yybytes.addr, align 8
  store i64 %_yybytes_len, i64* %_yybytes_len.addr, align 8
  %0 = load i64, i64* %_yybytes_len.addr, align 8
  %add = add i64 %0, 2
  store i64 %add, i64* %n, align 8
  %1 = load i64, i64* %n, align 8
  %call = call i8* @ncsa_alloc(i64 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %_yybytes_len.addr, align 8
  %cmp = icmp ult i64 %conv, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %yybytes.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i8*, i8** %buf, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  store i8 %7, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %_yybytes_len.addr, align 8
  %add4 = add i64 %11, 1
  %12 = load i8*, i8** %buf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %add4
  store i8 0, i8* %arrayidx5, align 1
  %13 = load i64, i64* %_yybytes_len.addr, align 8
  %14 = load i8*, i8** %buf, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 0, i8* %arrayidx6, align 1
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %n, align 8
  %call7 = call %struct.yy_buffer_state* @ncsa__scan_buffer(i8* %15, i64 %16)
  store %struct.yy_buffer_state* %call7, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool8 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ncsa_get_lineno() #0 {
entry:
  %0 = load i32, i32* @ncsa_lineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @ncsa_get_in() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_in, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @ncsa_get_out() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ncsa_out, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define i64 @ncsa_get_leng() #0 {
entry:
  %0 = load i64, i64* @ncsa_leng, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i8* @ncsa_get_text() #0 {
entry:
  %0 = load i8*, i8** @ncsa_text, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @ncsa_set_lineno(i32 %line_number) #0 {
entry:
  %line_number.addr = alloca i32, align 4
  store i32 %line_number, i32* %line_number.addr, align 4
  %0 = load i32, i32* %line_number.addr, align 4
  store i32 %0, i32* @ncsa_lineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_set_in(%struct._IO_FILE* %in_str) #0 {
entry:
  %in_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_str, %struct._IO_FILE** %in_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @ncsa_in, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ncsa_set_out(%struct._IO_FILE* %out_str) #0 {
entry:
  %out_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out_str, %struct._IO_FILE** %out_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @ncsa_out, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ncsa_get_debug() #0 {
entry:
  %0 = load i32, i32* @ncsa__flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @ncsa_set_debug(i32 %bdebug) #0 {
entry:
  %bdebug.addr = alloca i32, align 4
  store i32 %bdebug, i32* %bdebug.addr, align 4
  %0 = load i32, i32* %bdebug.addr, align 4
  store i32 %0, i32* @ncsa__flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ncsa_lex_destroy() #0 {
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
  call void @ncsa__delete_buffer(%struct.yy_buffer_state* %cond7)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx8, align 8
  call void @ncsa_pop_buffer_state()
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %11 = bitcast %struct.yy_buffer_state** %10 to i8*
  call void @ncsa_free(i8* %11)
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %call = call i32 @yy_init_globals()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_init_globals() #0 {
entry:
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  store i64 0, i64* @yy_buffer_stack_max, align 8
  store i8* null, i8** @yy_c_buf_p, align 8
  store i32 0, i32* @yy_init, align 4
  store i32 0, i32* @yy_start, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @ncsa_in, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @ncsa_out, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @ncsa_realloc(i8* %ptr, i64 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #5
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
