; ModuleID = './MultiSource.Benchmarks.Ptrdist/15.bc.scan.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32 }
%struct.YYSTYPE = type { i8*, i8, i32, %struct.arg_list* }
%struct.arg_list = type { i32, %struct.arg_list* }

@yyin = global %struct._IO_FILE* null, align 8
@yyout = global %struct._IO_FILE* null, align 8
@yy_init = internal global i32 1, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_current_buffer = internal global %struct.yy_buffer_state* null, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\04\05\01\01\06\07\01\08\09\0A\0B\0C\0D\0E\0F\10\10\10\10\10\10\10\10\10\10\01\11\12\13\14\01\01\15\15\15\15\15\15\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\16\17\18\19\1A\01\1B\1C\1D\1E\1F !\22#$%&'()*+,-./$0$1$234\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal constant [144 x i16] [i16 0, i16 0, i16 0, i16 40, i16 38, i16 33, i16 31, i16 25, i16 38, i16 26, i16 38, i16 22, i16 26, i16 22, i16 22, i16 38, i16 26, i16 37, i16 29, i16 27, i16 29, i16 38, i16 22, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 38, i16 33, i16 29, i16 0, i16 36, i16 27, i16 23, i16 30, i16 37, i16 0, i16 34, i16 37, i16 37, i16 0, i16 28, i16 32, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 7, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 24, i16 37, i16 0, i16 0, i16 37, i16 0, i16 35, i16 35, i16 35, i16 35, i16 35, i16 6, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 13, i16 35, i16 35, i16 35, i16 14, i16 16, i16 35, i16 17, i16 35, i16 35, i16 35, i16 35, i16 3, i16 15, i16 35, i16 35, i16 9, i16 35, i16 35, i16 2, i16 35, i16 35, i16 11, i16 35, i16 35, i16 12, i16 20, i16 35, i16 10, i16 35, i16 8, i16 35, i16 1, i16 4, i16 21, i16 5, i16 35, i16 35, i16 35, i16 19, i16 18, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [146 x i16] [i16 0, i16 0, i16 0, i16 193, i16 194, i16 190, i16 194, i16 172, i16 185, i16 170, i16 181, i16 194, i16 168, i16 42, i16 41, i16 41, i16 46, i16 52, i16 167, i16 61, i16 166, i16 181, i16 164, i16 135, i16 137, i16 139, i16 148, i16 140, i16 136, i16 0, i16 149, i16 27, i16 50, i16 147, i16 130, i16 126, i16 141, i16 40, i16 36, i16 120, i16 168, i16 194, i16 164, i16 194, i16 194, i16 194, i16 194, i16 66, i16 165, i16 194, i16 72, i16 76, i16 164, i16 194, i16 194, i16 0, i16 120, i16 134, i16 124, i16 131, i16 117, i16 117, i16 122, i16 132, i16 0, i16 113, i16 117, i16 117, i16 128, i16 119, i16 118, i16 52, i16 125, i16 107, i16 106, i16 114, i16 194, i16 80, i16 145, i16 84, i16 88, i16 144, i16 105, i16 118, i16 98, i16 108, i16 111, i16 0, i16 95, i16 95, i16 93, i16 105, i16 102, i16 91, i16 95, i16 88, i16 103, i16 85, i16 93, i16 84, i16 85, i16 90, i16 0, i16 90, i16 91, i16 85, i16 0, i16 0, i16 93, i16 0, i16 77, i16 76, i16 90, i16 74, i16 0, i16 0, i16 75, i16 87, i16 0, i16 90, i16 85, i16 0, i16 75, i16 83, i16 0, i16 76, i16 63, i16 0, i16 0, i16 66, i16 0, i16 62, i16 0, i16 47, i16 0, i16 0, i16 0, i16 0, i16 45, i16 53, i16 29, i16 0, i16 0, i16 194, i16 111, i16 56], align 16
@yy_chk = internal constant [247 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 13, i16 14, i16 31, i16 16, i16 15, i16 145, i16 31, i16 14, i16 13, i16 15, i16 38, i16 15, i16 16, i16 17, i16 19, i16 17, i16 37, i16 38, i16 19, i16 19, i16 17, i16 19, i16 17, i16 19, i16 32, i16 140, i16 71, i16 19, i16 32, i16 47, i16 37, i16 139, i16 32, i16 19, i16 47, i16 50, i16 47, i16 51, i16 138, i16 51, i16 50, i16 133, i16 50, i16 77, i16 51, i16 71, i16 51, i16 79, i16 77, i16 131, i16 77, i16 80, i16 79, i16 129, i16 79, i16 126, i16 80, i16 125, i16 80, i16 144, i16 144, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 113, i16 112, i16 111, i16 110, i16 108, i16 105, i16 104, i16 103, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 78, i16 75, i16 74, i16 73, i16 72, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 52, i16 48, i16 42, i16 40, i16 39, i16 36, i16 35, i16 34, i16 33, i16 30, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 18, i16 12, i16 10, i16 9, i16 8, i16 7, i16 5, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yy_def = internal constant [146 x i16] [i16 0, i16 143, i16 1, i16 143, i16 143, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 0, i16 143, i16 143], align 16
@yy_meta = internal constant [53 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01", align 16
@yy_nxt = internal constant [247 x i16] [i16 0, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 11, i16 12, i16 13, i16 11, i16 14, i16 15, i16 16, i16 17, i16 11, i16 18, i16 19, i16 20, i16 17, i16 11, i16 21, i16 11, i16 22, i16 4, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 29, i16 29, i16 32, i16 29, i16 29, i16 33, i16 34, i16 35, i16 36, i16 37, i16 29, i16 29, i16 38, i16 29, i16 11, i16 39, i16 11, i16 46, i16 46, i16 63, i16 49, i16 47, i16 55, i16 64, i16 44, i16 44, i16 47, i16 74, i16 48, i16 44, i16 50, i16 53, i16 51, i16 72, i16 75, i16 53, i16 53, i16 51, i16 53, i16 52, i16 53, i16 65, i16 142, i16 96, i16 41, i16 66, i16 77, i16 73, i16 141, i16 67, i16 53, i16 77, i16 80, i16 78, i16 50, i16 140, i16 51, i16 80, i16 139, i16 81, i16 77, i16 51, i16 97, i16 52, i16 47, i16 77, i16 138, i16 78, i16 80, i16 47, i16 137, i16 48, i16 136, i16 80, i16 135, i16 81, i16 42, i16 42, i16 134, i16 133, i16 132, i16 131, i16 130, i16 129, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 80, i16 77, i16 101, i16 100, i16 99, i16 98, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 51, i16 79, i16 43, i16 40, i16 76, i16 71, i16 70, i16 69, i16 68, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 44, i16 54, i16 41, i16 41, i16 44, i16 45, i16 44, i16 43, i16 41, i16 40, i16 143, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yytext = common global i8* null, align 8
@yyleng = common global i32 0, align 4
@yylval = external global %struct.YYSTYPE, align 8
@line_no = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"EOF encountered in a comment.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NUL character in string.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"illegal character: ^%c\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"illegal character: \5C%3d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"illegal character: %s\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"read() in flex scanner failed\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unexpected last match in input()\00", align 1

; Function Attrs: nounwind uwtable
define i32 @yylex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_bp = alloca i8*, align 8
  %yy_act = alloca i32, align 4
  %yy_c = alloca i8, align 1
  %c = alloca i32, align 4
  %look = alloca i8*, align 8
  %count = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %len = alloca i32, align 4
  %yy_amount_of_matched_text = alloca i32, align 4
  %yy_next_state = alloca i32, align 4
  %0 = load i32, i32* @yy_init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @yy_start, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* @yy_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @yyin, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @yyout, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %6, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %7, %struct._IO_FILE* %8)
  br label %if.end.11

if.else:                                          ; preds = %if.end.8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call = call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %9, i32 16384)
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  call void @yy_load_buffer_state()
  store i32 0, i32* @yy_init, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.12, %sw.epilog.287
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %10, i8** %yy_cp, align 8
  %11 = load i8, i8* @yy_hold_char, align 1
  %12 = load i8*, i8** %yy_cp, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** %yy_cp, align 8
  store i8* %13, i8** %yy_bp, align 8
  %14 = load i32, i32* @yy_start, align 4
  store i32 %14, i32* %yy_current_state, align 4
  br label %yy_match

yy_match:                                         ; preds = %sw.bb.270, %if.then.249, %while.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %yy_match
  %15 = load i8*, i8** %yy_cp, align 8
  %16 = load i8, i8* %15, align 1
  %idxprom = sext i8 %16 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  store i8 %17, i8* %yy_c, align 1
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i32 0, i64 %idxprom13
  %19 = load i16, i16* %arrayidx14, align 2
  %tobool15 = icmp ne i16 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body
  %20 = load i32, i32* %yy_current_state, align 4
  store i32 %20, i32* @yy_last_accepting_state, align 4
  %21 = load i8*, i8** %yy_cp, align 8
  store i8* %21, i8** @yy_last_accepting_cpos, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %do.body
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.35, %if.end.17
  %22 = load i32, i32* %yy_current_state, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom19
  %23 = load i16, i16* %arrayidx20, align 2
  %conv = sext i16 %23 to i32
  %24 = load i8, i8* %yy_c, align 1
  %conv21 = sext i8 %24 to i32
  %add = add nsw i32 %conv, %conv21
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i32 0, i64 %idxprom22
  %25 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %25 to i32
  %26 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv24, %26
  br i1 %cmp, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %while.cond.18
  %27 = load i32, i32* %yy_current_state, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i32 0, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  store i32 %conv29, i32* %yy_current_state, align 4
  %29 = load i32, i32* %yy_current_state, align 4
  %cmp30 = icmp sge i32 %29, 144
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %while.body.26
  %30 = load i8, i8* %yy_c, align 1
  %idxprom33 = sext i8 %30 to i64
  %arrayidx34 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i32 0, i64 %idxprom33
  %31 = load i8, i8* %arrayidx34, align 1
  store i8 %31, i8* %yy_c, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %while.body.26
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  %32 = load i32, i32* %yy_current_state, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom36
  %33 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %33 to i32
  %34 = load i8, i8* %yy_c, align 1
  %conv39 = sext i8 %34 to i32
  %add40 = add nsw i32 %conv38, %conv39
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i32 0, i64 %idxprom41
  %35 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %35 to i32
  store i32 %conv43, i32* %yy_current_state, align 4
  %36 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %37 = load i32, i32* %yy_current_state, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %38 to i32
  %cmp47 = icmp ne i32 %conv46, 194
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.275, %if.else.251, %sw.bb, %do.end
  %39 = load i32, i32* %yy_current_state, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i32 0, i64 %idxprom49
  %40 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %40 to i32
  store i32 %conv51, i32* %yy_act, align 4
  %41 = load i8*, i8** %yy_bp, align 8
  store i8* %41, i8** @yytext, align 8
  %42 = load i8*, i8** %yy_cp, align 8
  %43 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv52 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv52, i32* @yyleng, align 4
  %44 = load i8*, i8** %yy_cp, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* @yy_hold_char, align 1
  %46 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %yy_cp, align 8
  store i8* %47, i8** @yy_c_buf_p, align 8
  br label %do_action

do_action:                                        ; preds = %if.then.257, %yy_find_action
  %48 = load i32, i32* %yy_act, align 4
  switch i32 %48, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.53
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.55
    i32 4, label %sw.bb.56
    i32 5, label %sw.bb.57
    i32 6, label %sw.bb.58
    i32 7, label %sw.bb.59
    i32 8, label %sw.bb.60
    i32 9, label %sw.bb.61
    i32 10, label %sw.bb.62
    i32 11, label %sw.bb.63
    i32 12, label %sw.bb.64
    i32 13, label %sw.bb.65
    i32 14, label %sw.bb.66
    i32 15, label %sw.bb.67
    i32 16, label %sw.bb.68
    i32 17, label %sw.bb.69
    i32 18, label %sw.bb.70
    i32 19, label %sw.bb.71
    i32 20, label %sw.bb.72
    i32 21, label %sw.bb.73
    i32 22, label %sw.bb.74
    i32 23, label %sw.bb.78
    i32 24, label %sw.bb.79
    i32 25, label %sw.bb.80
    i32 26, label %sw.bb.81
    i32 27, label %sw.bb.83
    i32 28, label %sw.bb.85
    i32 29, label %sw.bb.93
    i32 30, label %sw.bb.95
    i32 31, label %sw.bb.97
    i32 32, label %sw.bb.98
    i32 33, label %sw.bb.100
    i32 34, label %sw.bb.101
    i32 35, label %sw.bb.139
    i32 36, label %sw.bb.141
    i32 37, label %sw.bb.165
    i32 38, label %sw.bb.209
    i32 39, label %sw.bb.229
    i32 41, label %sw.bb.232
    i32 40, label %sw.bb.233
  ]

sw.bb:                                            ; preds = %do_action
  %49 = load i8, i8* @yy_hold_char, align 1
  %50 = load i8*, i8** %yy_cp, align 8
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %51, i8** %yy_cp, align 8
  %52 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %52, i32* %yy_current_state, align 4
  br label %yy_find_action

sw.bb.53:                                         ; preds = %do_action
  store i32 268, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %do_action
  store i32 269, i32* %retval
  br label %return

sw.bb.55:                                         ; preds = %do_action
  store i32 270, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %do_action
  store i32 271, i32* %retval
  br label %return

sw.bb.57:                                         ; preds = %do_action
  store i32 272, i32* %retval
  br label %return

sw.bb.58:                                         ; preds = %do_action
  store i32 273, i32* %retval
  br label %return

sw.bb.59:                                         ; preds = %do_action
  store i32 274, i32* %retval
  br label %return

sw.bb.60:                                         ; preds = %do_action
  store i32 275, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %do_action
  store i32 276, i32* %retval
  br label %return

sw.bb.62:                                         ; preds = %do_action
  store i32 278, i32* %retval
  br label %return

sw.bb.63:                                         ; preds = %do_action
  store i32 279, i32* %retval
  br label %return

sw.bb.64:                                         ; preds = %do_action
  store i32 280, i32* %retval
  br label %return

sw.bb.65:                                         ; preds = %do_action
  store i32 281, i32* %retval
  br label %return

sw.bb.66:                                         ; preds = %do_action
  store i32 277, i32* %retval
  br label %return

sw.bb.67:                                         ; preds = %do_action
  store i32 282, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %do_action
  store i32 284, i32* %retval
  br label %return

sw.bb.69:                                         ; preds = %do_action
  store i32 285, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %do_action
  store i32 283, i32* %retval
  br label %return

sw.bb.71:                                         ; preds = %do_action
  store i32 286, i32* %retval
  br label %return

sw.bb.72:                                         ; preds = %do_action
  store i32 287, i32* %retval
  br label %return

sw.bb.73:                                         ; preds = %do_action
  store i32 288, i32* %retval
  br label %return

sw.bb.74:                                         ; preds = %do_action
  %53 = load i8*, i8** @yytext, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx75, align 1
  store i8 %54, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 1
  %55 = load i8*, i8** @yytext, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %56 to i32
  store i32 %conv77, i32* %retval
  br label %return

sw.bb.78:                                         ; preds = %do_action
  store i32 258, i32* %retval
  br label %return

sw.bb.79:                                         ; preds = %do_action
  store i32 259, i32* %retval
  br label %return

sw.bb.80:                                         ; preds = %do_action
  store i32 260, i32* %retval
  br label %return

sw.bb.81:                                         ; preds = %do_action
  %57 = load i8*, i8** @yytext, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx82, align 1
  store i8 %58, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 1
  store i32 264, i32* %retval
  br label %return

sw.bb.83:                                         ; preds = %do_action
  %59 = load i8*, i8** @yytext, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx84, align 1
  store i8 %60, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 1
  store i32 265, i32* %retval
  br label %return

sw.bb.85:                                         ; preds = %do_action
  store i8 61, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 1
  br label %do.body.86

do.body.86:                                       ; preds = %sw.bb.85
  %61 = load i8, i8* @yy_hold_char, align 1
  %62 = load i8*, i8** %yy_cp, align 8
  store i8 %61, i8* %62, align 1
  %63 = load i8*, i8** %yy_bp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %add.ptr, i8** %yy_cp, align 8
  store i8* %add.ptr, i8** @yy_c_buf_p, align 8
  %64 = load i8*, i8** %yy_bp, align 8
  store i8* %64, i8** @yytext, align 8
  %65 = load i8*, i8** %yy_cp, align 8
  %66 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast87 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %66 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  store i32 %conv90, i32* @yyleng, align 4
  %67 = load i8*, i8** %yy_cp, align 8
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* @yy_hold_char, align 1
  %69 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %yy_cp, align 8
  store i8* %70, i8** @yy_c_buf_p, align 8
  br label %do.end.92

do.end.92:                                        ; preds = %do.body.86
  store i32 265, i32* %retval
  br label %return

sw.bb.93:                                         ; preds = %do_action
  %71 = load i8*, i8** @yytext, align 8
  %call94 = call i8* @strcopyof(i8* %71)
  store i8* %call94, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 266, i32* %retval
  br label %return

sw.bb.95:                                         ; preds = %do_action
  %72 = load i8*, i8** @yytext, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx96, align 1
  store i8 %73, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 1
  store i32 267, i32* %retval
  br label %return

sw.bb.97:                                         ; preds = %do_action
  %74 = load i32, i32* @line_no, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* @line_no, align 4
  store i32 257, i32* %retval
  br label %return

sw.bb.98:                                         ; preds = %do_action
  %75 = load i32, i32* @line_no, align 4
  %inc99 = add nsw i32 %75, 1
  store i32 %inc99, i32* @line_no, align 4
  br label %sw.epilog.287

sw.bb.100:                                        ; preds = %do_action
  br label %sw.epilog.287

sw.bb.101:                                        ; preds = %do_action
  br label %for.cond

for.cond:                                         ; preds = %if.end.138, %sw.bb.101
  br label %while.cond.102

while.cond.102:                                   ; preds = %if.end.113, %for.cond
  %call103 = call i32 @input()
  store i32 %call103, i32* %c, align 4
  %cmp104 = icmp ne i32 %call103, 42
  br i1 %cmp104, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.102
  %76 = load i32, i32* %c, align 4
  %cmp106 = icmp ne i32 %76, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.102
  %77 = phi i1 [ false, %while.cond.102 ], [ %cmp106, %land.rhs ]
  br i1 %77, label %while.body.108, label %while.end.114

while.body.108:                                   ; preds = %land.end
  %78 = load i32, i32* %c, align 4
  %cmp109 = icmp eq i32 %78, 10
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %while.body.108
  %79 = load i32, i32* @line_no, align 4
  %inc112 = add nsw i32 %79, 1
  store i32 %inc112, i32* @line_no, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %while.body.108
  br label %while.cond.102

while.end.114:                                    ; preds = %land.end
  %80 = load i32, i32* %c, align 4
  %cmp115 = icmp eq i32 %80, 42
  br i1 %cmp115, label %if.then.117, label %if.end.133

if.then.117:                                      ; preds = %while.end.114
  br label %while.cond.118

while.cond.118:                                   ; preds = %while.body.122, %if.then.117
  %call119 = call i32 @input()
  store i32 %call119, i32* %c, align 4
  %cmp120 = icmp eq i32 %call119, 42
  br i1 %cmp120, label %while.body.122, label %while.end.123

while.body.122:                                   ; preds = %while.cond.118
  br label %while.cond.118

while.end.123:                                    ; preds = %while.cond.118
  %81 = load i32, i32* %c, align 4
  %cmp124 = icmp eq i32 %81, 47
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %while.end.123
  br label %for.end

if.end.127:                                       ; preds = %while.end.123
  %82 = load i32, i32* %c, align 4
  %cmp128 = icmp eq i32 %82, 10
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.127
  %83 = load i32, i32* @line_no, align 4
  %inc131 = add nsw i32 %83, 1
  store i32 %inc131, i32* @line_no, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %while.end.114
  %84 = load i32, i32* %c, align 4
  %cmp134 = icmp eq i32 %84, -1
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.133
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  br label %for.end

if.end.138:                                       ; preds = %if.end.133
  br label %for.cond

for.end:                                          ; preds = %if.then.136, %if.then.126
  br label %sw.epilog.287

sw.bb.139:                                        ; preds = %do_action
  %86 = load i8*, i8** @yytext, align 8
  %call140 = call i8* @strcopyof(i8* %86)
  store i8* %call140, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 262, i32* %retval
  br label %return

sw.bb.141:                                        ; preds = %do_action
  store i32 0, i32* %count, align 4
  %87 = load i8*, i8** @yytext, align 8
  %call142 = call i8* @strcopyof(i8* %87)
  store i8* %call142, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  %88 = load i8*, i8** @yytext, align 8
  store i8* %88, i8** %look, align 8
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc, %sw.bb.141
  %89 = load i8*, i8** %look, align 8
  %90 = load i8, i8* %89, align 1
  %conv144 = sext i8 %90 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %for.body, label %for.end.160

for.body:                                         ; preds = %for.cond.143
  %91 = load i8*, i8** %look, align 8
  %92 = load i8, i8* %91, align 1
  %conv147 = sext i8 %92 to i32
  %cmp148 = icmp eq i32 %conv147, 10
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %for.body
  %93 = load i32, i32* @line_no, align 4
  %inc151 = add nsw i32 %93, 1
  store i32 %inc151, i32* @line_no, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %for.body
  %94 = load i8*, i8** %look, align 8
  %95 = load i8, i8* %94, align 1
  %conv153 = sext i8 %95 to i32
  %cmp154 = icmp eq i32 %conv153, 34
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.152
  %96 = load i32, i32* %count, align 4
  %inc157 = add nsw i32 %96, 1
  store i32 %inc157, i32* %count, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.152
  br label %for.inc

for.inc:                                          ; preds = %if.end.158
  %97 = load i8*, i8** %look, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr159, i8** %look, align 8
  br label %for.cond.143

for.end.160:                                      ; preds = %for.cond.143
  %98 = load i32, i32* %count, align 4
  %cmp161 = icmp ne i32 %98, 2
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %for.end.160
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %for.end.160
  store i32 261, i32* %retval
  br label %return

sw.bb.165:                                        ; preds = %do_action
  %99 = load i8*, i8** @yytext, align 8
  %call166 = call i64 @strlen(i8* %99) #6
  %conv167 = trunc i64 %call166 to i32
  store i32 %conv167, i32* %len, align 4
  %100 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %100, 1
  %idxprom168 = sext i32 %sub to i64
  %101 = load i8*, i8** @yytext, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %101, i64 %idxprom168
  %102 = load i8, i8* %arrayidx169, align 1
  %conv170 = sext i8 %102 to i32
  %cmp171 = icmp eq i32 %conv170, 46
  br i1 %cmp171, label %if.then.173, label %if.end.177

if.then.173:                                      ; preds = %sw.bb.165
  %103 = load i32, i32* %len, align 4
  %sub174 = sub nsw i32 %103, 1
  %idxprom175 = sext i32 %sub174 to i64
  %104 = load i8*, i8** @yytext, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %104, i64 %idxprom175
  store i8 0, i8* %arrayidx176, align 1
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.173, %sw.bb.165
  %105 = load i8*, i8** @yytext, align 8
  store i8* %105, i8** %src, align 8
  %106 = load i8*, i8** @yytext, align 8
  store i8* %106, i8** %dst, align 8
  br label %while.cond.178

while.cond.178:                                   ; preds = %while.body.182, %if.end.177
  %107 = load i8*, i8** %src, align 8
  %108 = load i8, i8* %107, align 1
  %conv179 = sext i8 %108 to i32
  %cmp180 = icmp eq i32 %conv179, 48
  br i1 %cmp180, label %while.body.182, label %while.end.184

while.body.182:                                   ; preds = %while.cond.178
  %109 = load i8*, i8** %src, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr183, i8** %src, align 8
  br label %while.cond.178

while.end.184:                                    ; preds = %while.cond.178
  %110 = load i8*, i8** %src, align 8
  %111 = load i8, i8* %110, align 1
  %conv185 = sext i8 %111 to i32
  %cmp186 = icmp eq i32 %conv185, 0
  br i1 %cmp186, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %while.end.184
  %112 = load i8*, i8** %src, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %incdec.ptr189, i8** %src, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %while.end.184
  br label %while.cond.191

while.cond.191:                                   ; preds = %if.end.206, %if.end.190
  %113 = load i8*, i8** %src, align 8
  %114 = load i8, i8* %113, align 1
  %conv192 = sext i8 %114 to i32
  %cmp193 = icmp ne i32 %conv192, 0
  br i1 %cmp193, label %while.body.195, label %while.end.207

while.body.195:                                   ; preds = %while.cond.191
  %115 = load i8*, i8** %src, align 8
  %116 = load i8, i8* %115, align 1
  %conv196 = sext i8 %116 to i32
  %cmp197 = icmp eq i32 %conv196, 92
  br i1 %cmp197, label %if.then.199, label %if.else.203

if.then.199:                                      ; preds = %while.body.195
  %117 = load i8*, i8** %src, align 8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr200, i8** %src, align 8
  %118 = load i8*, i8** %src, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr201, i8** %src, align 8
  %119 = load i32, i32* @line_no, align 4
  %inc202 = add nsw i32 %119, 1
  store i32 %inc202, i32* @line_no, align 4
  br label %if.end.206

if.else.203:                                      ; preds = %while.body.195
  %120 = load i8*, i8** %src, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr204, i8** %src, align 8
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %dst, align 8
  %incdec.ptr205 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr205, i8** %dst, align 8
  store i8 %121, i8* %122, align 1
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.199
  br label %while.cond.191

while.end.207:                                    ; preds = %while.cond.191
  %123 = load i8*, i8** %dst, align 8
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** @yytext, align 8
  %call208 = call i8* @strcopyof(i8* %124)
  store i8* %call208, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 263, i32* %retval
  br label %return

sw.bb.209:                                        ; preds = %do_action
  %125 = load i8*, i8** @yytext, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %125, i64 0
  %126 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %126 to i32
  %cmp212 = icmp slt i32 %conv211, 32
  br i1 %cmp212, label %if.then.214, label %if.else.218

if.then.214:                                      ; preds = %sw.bb.209
  %127 = load i8*, i8** @yytext, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %127, i64 0
  %128 = load i8, i8* %arrayidx215, align 1
  %conv216 = sext i8 %128 to i32
  %add217 = add nsw i32 %conv216, 64
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %add217)
  br label %if.end.228

if.else.218:                                      ; preds = %sw.bb.209
  %129 = load i8*, i8** @yytext, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %130 to i32
  %cmp221 = icmp sgt i32 %conv220, 126
  br i1 %cmp221, label %if.then.223, label %if.else.226

if.then.223:                                      ; preds = %if.else.218
  %131 = load i8*, i8** @yytext, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %131, i64 0
  %132 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %132 to i32
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %conv225)
  br label %if.end.227

if.else.226:                                      ; preds = %if.else.218
  %133 = load i8*, i8** @yytext, align 8
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* %133)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.226, %if.then.223
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.214
  br label %sw.epilog.287

sw.bb.229:                                        ; preds = %do_action
  %134 = load i8*, i8** @yytext, align 8
  %135 = load i32, i32* @yyleng, align 4
  %conv230 = sext i32 %135 to i64
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call231 = call i64 @fwrite(i8* %134, i64 %conv230, i64 1, %struct._IO_FILE* %136)
  br label %sw.epilog.287

sw.bb.232:                                        ; preds = %do_action
  store i32 0, i32* %retval
  br label %return

sw.bb.233:                                        ; preds = %do_action
  %137 = load i8*, i8** %yy_cp, align 8
  %138 = load i8*, i8** @yytext, align 8
  %sub.ptr.lhs.cast234 = ptrtoint i8* %137 to i64
  %sub.ptr.rhs.cast235 = ptrtoint i8* %138 to i64
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %sub237 = sub nsw i64 %sub.ptr.sub236, 1
  %conv238 = trunc i64 %sub237 to i32
  store i32 %conv238, i32* %yy_amount_of_matched_text, align 4
  %139 = load i8, i8* @yy_hold_char, align 1
  %140 = load i8*, i8** %yy_cp, align 8
  store i8 %139, i8* %140, align 1
  %141 = load i8*, i8** @yy_c_buf_p, align 8
  %142 = load i32, i32* @yy_n_chars, align 4
  %idxprom239 = sext i32 %142 to i64
  %143 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %143, i32 0, i32 1
  %144 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %144, i64 %idxprom239
  %cmp241 = icmp ule i8* %141, %arrayidx240
  br i1 %cmp241, label %if.then.243, label %if.else.252

if.then.243:                                      ; preds = %sw.bb.233
  %145 = load i8*, i8** @yytext, align 8
  %146 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext = sext i32 %146 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %145, i64 %idx.ext
  store i8* %add.ptr244, i8** @yy_c_buf_p, align 8
  %call245 = call i32 @yy_get_previous_state()
  store i32 %call245, i32* %yy_current_state, align 4
  %147 = load i32, i32* %yy_current_state, align 4
  %call246 = call i32 @yy_try_NUL_trans(i32 %147)
  store i32 %call246, i32* %yy_next_state, align 4
  %148 = load i8*, i8** @yytext, align 8
  %add.ptr247 = getelementptr inbounds i8, i8* %148, i64 0
  store i8* %add.ptr247, i8** %yy_bp, align 8
  %149 = load i32, i32* %yy_next_state, align 4
  %tobool248 = icmp ne i32 %149, 0
  br i1 %tobool248, label %if.then.249, label %if.else.251

if.then.249:                                      ; preds = %if.then.243
  %150 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr250, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr250, i8** %yy_cp, align 8
  %151 = load i32, i32* %yy_next_state, align 4
  store i32 %151, i32* %yy_current_state, align 4
  br label %yy_match

if.else.251:                                      ; preds = %if.then.243
  br label %yy_find_action

if.else.252:                                      ; preds = %sw.bb.233
  %call253 = call i32 @yy_get_next_buffer()
  switch i32 %call253, label %sw.epilog [
    i32 1, label %sw.bb.254
    i32 0, label %sw.bb.270
    i32 2, label %sw.bb.275
  ]

sw.bb.254:                                        ; preds = %if.else.252
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %call255 = call i32 @yywrap()
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.then.257, label %if.else.262

if.then.257:                                      ; preds = %sw.bb.254
  %152 = load i8*, i8** @yytext, align 8
  %add.ptr258 = getelementptr inbounds i8, i8* %152, i64 0
  store i8* %add.ptr258, i8** @yy_c_buf_p, align 8
  %153 = load i32, i32* @yy_start, align 4
  %sub259 = sub nsw i32 %153, 1
  %div = sdiv i32 %sub259, 2
  %add260 = add nsw i32 40, %div
  %add261 = add nsw i32 %add260, 1
  store i32 %add261, i32* %yy_act, align 4
  br label %do_action

if.else.262:                                      ; preds = %sw.bb.254
  %154 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %tobool263 = icmp ne i32 %154, 0
  br i1 %tobool263, label %if.end.268, label %if.then.264

if.then.264:                                      ; preds = %if.else.262
  br label %do.body.265

do.body.265:                                      ; preds = %if.then.264
  %155 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %155, %struct._IO_FILE* %156)
  call void @yy_load_buffer_state()
  br label %do.end.267

do.end.267:                                       ; preds = %do.body.265
  br label %if.end.268

if.end.268:                                       ; preds = %do.end.267, %if.else.262
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268
  br label %sw.epilog

sw.bb.270:                                        ; preds = %if.else.252
  %157 = load i8*, i8** @yytext, align 8
  %158 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext271 = sext i32 %158 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %157, i64 %idx.ext271
  store i8* %add.ptr272, i8** @yy_c_buf_p, align 8
  %call273 = call i32 @yy_get_previous_state()
  store i32 %call273, i32* %yy_current_state, align 4
  %159 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %159, i8** %yy_cp, align 8
  %160 = load i8*, i8** @yytext, align 8
  %add.ptr274 = getelementptr inbounds i8, i8* %160, i64 0
  store i8* %add.ptr274, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.275:                                        ; preds = %if.else.252
  %161 = load i32, i32* @yy_n_chars, align 4
  %idxprom276 = sext i32 %161 to i64
  %162 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf277 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %162, i32 0, i32 1
  %163 = load i8*, i8** %yy_ch_buf277, align 8
  %arrayidx278 = getelementptr inbounds i8, i8* %163, i64 %idxprom276
  store i8* %arrayidx278, i8** @yy_c_buf_p, align 8
  %call279 = call i32 @yy_get_previous_state()
  store i32 %call279, i32* %yy_current_state, align 4
  %164 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %164, i8** %yy_cp, align 8
  %165 = load i8*, i8** @yytext, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %165, i64 0
  store i8* %add.ptr280, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.252, %if.end.269
  br label %if.end.281

if.end.281:                                       ; preds = %sw.epilog
  br label %sw.epilog.287

sw.default:                                       ; preds = %do_action
  br label %do.body.282

do.body.282:                                      ; preds = %sw.default
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call283 = call i32 @fputs(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %166)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call284 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %167)
  call void @exit(i32 1) #7
  unreachable

do.end.286:                                       ; No predecessors!
  br label %sw.epilog.287

sw.epilog.287:                                    ; preds = %do.end.286, %if.end.281, %sw.bb.229, %if.end.228, %for.end, %sw.bb.100, %sw.bb.98
  br label %while.body

return:                                           ; preds = %sw.bb.232, %while.end.207, %if.end.164, %sw.bb.139, %sw.bb.97, %sw.bb.95, %sw.bb.93, %do.end.92, %sw.bb.83, %sw.bb.81, %sw.bb.80, %sw.bb.79, %sw.bb.78, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb.67, %sw.bb.66, %sw.bb.65, %sw.bb.64, %sw.bb.63, %sw.bb.62, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb.56, %sw.bb.55, %sw.bb.54, %sw.bb.53
  %168 = load i32, i32* %retval
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define void @yy_init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %yy_input_file, align 8
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 10, i8* %arrayidx, align 1
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 4
  store i32 1, i32* %yy_n_chars, align 4
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %5, i32 0, i32 1
  %6 = load i8*, i8** %yy_ch_buf1, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 0, i8* %arrayidx2, align 1
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 0, i8* %arrayidx4, align 1
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 1
  %10 = load i8*, i8** %yy_ch_buf5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %11, i32 0, i32 2
  store i8* %arrayidx6, i8** %yy_buf_pos, align 8
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_eof_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 5
  store i32 0, i32* %yy_eof_status, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call noalias i8* @malloc(i64 40) #8
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  call void @exit(i32 1) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load i32, i32* %size.addr, align 4
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %5, i32 0, i32 3
  store i32 %4, i32* %yy_buf_size, align 4
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_buf_size3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 3
  %7 = load i32, i32* %yy_buf_size3, align 4
  %add = add nsw i32 %7, 2
  %conv = zext i32 %add to i64
  %call4 = call noalias i8* @malloc(i64 %conv) #8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 1
  store i8* %call4, i8** %yy_ch_buf, align 8
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 1
  %10 = load i8*, i8** %yy_ch_buf5, align 8
  %tobool6 = icmp ne i8* %10, null
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  call void @exit(i32 1) #7
  unreachable

do.end.11:                                        ; No predecessors!
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %if.end
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %13, %struct._IO_FILE* %14)
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %15
}

; Function Attrs: nounwind uwtable
define void @yy_load_buffer_state() #0 {
entry:
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i32 0, i32 4
  %1 = load i32, i32* %yy_n_chars, align 4
  store i32 %1, i32* @yy_n_chars, align 4
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 2
  %3 = load i8*, i8** %yy_buf_pos, align 8
  store i8* %3, i8** @yy_c_buf_p, align 8
  store i8* %3, i8** @yytext, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @yyin, align 8
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* @yy_hold_char, align 1
  ret void
}

declare i8* @strcopyof(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @input() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %0 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %0, i8** %yy_cp, align 8
  %1 = load i8, i8* @yy_hold_char, align 1
  %2 = load i8*, i8** %yy_cp, align 8
  store i8 %1, i8* %2, align 1
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load i32, i32* @yy_n_chars, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %cmp2 = icmp ult i8* %5, %arrayidx
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 0, i8* %9, align 1
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %10, i8** @yytext, align 8
  %11 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** @yy_c_buf_p, align 8
  %call = call i32 @yy_get_next_buffer()
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.8
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.else
  %call5 = call i32 @yywrap()
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %sw.bb
  %12 = load i8*, i8** @yytext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 0
  store i8* %add.ptr, i8** @yy_c_buf_p, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %13, %struct._IO_FILE* %14)
  call void @yy_load_buffer_state()
  br label %do.end

do.end:                                           ; preds = %do.body
  %call7 = call i32 @input()
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %if.else
  %15 = load i8*, i8** @yytext, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %15, i64 0
  store i8* %add.ptr9, i8** @yy_c_buf_p, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.else
  br label %do.body.11

do.body.11:                                       ; preds = %sw.bb.10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  call void @exit(i32 1) #7
  unreachable

do.end.14:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.14, %if.else, %sw.bb.8
  br label %if.end.15

if.end.15:                                        ; preds = %sw.epilog, %if.then.4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %18 = load i8*, i8** @yy_c_buf_p, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  store i32 %conv17, i32* %c, align 4
  %20 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** @yy_c_buf_p, align 8
  %21 = load i8, i8* %incdec.ptr18, align 1
  store i8 %21, i8* @yy_hold_char, align 1
  %22 = load i32, i32* %c, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %do.end, %if.then.6
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @yyerror(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @yytext, align 8
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
  %idxprom = sext i8 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ 1, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  store i8 %conv2, i8* %yy_c, align 1
  %9 = load i32, i32* %yy_current_state, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i32 0, i64 %idxprom3
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

while.cond:                                       ; preds = %if.end.23, %if.end
  %13 = load i32, i32* %yy_current_state, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, i8* %yy_c, align 1
  %conv9 = sext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i32 0, i64 %idxprom10
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, i32* %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i32 0, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, i32* %yy_current_state, align 4
  %20 = load i32, i32* %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 144
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %while.body
  %21 = load i8, i8* %yy_c, align 1
  %idxprom21 = sext i8 %21 to i64
  %arrayidx22 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i32 0, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  store i8 %22, i8* %yy_c, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom24
  %24 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %24 to i32
  %25 = load i8, i8* %yy_c, align 1
  %conv27 = sext i8 %25 to i32
  %add28 = add nsw i32 %conv26, %conv27
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i32 0, i64 %idxprom29
  %26 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %26 to i32
  store i32 %conv31, i32* %yy_current_state, align 4
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
  %arrayidx = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i32 0, i64 %idxprom
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

while.cond:                                       ; preds = %if.end.16, %if.end
  %5 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = sext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 144
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %idxprom14 = sext i8 %13 to i64
  %arrayidx15 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  store i8 %14, i8* %yy_c, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom17
  %16 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv20 = sext i8 %17 to i32
  %add21 = add nsw i32 %conv19, %conv20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i32 0, i64 %idxprom22
  %18 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %18 to i32
  store i32 %conv24, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i32 0, i64 %idxprom25
  %20 = load i16, i16* %arrayidx26, align 2
  %conv27 = sext i16 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 194
  %conv29 = zext i1 %cmp28 to i32
  store i32 %conv29, i32* %yy_is_jam, align 4
  %21 = load i32, i32* %yy_is_jam, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %22 = load i32, i32* %yy_current_state.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %22, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
entry:
  %dest = alloca i8*, align 8
  %source = alloca i8*, align 8
  %number_to_move = alloca i32, align 4
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %num_to_read = alloca i32, align 4
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i32 0, i32 1
  %1 = load i8*, i8** %yy_ch_buf, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load i8*, i8** @yytext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %source, align 8
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %4 = load i32, i32* @yy_n_chars, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf1 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %5, i32 0, i32 1
  %6 = load i8*, i8** %yy_ch_buf1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %cmp = icmp ugt i8* %3, %arrayidx
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  call void @exit(i32 1) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  %10 = load i8*, i8** @yytext, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %number_to_move, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %number_to_move, align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %source, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %source, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %dest, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %dest, align 8
  store i8 %14, i8* %15, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_eof_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %17, i32 0, i32 5
  %18 = load i32, i32* %yy_eof_status, align 4
  %cmp6 = icmp ne i32 %18, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* @yy_n_chars, align 4
  br label %if.end.41

if.else:                                          ; preds = %for.end
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_size = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 3
  %20 = load i32, i32* %yy_buf_size, align 4
  %21 = load i32, i32* %number_to_move, align 4
  %sub = sub nsw i32 %20, %21
  %sub9 = sub nsw i32 %sub, 1
  store i32 %sub9, i32* %num_to_read, align 4
  %22 = load i32, i32* %num_to_read, align 4
  %cmp10 = icmp sgt i32 %22, 8192
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i32 8192, i32* %num_to_read, align 4
  br label %if.end.22

if.else.13:                                       ; preds = %if.else
  %23 = load i32, i32* %num_to_read, align 4
  %cmp14 = icmp sle i32 %23, 0
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.else.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  call void @exit(i32 1) #7
  unreachable

do.end.20:                                        ; No predecessors!
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %if.else.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.end.22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call23 = call i32 @fileno(%struct._IO_FILE* %26) #8
  %27 = load i32, i32* %number_to_move, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf25 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 1
  %29 = load i8*, i8** %yy_ch_buf25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %idxprom24
  %30 = load i32, i32* %num_to_read, align 4
  %conv27 = sext i32 %30 to i64
  %call28 = call i64 @read(i32 %call23, i8* %arrayidx26, i64 %conv27)
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* @yy_n_chars, align 4
  %cmp30 = icmp slt i32 %conv29, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call32 = call i32* @__errno_location() #9
  %31 = load i32, i32* %call32, align 4
  %cmp33 = icmp ne i32 %31, 4
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %while.body
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call38 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %33)
  call void @exit(i32 1) #7
  unreachable

do.end.39:                                        ; No predecessors!
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.41

if.end.41:                                        ; preds = %while.end, %if.then.8
  %34 = load i32, i32* @yy_n_chars, align 4
  %cmp42 = icmp eq i32 %34, 0
  br i1 %cmp42, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %if.end.41
  %35 = load i32, i32* %number_to_move, align 4
  %cmp45 = icmp eq i32 %35, 1
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.then.44
  store i32 1, i32* %ret_val, align 4
  %36 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_eof_status48 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %36, i32 0, i32 5
  store i32 2, i32* %yy_eof_status48, align 4
  br label %if.end.51

if.else.49:                                       ; preds = %if.then.44
  store i32 2, i32* %ret_val, align 4
  %37 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_eof_status50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %37, i32 0, i32 5
  store i32 1, i32* %yy_eof_status50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.41
  store i32 0, i32* %ret_val, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  %38 = load i32, i32* %number_to_move, align 4
  %39 = load i32, i32* @yy_n_chars, align 4
  %add54 = add nsw i32 %39, %38
  store i32 %add54, i32* @yy_n_chars, align 4
  %40 = load i32, i32* @yy_n_chars, align 4
  %idxprom55 = sext i32 %40 to i64
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf56 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %41, i32 0, i32 1
  %42 = load i8*, i8** %yy_ch_buf56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %42, i64 %idxprom55
  store i8 0, i8* %arrayidx57, align 1
  %43 = load i32, i32* @yy_n_chars, align 4
  %add58 = add nsw i32 %43, 1
  %idxprom59 = sext i32 %add58 to i64
  %44 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf60 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %44, i32 0, i32 1
  %45 = load i8*, i8** %yy_ch_buf60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %45, i64 %idxprom59
  store i8 0, i8* %arrayidx61, align 1
  %46 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_ch_buf62 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %46, i32 0, i32 1
  %47 = load i8*, i8** %yy_ch_buf62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %arrayidx63, i8** @yytext, align 8
  %48 = load i32, i32* %ret_val, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @yywrap() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @open_new_file()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @yyrestart(%struct._IO_FILE* %input_file) #0 {
entry:
  %input_file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %input_file, %struct._IO_FILE** %input_file.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input_file.addr, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* %0, %struct._IO_FILE* %1)
  call void @yy_load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define void @yy_switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i8, i8* @yy_hold_char, align 1
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %3, i8* %4, align 1
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_buf_pos = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 2
  store i8* %5, i8** %yy_buf_pos, align 8
  %7 = load i32, i32* @yy_n_chars, align 4
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 4
  store i32 %7, i32* %yy_n_chars, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  store %struct.yy_buffer_state* %9, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define void @yy_delete_buffer(%struct.yy_buffer_state* %b) #0 {
entry:
  %b.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %b, %struct.yy_buffer_state** %b.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %2, i32 0, i32 1
  %3 = load i8*, i8** %yy_ch_buf, align 8
  call void @free(i8* %3) #8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %5 = bitcast %struct.yy_buffer_state* %4 to i8*
  call void @free(i8* %5) #8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @open_new_file() #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
