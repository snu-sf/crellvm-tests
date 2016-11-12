; ModuleID = './src/lexps.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }

@psin = global %struct._IO_FILE* null, align 8
@psout = global %struct._IO_FILE* null, align 8
@pslineno = global i32 1, align 4
@ps_flex_debug = global i32 0, align 4
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 6, i32 1, i32 7, i32 1, i32 8, i32 1, i32 1, i32 1, i32 1, i32 9, i32 1, i32 10, i32 1, i32 1, i32 1, i32 11, i32 12, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [26 x i16] [i16 0, i16 2, i16 2, i16 3, i16 3, i16 5, i16 2, i16 4, i16 2, i16 3, i16 2, i16 2, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [31 x i16] [i16 0, i16 25, i16 0, i16 24, i16 23, i16 24, i16 0, i16 28, i16 20, i16 0, i16 0, i16 18, i16 0, i16 15, i16 13, i16 11, i16 9, i16 12, i16 10, i16 4, i16 2, i16 3, i16 10, i16 9, i16 28, i16 28, i16 3, i16 5, i16 9, i16 0, i16 7], align 16
@yy_chk = internal constant [41 x i16] [i16 0, i16 29, i16 2, i16 2, i16 26, i16 26, i16 27, i16 27, i16 30, i16 30, i16 28, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16, i16 15, i16 14, i16 13, i16 11, i16 8, i16 5, i16 4, i16 3, i16 1, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25], align 16
@yy_def = internal constant [31 x i16] [i16 0, i16 26, i16 26, i16 27, i16 27, i16 25, i16 28, i16 25, i16 28, i16 29, i16 28, i16 28, i16 29, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 28, i16 30, i16 30, i16 25, i16 0, i16 25, i16 25, i16 25, i16 25, i16 25], align 16
@yy_meta = internal constant [13 x i32] [i32 0, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_nxt = internal constant [41 x i16] [i16 0, i16 12, i16 7, i16 8, i16 6, i16 6, i16 9, i16 9, i16 23, i16 23, i16 10, i16 24, i16 24, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16, i16 15, i16 14, i16 13, i16 11, i16 25, i16 7, i16 7, i16 7, i16 5, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25, i16 25], align 16
@pstext = common global i8* null, align 8
@psleng = common global i32 0, align 4
@job = external global %struct.a2ps_job*, align 8
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in ps_create_buffer()\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in ps_scan_buffer()\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in ps_scan_bytes()\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"bad buffer in ps_scan_bytes()\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pslex() #0 {
entry:
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
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @psin, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @psout, align 8
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
  call void @psensure_buffer_stack()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %call = call %struct.yy_buffer_state* @ps_create_buffer(%struct._IO_FILE* %10, i32 16384)
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx12 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.false, %cond.true
  call void @ps_load_buffer_state()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.14, %sw.epilog.184
  %13 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %13, i8** %yy_cp, align 8
  %14 = load i8, i8* @yy_hold_char, align 1
  %15 = load i8*, i8** %yy_cp, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %yy_cp, align 8
  store i8* %16, i8** %yy_bp, align 8
  %17 = load i32, i32* @yy_start, align 4
  store i32 %17, i32* %yy_current_state, align 4
  %18 = load i64, i64* @yy_buffer_stack_top, align 8
  %19 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx15 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %19, i64 %18
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx15, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %20, i32 0, i32 7
  %21 = load i32, i32* %yy_at_bol, align 4
  %22 = load i32, i32* %yy_current_state, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %yy_current_state, align 4
  br label %yy_match

yy_match:                                         ; preds = %sw.bb.171, %if.then.154, %while.body
  br label %do.body

do.body:                                          ; preds = %do.cond, %yy_match
  %23 = load i8*, i8** %yy_cp, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %idxprom = zext i32 %conv to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %25 to i8
  store i8 %conv17, i8* %yy_c, align 1
  %26 = load i32, i32* %yy_current_state, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [26 x i16], [26 x i16]* @yy_accept, i32 0, i64 %idxprom18
  %27 = load i16, i16* %arrayidx19, align 2
  %tobool20 = icmp ne i16 %27, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body
  %28 = load i32, i32* %yy_current_state, align 4
  store i32 %28, i32* @yy_last_accepting_state, align 4
  %29 = load i8*, i8** %yy_cp, align 8
  store i8* %29, i8** @yy_last_accepting_cpos, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.body
  br label %while.cond.23

while.cond.23:                                    ; preds = %if.end.44, %if.end.22
  %30 = load i32, i32* %yy_current_state, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom24
  %31 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %31 to i32
  %32 = load i8, i8* %yy_c, align 1
  %conv27 = zext i8 %32 to i32
  %add28 = add nsw i32 %conv26, %conv27
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_chk, i32 0, i64 %idxprom29
  %33 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %33 to i32
  %34 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv31, %34
  br i1 %cmp, label %while.body.33, label %while.end

while.body.33:                                    ; preds = %while.cond.23
  %35 = load i32, i32* %yy_current_state, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_def, i32 0, i64 %idxprom34
  %36 = load i16, i16* %arrayidx35, align 2
  %conv36 = sext i16 %36 to i32
  store i32 %conv36, i32* %yy_current_state, align 4
  %37 = load i32, i32* %yy_current_state, align 4
  %cmp37 = icmp sge i32 %37, 26
  br i1 %cmp37, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %while.body.33
  %38 = load i8, i8* %yy_c, align 1
  %conv40 = zext i8 %38 to i32
  %idxprom41 = zext i32 %conv40 to i64
  %arrayidx42 = getelementptr inbounds [13 x i32], [13 x i32]* @yy_meta, i32 0, i64 %idxprom41
  %39 = load i32, i32* %arrayidx42, align 4
  %conv43 = trunc i32 %39 to i8
  store i8 %conv43, i8* %yy_c, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %while.body.33
  br label %while.cond.23

while.end:                                        ; preds = %while.cond.23
  %40 = load i32, i32* %yy_current_state, align 4
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom45
  %41 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %41 to i32
  %42 = load i8, i8* %yy_c, align 1
  %conv48 = zext i8 %42 to i32
  %add49 = add i32 %conv47, %conv48
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_nxt, i32 0, i64 %idxprom50
  %43 = load i16, i16* %arrayidx51, align 2
  %conv52 = sext i16 %43 to i32
  store i32 %conv52, i32* %yy_current_state, align 4
  %44 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %45 = load i32, i32* %yy_current_state, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom53
  %46 = load i16, i16* %arrayidx54, align 2
  %conv55 = sext i16 %46 to i32
  %cmp56 = icmp ne i32 %conv55, 28
  br i1 %cmp56, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.176, %if.else, %sw.bb, %do.end
  %47 = load i32, i32* %yy_current_state, align 4
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds [26 x i16], [26 x i16]* @yy_accept, i32 0, i64 %idxprom58
  %48 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %48 to i32
  store i32 %conv60, i32* %yy_act, align 4
  %49 = load i32, i32* %yy_act, align 4
  %cmp61 = icmp eq i32 %49, 0
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %yy_find_action
  %50 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %50, i8** %yy_cp, align 8
  %51 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %51, i32* %yy_current_state, align 4
  %52 = load i32, i32* %yy_current_state, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [26 x i16], [26 x i16]* @yy_accept, i32 0, i64 %idxprom64
  %53 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %53 to i32
  store i32 %conv66, i32* %yy_act, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %yy_find_action
  %54 = load i8*, i8** %yy_bp, align 8
  store i8* %54, i8** @pstext, align 8
  %55 = load i8*, i8** %yy_cp, align 8
  %56 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv68 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv68, i32* @psleng, align 4
  %57 = load i8*, i8** %yy_cp, align 8
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* @yy_hold_char, align 1
  %59 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %yy_cp, align 8
  store i8* %60, i8** @yy_c_buf_p, align 8
  br label %do_action

do_action:                                        ; preds = %if.then.161, %if.end.67
  %61 = load i32, i32* %yy_act, align 4
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
    i32 2, label %sw.bb.83
    i32 3, label %sw.bb.98
    i32 4, label %sw.bb.113
    i32 6, label %sw.bb.128
    i32 7, label %sw.bb.128
    i32 5, label %sw.bb.129
  ]

sw.bb:                                            ; preds = %do_action
  %62 = load i8, i8* @yy_hold_char, align 1
  %63 = load i8*, i8** %yy_cp, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %64, i8** %yy_cp, align 8
  %65 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %65, i32* %yy_current_state, align 4
  br label %yy_find_action

sw.bb.69:                                         ; preds = %do_action
  %66 = load i32, i32* @psleng, align 4
  %cmp70 = icmp sgt i32 %66, 0
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %sw.bb.69
  %67 = load i32, i32* @psleng, align 4
  %sub = sub nsw i32 %67, 1
  %idxprom73 = sext i32 %sub to i64
  %68 = load i8*, i8** @pstext, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %68, i64 %idxprom73
  %69 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %69 to i32
  %cmp76 = icmp eq i32 %conv75, 10
  %conv77 = zext i1 %cmp76 to i32
  %70 = load i64, i64* @yy_buffer_stack_top, align 8
  %71 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx78 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %71, i64 %70
  %72 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx78, align 8
  %yy_at_bol79 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %72, i32 0, i32 7
  store i32 %conv77, i32* %yy_at_bol79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.72, %sw.bb.69
  %73 = load i8*, i8** @pstext, align 8
  %74 = load i32, i32* @psleng, align 4
  %conv81 = sext i32 %74 to i64
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %call82 = call i64 @fwrite(i8* %73, i64 %conv81, i64 1, %struct._IO_FILE* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @pagedevice_dump(%struct._IO_FILE* %76, %struct.a2ps_job* %77)
  store i32 3, i32* @yy_start, align 4
  br label %sw.epilog.184

sw.bb.83:                                         ; preds = %do_action
  %78 = load i32, i32* @psleng, align 4
  %cmp84 = icmp sgt i32 %78, 0
  br i1 %cmp84, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %sw.bb.83
  %79 = load i32, i32* @psleng, align 4
  %sub87 = sub nsw i32 %79, 1
  %idxprom88 = sext i32 %sub87 to i64
  %80 = load i8*, i8** @pstext, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %80, i64 %idxprom88
  %81 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %81 to i32
  %cmp91 = icmp eq i32 %conv90, 10
  %conv92 = zext i1 %cmp91 to i32
  %82 = load i64, i64* @yy_buffer_stack_top, align 8
  %83 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx93 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %83, i64 %82
  %84 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx93, align 8
  %yy_at_bol94 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %84, i32 0, i32 7
  store i32 %conv92, i32* %yy_at_bol94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.86, %sw.bb.83
  %85 = load i8*, i8** @pstext, align 8
  %86 = load i32, i32* @psleng, align 4
  %conv96 = sext i32 %86 to i64
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %call97 = call i64 @fwrite(i8* %85, i64 %conv96, i64 1, %struct._IO_FILE* %87)
  br label %sw.epilog.184

sw.bb.98:                                         ; preds = %do_action
  %88 = load i32, i32* @psleng, align 4
  %cmp99 = icmp sgt i32 %88, 0
  br i1 %cmp99, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %sw.bb.98
  %89 = load i32, i32* @psleng, align 4
  %sub102 = sub nsw i32 %89, 1
  %idxprom103 = sext i32 %sub102 to i64
  %90 = load i8*, i8** @pstext, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %90, i64 %idxprom103
  %91 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %91 to i32
  %cmp106 = icmp eq i32 %conv105, 10
  %conv107 = zext i1 %cmp106 to i32
  %92 = load i64, i64* @yy_buffer_stack_top, align 8
  %93 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx108 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %93, i64 %92
  %94 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx108, align 8
  %yy_at_bol109 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %94, i32 0, i32 7
  store i32 %conv107, i32* %yy_at_bol109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.101, %sw.bb.98
  %95 = load i8*, i8** @pstext, align 8
  %96 = load i32, i32* @psleng, align 4
  %conv111 = sext i32 %96 to i64
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %call112 = call i64 @fwrite(i8* %95, i64 %conv111, i64 1, %struct._IO_FILE* %97)
  br label %sw.epilog.184

sw.bb.113:                                        ; preds = %do_action
  %98 = load i32, i32* @psleng, align 4
  %cmp114 = icmp sgt i32 %98, 0
  br i1 %cmp114, label %if.then.116, label %if.end.125

if.then.116:                                      ; preds = %sw.bb.113
  %99 = load i32, i32* @psleng, align 4
  %sub117 = sub nsw i32 %99, 1
  %idxprom118 = sext i32 %sub117 to i64
  %100 = load i8*, i8** @pstext, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %100, i64 %idxprom118
  %101 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %101 to i32
  %cmp121 = icmp eq i32 %conv120, 10
  %conv122 = zext i1 %cmp121 to i32
  %102 = load i64, i64* @yy_buffer_stack_top, align 8
  %103 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx123 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %103, i64 %102
  %104 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx123, align 8
  %yy_at_bol124 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %104, i32 0, i32 7
  store i32 %conv122, i32* %yy_at_bol124, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.116, %sw.bb.113
  %105 = load i8*, i8** @pstext, align 8
  %106 = load i32, i32* @psleng, align 4
  %conv126 = sext i32 %106 to i64
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  %call127 = call i64 @fwrite(i8* %105, i64 %conv126, i64 1, %struct._IO_FILE* %107)
  br label %sw.epilog.184

sw.bb.128:                                        ; preds = %do_action, %do_action
  ret i32 0

sw.bb.129:                                        ; preds = %do_action
  %108 = load i8*, i8** %yy_cp, align 8
  %109 = load i8*, i8** @pstext, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %109 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %conv133 = trunc i64 %sub.ptr.sub132 to i32
  %sub134 = sub nsw i32 %conv133, 1
  store i32 %sub134, i32* %yy_amount_of_matched_text, align 4
  %110 = load i8, i8* @yy_hold_char, align 1
  %111 = load i8*, i8** %yy_cp, align 8
  store i8 %110, i8* %111, align 1
  %112 = load i64, i64* @yy_buffer_stack_top, align 8
  %113 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx135 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %113, i64 %112
  %114 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx135, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %114, i32 0, i32 11
  %115 = load i32, i32* %yy_buffer_status, align 4
  %cmp136 = icmp eq i32 %115, 0
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %sw.bb.129
  %116 = load i64, i64* @yy_buffer_stack_top, align 8
  %117 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx139 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %117, i64 %116
  %118 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx139, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %118, i32 0, i32 4
  %119 = load i32, i32* %yy_n_chars, align 4
  store i32 %119, i32* @yy_n_chars, align 4
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %121 = load i64, i64* @yy_buffer_stack_top, align 8
  %122 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx140 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %122, i64 %121
  %123 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx140, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %123, i32 0, i32 0
  store %struct._IO_FILE* %120, %struct._IO_FILE** %yy_input_file, align 8
  %124 = load i64, i64* @yy_buffer_stack_top, align 8
  %125 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx141 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %125, i64 %124
  %126 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx141, align 8
  %yy_buffer_status142 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %126, i32 0, i32 11
  store i32 1, i32* %yy_buffer_status142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %sw.bb.129
  %127 = load i8*, i8** @yy_c_buf_p, align 8
  %128 = load i32, i32* @yy_n_chars, align 4
  %idxprom144 = sext i32 %128 to i64
  %129 = load i64, i64* @yy_buffer_stack_top, align 8
  %130 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx145 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %130, i64 %129
  %131 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx145, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %131, i32 0, i32 1
  %132 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %132, i64 %idxprom144
  %cmp147 = icmp ule i8* %127, %arrayidx146
  br i1 %cmp147, label %if.then.149, label %if.else.156

if.then.149:                                      ; preds = %if.end.143
  %133 = load i8*, i8** @pstext, align 8
  %134 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext = sext i32 %134 to i64
  %add.ptr = getelementptr inbounds i8, i8* %133, i64 %idx.ext
  store i8* %add.ptr, i8** @yy_c_buf_p, align 8
  %call150 = call i32 @yy_get_previous_state()
  store i32 %call150, i32* %yy_current_state, align 4
  %135 = load i32, i32* %yy_current_state, align 4
  %call151 = call i32 @yy_try_NUL_trans(i32 %135)
  store i32 %call151, i32* %yy_next_state, align 4
  %136 = load i8*, i8** @pstext, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %136, i64 0
  store i8* %add.ptr152, i8** %yy_bp, align 8
  %137 = load i32, i32* %yy_next_state, align 4
  %tobool153 = icmp ne i32 %137, 0
  br i1 %tobool153, label %if.then.154, label %if.else

if.then.154:                                      ; preds = %if.then.149
  %138 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr155, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr155, i8** %yy_cp, align 8
  %139 = load i32, i32* %yy_next_state, align 4
  store i32 %139, i32* %yy_current_state, align 4
  br label %yy_match

if.else:                                          ; preds = %if.then.149
  %140 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %140, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.156:                                      ; preds = %if.end.143
  %call157 = call i32 @yy_get_next_buffer()
  switch i32 %call157, label %sw.epilog [
    i32 1, label %sw.bb.158
    i32 0, label %sw.bb.171
    i32 2, label %sw.bb.176
  ]

sw.bb.158:                                        ; preds = %if.else.156
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %call159 = call i32 @pswrap()
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.166

if.then.161:                                      ; preds = %sw.bb.158
  %141 = load i8*, i8** @pstext, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %141, i64 0
  store i8* %add.ptr162, i8** @yy_c_buf_p, align 8
  %142 = load i32, i32* @yy_start, align 4
  %sub163 = sub nsw i32 %142, 1
  %div = sdiv i32 %sub163, 2
  %add164 = add nsw i32 5, %div
  %add165 = add nsw i32 %add164, 1
  store i32 %add165, i32* %yy_act, align 4
  br label %do_action

if.else.166:                                      ; preds = %sw.bb.158
  %143 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %tobool167 = icmp ne i32 %143, 0
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.else.166
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  call void @psrestart(%struct._IO_FILE* %144)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.else.166
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169
  br label %sw.epilog

sw.bb.171:                                        ; preds = %if.else.156
  %145 = load i8*, i8** @pstext, align 8
  %146 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext172 = sext i32 %146 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %145, i64 %idx.ext172
  store i8* %add.ptr173, i8** @yy_c_buf_p, align 8
  %call174 = call i32 @yy_get_previous_state()
  store i32 %call174, i32* %yy_current_state, align 4
  %147 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %147, i8** %yy_cp, align 8
  %148 = load i8*, i8** @pstext, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %148, i64 0
  store i8* %add.ptr175, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.176:                                        ; preds = %if.else.156
  %149 = load i32, i32* @yy_n_chars, align 4
  %idxprom177 = sext i32 %149 to i64
  %150 = load i64, i64* @yy_buffer_stack_top, align 8
  %151 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx178 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %151, i64 %150
  %152 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx178, align 8
  %yy_ch_buf179 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %152, i32 0, i32 1
  %153 = load i8*, i8** %yy_ch_buf179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %153, i64 %idxprom177
  store i8* %arrayidx180, i8** @yy_c_buf_p, align 8
  %call181 = call i32 @yy_get_previous_state()
  store i32 %call181, i32* %yy_current_state, align 4
  %154 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %154, i8** %yy_cp, align 8
  %155 = load i8*, i8** @pstext, align 8
  %add.ptr182 = getelementptr inbounds i8, i8* %155, i64 0
  store i8* %add.ptr182, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.156, %if.end.170
  br label %if.end.183

if.end.183:                                       ; preds = %sw.epilog
  br label %sw.epilog.184

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog.184

sw.epilog.184:                                    ; preds = %sw.default, %if.end.183, %if.end.125, %if.end.110, %if.end.95, %if.end.80
  br label %while.body
}

; Function Attrs: nounwind uwtable
define internal void @psensure_buffer_stack() #0 {
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
  %call = call i8* @psalloc(i32 %conv1)
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
  %call12 = call i8* @psrealloc(i8* %12, i32 %conv11)
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
define %struct.yy_buffer_state* @ps_create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @psalloc(i32 64)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
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
  %call2 = call i8* @psalloc(i32 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @ps_init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define internal void @ps_load_buffer_state() #0 {
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
  store i8* %7, i8** @pstext, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @psin, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* @yy_hold_char, align 1
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @pagedevice_dump(%struct._IO_FILE*, %struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i64, i64* @yy_buffer_stack_top, align 8
  %2 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, i64 %1
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx, align 8
  %yy_at_bol = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %3, i32 0, i32 7
  %4 = load i32, i32* %yy_at_bol, align 4
  %5 = load i32, i32* %yy_current_state, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %yy_current_state, align 4
  %6 = load i8*, i8** @pstext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 0
  store i8* %add.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %yy_cp, align 8
  %8 = load i8*, i8** @yy_c_buf_p, align 8
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %yy_cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i8*, i8** %yy_cp, align 8
  %12 = load i8, i8* %11, align 1
  %conv1 = zext i8 %12 to i32
  %idxprom = zext i32 %conv1 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx2, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 1, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  store i8 %conv3, i8* %yy_c, align 1
  %14 = load i32, i32* %yy_current_state, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds [26 x i16], [26 x i16]* @yy_accept, i32 0, i64 %idxprom4
  %15 = load i16, i16* %arrayidx5, align 2
  %tobool6 = icmp ne i16 %15, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %yy_current_state, align 4
  store i32 %16, i32* @yy_last_accepting_state, align 4
  %17 = load i8*, i8** %yy_cp, align 8
  store i8* %17, i8** @yy_last_accepting_cpos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom7
  %19 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %19 to i32
  %20 = load i8, i8* %yy_c, align 1
  %conv10 = zext i8 %20 to i32
  %add11 = add nsw i32 %conv9, %conv10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_chk, i32 0, i64 %idxprom12
  %21 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %21 to i32
  %22 = load i32, i32* %yy_current_state, align 4
  %cmp15 = icmp ne i32 %conv14, %22
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_def, i32 0, i64 %idxprom17
  %24 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %24 to i32
  store i32 %conv19, i32* %yy_current_state, align 4
  %25 = load i32, i32* %yy_current_state, align 4
  %cmp20 = icmp sge i32 %25, 26
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %while.body
  %26 = load i8, i8* %yy_c, align 1
  %conv23 = zext i8 %26 to i32
  %idxprom24 = zext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [13 x i32], [13 x i32]* @yy_meta, i32 0, i64 %idxprom24
  %27 = load i32, i32* %arrayidx25, align 4
  %conv26 = trunc i32 %27 to i8
  store i8 %conv26, i8* %yy_c, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %yy_current_state, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %29 to i32
  %30 = load i8, i8* %yy_c, align 1
  %conv31 = zext i8 %30 to i32
  %add32 = add i32 %conv30, %conv31
  %idxprom33 = zext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_nxt, i32 0, i64 %idxprom33
  %31 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %31 to i32
  store i32 %conv35, i32* %yy_current_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %32 = load i8*, i8** %yy_cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %yy_cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %yy_current_state, align 4
  ret i32 %33
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
  %arrayidx = getelementptr inbounds [26 x i16], [26 x i16]* @yy_accept, i32 0, i64 %idxprom
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
  %arrayidx2 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 26
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %conv14 = zext i8 %13 to i32
  %idxprom15 = zext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [13 x i32], [13 x i32]* @yy_meta, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %14 to i8
  store i8 %conv17, i8* %yy_c, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [31 x i16], [31 x i16]* @yy_base, i32 0, i64 %idxprom19
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add i32 %conv21, %conv22
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [41 x i16], [41 x i16]* @yy_nxt, i32 0, i64 %idxprom24
  %18 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %18 to i32
  store i32 %conv26, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %cmp27 = icmp eq i32 %19, 25
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
  %4 = load i8*, i8** @pstext, align 8
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
  %16 = load i8*, i8** @pstext, align 8
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
  %18 = load i8*, i8** @pstext, align 8
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
  %call = call i8* @psrealloc(i8* %57, i32 %add49)
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
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
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
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
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %call105 = call i32 @ferror(%struct._IO_FILE* %99) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
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
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %call118 = call i64 @fread(i8* %arrayidx116, i64 1, i64 %conv117, %struct._IO_FILE* %107)
  %conv119 = trunc i64 %call118 to i32
  store i32 %conv119, i32* @yy_n_chars, align 4
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %while.cond.112
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %call123 = call i32 @ferror(%struct._IO_FILE* %108) #5
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end.133

if.end.131:                                       ; preds = %while.body.126
  %call132 = call i32* @__errno_location() #7
  store i32 0, i32* %call132, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  call void @clearerr(%struct._IO_FILE* %111) #5
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
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  call void @psrestart(%struct._IO_FILE* %118)
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
  store i8* %arrayidx162, i8** @pstext, align 8
  %138 = load i32, i32* %ret_val, align 4
  store i32 %138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.else, %if.then.8
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define i32 @pswrap() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @psrestart(%struct._IO_FILE* %input_file) #0 {
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
  call void @psensure_buffer_stack()
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  %call = call %struct.yy_buffer_state* @ps_create_buffer(%struct._IO_FILE* %4, i32 16384)
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
  call void @ps_init_buffer(%struct.yy_buffer_state* %cond, %struct._IO_FILE* %11)
  call void @ps_load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ps_init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
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
  call void @ps_flush_buffer(%struct.yy_buffer_state* %1)
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
define void @ps_switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  call void @psensure_buffer_stack()
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
  call void @ps_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @psalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @ps_delete_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @psfree(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %13 = bitcast %struct.yy_buffer_state* %12 to i8*
  call void @psfree(i8* %13)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @psfree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ps_flush_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @ps_load_buffer_state()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @pspush_buffer_state(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @psensure_buffer_stack()
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
  call void @ps_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @pspop_buffer_state() #0 {
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
  call void @ps_delete_buffer(%struct.yy_buffer_state* %cond)
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
  call void @ps_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %cond.false.13, %cond.true.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ps_scan_buffer(i8* %base, i32 %size) #0 {
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
  %call = call i8* @psalloc(i32 64)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
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
  call void @ps_switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ps_scan_string(i8* %yystr) #0 {
entry:
  %yystr.addr = alloca i8*, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %conv = trunc i64 %call to i32
  %call1 = call %struct.yy_buffer_state* @ps_scan_bytes(i8* %0, i32 %conv)
  ret %struct.yy_buffer_state* %call1
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @ps_scan_bytes(i8* %yybytes, i32 %_yybytes_len) #0 {
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
  %call = call i8* @psalloc(i32 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
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
  %call8 = call %struct.yy_buffer_state* @ps_scan_buffer(i8* %15, i32 %16)
  store %struct.yy_buffer_state* %call8, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @psget_lineno() #0 {
entry:
  %0 = load i32, i32* @pslineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @psget_in() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @psin, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @psget_out() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @psout, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define i32 @psget_leng() #0 {
entry:
  %0 = load i32, i32* @psleng, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i8* @psget_text() #0 {
entry:
  %0 = load i8*, i8** @pstext, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @psset_lineno(i32 %line_number) #0 {
entry:
  %line_number.addr = alloca i32, align 4
  store i32 %line_number, i32* %line_number.addr, align 4
  %0 = load i32, i32* %line_number.addr, align 4
  store i32 %0, i32* @pslineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @psset_in(%struct._IO_FILE* %in_str) #0 {
entry:
  %in_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_str, %struct._IO_FILE** %in_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @psin, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @psset_out(%struct._IO_FILE* %out_str) #0 {
entry:
  %out_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out_str, %struct._IO_FILE** %out_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @psout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @psget_debug() #0 {
entry:
  %0 = load i32, i32* @ps_flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @psset_debug(i32 %bdebug) #0 {
entry:
  %bdebug.addr = alloca i32, align 4
  store i32 %bdebug, i32* %bdebug.addr, align 4
  %0 = load i32, i32* %bdebug.addr, align 4
  store i32 %0, i32* @ps_flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pslex_destroy() #0 {
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
  call void @ps_delete_buffer(%struct.yy_buffer_state* %cond7)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx8, align 8
  call void @pspop_buffer_state()
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %11 = bitcast %struct.yy_buffer_state** %10 to i8*
  call void @psfree(i8* %11)
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
  store %struct._IO_FILE* null, %struct._IO_FILE** @psin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @psout, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i8* @psrealloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #5
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @pslex_dump(%struct._IO_FILE* %stream, i8* %filename) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @xrfopen(i8* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** @psin, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @psout, align 8
  %call1 = call i32 @pslex()
  ret void
}

declare %struct._IO_FILE* @xrfopen(i8*) #1

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
