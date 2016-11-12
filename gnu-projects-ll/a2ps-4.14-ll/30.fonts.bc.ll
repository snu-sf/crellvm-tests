; ModuleID = './lib/fonts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.font_info = type { i8*, %struct.hash_table_s* }
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.wx_entry = type { i8*, i32, i32 }

@afmin = global %struct._IO_FILE* null, align 8
@afmout = global %struct._IO_FILE* null, align 8
@afmlineno = global i32 1, align 4
@afm_flex_debug = global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fonts.map\00", align 1
@yy_init = internal global i32 0, align 4
@yy_start = internal global i32 0, align 4
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yy_buffer_stack = internal global %struct.yy_buffer_state** null, align 8
@yy_buffer_stack_top = internal global i64 0, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 2, i32 2, i32 5, i32 1, i32 2, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9, i32 10, i32 1, i32 1, i32 1, i32 1, i32 11, i32 1, i32 1, i32 1, i32 12, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 14, i32 1, i32 15, i32 16, i32 17, i32 1, i32 1, i32 18, i32 19, i32 1, i32 1, i32 1, i32 1, i32 20, i32 1, i32 1, i32 1, i32 21, i32 22, i32 23, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [57 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 11, i16 10, i16 2, i16 10, i16 8, i16 9, i16 8, i16 8, i16 8, i16 8, i16 0, i16 2, i16 0, i16 0, i16 0, i16 7, i16 0, i16 0, i16 0, i16 4, i16 0, i16 7, i16 0, i16 0, i16 5, i16 0, i16 6, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 0, i16 0, i16 0, i16 1, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_base = internal constant [62 x i16] [i16 0, i16 0, i16 1, i16 10, i16 20, i16 83, i16 79, i16 84, i16 2, i16 84, i16 84, i16 77, i16 60, i16 75, i16 65, i16 74, i16 84, i16 5, i16 1, i16 60, i16 0, i16 71, i16 12, i16 68, i16 67, i16 65, i16 0, i16 65, i16 6, i16 64, i16 42, i16 53, i16 7, i16 44, i16 13, i16 36, i16 21, i16 47, i16 18, i16 35, i16 31, i16 28, i16 33, i16 28, i16 23, i16 29, i16 34, i16 32, i16 35, i16 23, i16 38, i16 84, i16 39, i16 41, i16 40, i16 84, i16 84, i16 61, i16 63, i16 65, i16 0, i16 67], align 16
@yy_chk = internal constant [108 x i16] [i16 0, i16 60, i16 0, i16 1, i16 2, i16 8, i16 18, i16 18, i16 17, i16 28, i16 32, i16 1, i16 2, i16 3, i16 32, i16 22, i16 34, i16 3, i16 3, i16 17, i16 3, i16 38, i16 3, i16 4, i16 36, i16 8, i16 44, i16 4, i16 4, i16 28, i16 4, i16 34, i16 4, i16 22, i16 40, i16 36, i16 42, i16 46, i16 48, i16 38, i16 40, i16 50, i16 52, i16 54, i16 53, i16 49, i16 44, i16 47, i16 45, i16 43, i16 42, i16 41, i16 39, i16 50, i16 48, i16 46, i16 37, i16 35, i16 33, i16 31, i16 30, i16 52, i16 57, i16 57, i16 58, i16 58, i16 59, i16 59, i16 61, i16 61, i16 29, i16 27, i16 25, i16 24, i16 23, i16 21, i16 19, i16 15, i16 14, i16 13, i16 12, i16 11, i16 6, i16 5, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56], align 16
@yy_def = internal constant [62 x i16] [i16 0, i16 57, i16 57, i16 58, i16 58, i16 56, i16 59, i16 56, i16 59, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 59, i16 56, i16 59, i16 56, i16 56, i16 60, i16 56, i16 59, i16 56, i16 56, i16 56, i16 60, i16 56, i16 59, i16 56, i16 56, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 56, i16 59, i16 61, i16 61, i16 56, i16 0, i16 56, i16 56, i16 56, i16 56, i16 56], align 16
@yy_meta = internal constant [24 x i32] [i32 0, i32 1, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_nxt = internal constant [108 x i16] [i16 0, i16 26, i16 56, i16 7, i16 7, i16 16, i16 23, i16 24, i16 16, i16 16, i16 16, i16 8, i16 8, i16 10, i16 34, i16 16, i16 16, i16 11, i16 12, i16 22, i16 13, i16 16, i16 14, i16 10, i16 16, i16 17, i16 16, i16 11, i16 12, i16 32, i16 13, i16 36, i16 14, i16 28, i16 16, i16 38, i16 16, i16 16, i16 16, i16 40, i16 42, i16 16, i16 16, i16 55, i16 55, i16 51, i16 46, i16 49, i16 47, i16 45, i16 44, i16 43, i16 41, i16 52, i16 50, i16 48, i16 39, i16 37, i16 35, i16 31, i16 33, i16 53, i16 6, i16 6, i16 9, i16 9, i16 15, i16 15, i16 54, i16 54, i16 29, i16 31, i16 30, i16 24, i16 29, i16 27, i16 25, i16 16, i16 21, i16 20, i16 19, i16 18, i16 16, i16 56, i16 5, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56, i16 56], align 16
@afmtext = common global i8* null, align 8
@afmleng = common global i32 0, align 4
@yy_rule_can_match_eol = internal constant [11 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0], align 16
@last_index_read = internal global i32 0, align 4
@last_wx_read = internal global i32 0, align 4
@font_info_being_parsed = internal global %struct.font_info* null, align 8
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"out of dynamic memory in afm_create_buffer()\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"out of dynamic memory in afm_scan_buffer()\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in afm_scan_bytes()\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"bad buffer in afm_scan_bytes()\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".afm\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"/f%s /%s findfont def\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".pfb\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".pfa\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".gsf\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"cannot find file `%s'\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"Dumping file `%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%%%%BeginResource: font %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Bad PostScript font file `%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%%%%EndResource\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@yy_buffer_stack_max = internal global i64 0, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Parsing file `%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pair_htable* @fonts_map_new() #0 {
entry:
  %call = call %struct.pair_htable* @pair_table_new()
  ret %struct.pair_htable* %call
}

declare %struct.pair_htable* @pair_table_new() #1

; Function Attrs: nounwind uwtable
define void @fonts_map_free(%struct.pair_htable* %table) #0 {
entry:
  %table.addr = alloca %struct.pair_htable*, align 8
  store %struct.pair_htable* %table, %struct.pair_htable** %table.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %table.addr, align 8
  call void @pair_table_free(%struct.pair_htable* %0)
  ret void
}

declare void @pair_table_free(%struct.pair_htable*) #1

; Function Attrs: nounwind uwtable
define i32 @load_main_fonts_map(%struct.a2ps_job* %job) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call i8* @xpw_find_file(i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null)
  store i8* %call, i8** %file, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i8*, i8** %file, align 8
  %call1 = call i32 @load_fonts_map(%struct.a2ps_job* %2, i8* %3)
  %4 = load i8*, i8** %file, align 8
  call void @free(i8* %4) #6
  ret i32 1
}

declare i8* @xpw_find_file(i8**, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_fonts_map(%struct.a2ps_job* %job, i8* %file) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %file.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 48
  %1 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call = call i32 @pair_table_load(%struct.pair_htable* %1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @afmlex() #0 {
entry:
  %retval = alloca i32, align 4
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_bp = alloca i8*, align 8
  %yy_act = alloca i32, align 4
  %yy_c = alloca i8, align 1
  %yyl = alloca i32, align 4
  %cursor = alloca i8*, align 8
  %cursor99 = alloca i8*, align 8
  %cursor115 = alloca i8*, align 8
  %cursor130 = alloca i8*, align 8
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
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @afmin, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @afmout, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @afmout, align 8
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
  call void @afmensure_buffer_stack()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %call = call %struct.yy_buffer_state* @afm_create_buffer(%struct._IO_FILE* %10, i32 16384)
  %11 = load i64, i64* @yy_buffer_stack_top, align 8
  %12 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx12 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %12, i64 %11
  store %struct.yy_buffer_state* %call, %struct.yy_buffer_state** %arrayidx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %cond.false, %cond.true
  call void @afm_load_buffer_state()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  br label %while.body

while.body:                                       ; preds = %if.end.14, %sw.epilog.194
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

yy_match:                                         ; preds = %sw.bb.181, %if.then.164, %while.body
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
  %arrayidx18 = getelementptr inbounds [57 x i16], [57 x i16]* @yy_accept, i32 0, i64 %idxprom17
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
  %arrayidx24 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom23
  %26 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %26 to i32
  %27 = load i8, i8* %yy_c, align 1
  %conv26 = zext i8 %27 to i32
  %add = add nsw i32 %conv25, %conv26
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_chk, i32 0, i64 %idxprom27
  %28 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %28 to i32
  %29 = load i32, i32* %yy_current_state, align 4
  %cmp = icmp ne i32 %conv29, %29
  br i1 %cmp, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.22
  %30 = load i32, i32* %yy_current_state, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_def, i32 0, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  store i32 %conv34, i32* %yy_current_state, align 4
  %32 = load i32, i32* %yy_current_state, align 4
  %cmp35 = icmp sge i32 %32, 57
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %while.body.31
  %33 = load i8, i8* %yy_c, align 1
  %conv38 = zext i8 %33 to i32
  %idxprom39 = zext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds [24 x i32], [24 x i32]* @yy_meta, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %conv41 = trunc i32 %34 to i8
  store i8 %conv41, i8* %yy_c, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %while.body.31
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  %35 = load i32, i32* %yy_current_state, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom43
  %36 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %36 to i32
  %37 = load i8, i8* %yy_c, align 1
  %conv46 = zext i8 %37 to i32
  %add47 = add i32 %conv45, %conv46
  %idxprom48 = zext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_nxt, i32 0, i64 %idxprom48
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
  %arrayidx52 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom51
  %41 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %41 to i32
  %cmp54 = icmp ne i32 %conv53, 84
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %yy_find_action

yy_find_action:                                   ; preds = %sw.bb.186, %if.else, %sw.bb, %do.end
  %42 = load i32, i32* %yy_current_state, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [57 x i16], [57 x i16]* @yy_accept, i32 0, i64 %idxprom56
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
  %arrayidx63 = getelementptr inbounds [57 x i16], [57 x i16]* @yy_accept, i32 0, i64 %idxprom62
  %48 = load i16, i16* %arrayidx63, align 2
  %conv64 = sext i16 %48 to i32
  store i32 %conv64, i32* %yy_act, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %yy_find_action
  %49 = load i8*, i8** %yy_bp, align 8
  store i8* %49, i8** @afmtext, align 8
  %50 = load i8*, i8** %yy_cp, align 8
  %51 = load i8*, i8** %yy_bp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv66 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv66, i32* @afmleng, align 4
  %52 = load i8*, i8** %yy_cp, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* @yy_hold_char, align 1
  %54 = load i8*, i8** %yy_cp, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %yy_cp, align 8
  store i8* %55, i8** @yy_c_buf_p, align 8
  %56 = load i32, i32* %yy_act, align 4
  %cmp67 = icmp ne i32 %56, 11
  br i1 %cmp67, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %if.end.65
  %57 = load i32, i32* %yy_act, align 4
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [11 x i32], [11 x i32]* @yy_rule_can_match_eol, i32 0, i64 %idxprom69
  %58 = load i32, i32* %arrayidx70, align 4
  %tobool71 = icmp ne i32 %58, 0
  br i1 %tobool71, label %if.then.72, label %if.end.83

if.then.72:                                       ; preds = %land.lhs.true
  store i32 0, i32* %yyl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %59 = load i32, i32* %yyl, align 4
  %60 = load i32, i32* @afmleng, align 4
  %cmp73 = icmp slt i32 %59, %60
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i32, i32* %yyl, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i8*, i8** @afmtext, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %62, i64 %idxprom75
  %63 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %63 to i32
  %cmp78 = icmp eq i32 %conv77, 10
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body
  %64 = load i32, i32* @afmlineno, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* @afmlineno, align 4
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

do_action:                                        ; preds = %if.then.171, %if.end.83
  %66 = load i32, i32* %yy_act, align 4
  switch i32 %66, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.84
    i32 2, label %sw.bb.85
    i32 3, label %sw.bb.86
    i32 4, label %sw.bb.87
    i32 5, label %sw.bb.98
    i32 6, label %sw.bb.114
    i32 7, label %sw.bb.129
    i32 8, label %sw.bb.132
    i32 9, label %sw.bb.133
    i32 10, label %sw.bb.134
    i32 12, label %sw.bb.137
    i32 13, label %sw.bb.137
    i32 11, label %sw.bb.138
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
  store i32 3, i32* @yy_start, align 4
  br label %sw.epilog.194

sw.bb.85:                                         ; preds = %do_action
  br label %sw.epilog.194

sw.bb.86:                                         ; preds = %do_action
  store i32 1, i32* @yy_start, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb.87:                                         ; preds = %do_action
  %71 = load i8*, i8** @afmtext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 3
  store i8* %add.ptr, i8** %cursor, align 8
  %72 = load i8*, i8** @afmtext, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %73 to i32
  %sub = sub nsw i32 %conv89, 48
  store i32 %sub, i32* @last_index_read, align 4
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.92, %sw.bb.87
  %74 = load i8*, i8** %cursor, align 8
  %75 = load i8, i8* %74, align 1
  %tobool91 = icmp ne i8 %75, 0
  br i1 %tobool91, label %while.body.92, label %while.end.97

while.body.92:                                    ; preds = %while.cond.90
  %76 = load i32, i32* @last_index_read, align 4
  %mul = mul nsw i32 10, %76
  %77 = load i8*, i8** %cursor, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr93, i8** %cursor, align 8
  %78 = load i8, i8* %77, align 1
  %conv94 = sext i8 %78 to i32
  %add95 = add nsw i32 %mul, %conv94
  %sub96 = sub nsw i32 %add95, 48
  store i32 %sub96, i32* @last_index_read, align 4
  br label %while.cond.90

while.end.97:                                     ; preds = %while.cond.90
  br label %sw.epilog.194

sw.bb.98:                                         ; preds = %do_action
  %79 = load i8*, i8** @afmtext, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %79, i64 4
  store i8* %add.ptr100, i8** %cursor99, align 8
  %80 = load i8*, i8** @afmtext, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %81 to i32
  %sub103 = sub nsw i32 %conv102, 48
  store i32 %sub103, i32* @last_index_read, align 4
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.106, %sw.bb.98
  %82 = load i8*, i8** %cursor99, align 8
  %83 = load i8, i8* %82, align 1
  %tobool105 = icmp ne i8 %83, 0
  br i1 %tobool105, label %while.body.106, label %while.end.112

while.body.106:                                   ; preds = %while.cond.104
  %84 = load i32, i32* @last_index_read, align 4
  %mul107 = mul nsw i32 10, %84
  %85 = load i8*, i8** %cursor99, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr108, i8** %cursor99, align 8
  %86 = load i8, i8* %85, align 1
  %conv109 = sext i8 %86 to i32
  %add110 = add nsw i32 %mul107, %conv109
  %sub111 = sub nsw i32 %add110, 48
  store i32 %sub111, i32* @last_index_read, align 4
  br label %while.cond.104

while.end.112:                                    ; preds = %while.cond.104
  %87 = load i32, i32* @last_index_read, align 4
  %sub113 = sub nsw i32 0, %87
  store i32 %sub113, i32* @last_index_read, align 4
  br label %sw.epilog.194

sw.bb.114:                                        ; preds = %do_action
  %88 = load i8*, i8** @afmtext, align 8
  %add.ptr116 = getelementptr inbounds i8, i8* %88, i64 4
  store i8* %add.ptr116, i8** %cursor115, align 8
  %89 = load i8*, i8** @afmtext, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %89, i64 3
  %90 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %90 to i32
  %sub119 = sub nsw i32 %conv118, 48
  store i32 %sub119, i32* @last_wx_read, align 4
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.122, %sw.bb.114
  %91 = load i8*, i8** %cursor115, align 8
  %92 = load i8, i8* %91, align 1
  %tobool121 = icmp ne i8 %92, 0
  br i1 %tobool121, label %while.body.122, label %while.end.128

while.body.122:                                   ; preds = %while.cond.120
  %93 = load i32, i32* @last_wx_read, align 4
  %mul123 = mul i32 10, %93
  %94 = load i8*, i8** %cursor115, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr124, i8** %cursor115, align 8
  %95 = load i8, i8* %94, align 1
  %conv125 = sext i8 %95 to i32
  %add126 = add i32 %mul123, %conv125
  %sub127 = sub i32 %add126, 48
  store i32 %sub127, i32* @last_wx_read, align 4
  br label %while.cond.120

while.end.128:                                    ; preds = %while.cond.120
  br label %sw.epilog.194

sw.bb.129:                                        ; preds = %do_action
  %96 = load i8*, i8** @afmtext, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %add.ptr131, i8** %cursor130, align 8
  %97 = load %struct.font_info*, %struct.font_info** @font_info_being_parsed, align 8
  %wx = getelementptr inbounds %struct.font_info, %struct.font_info* %97, i32 0, i32 1
  %98 = load %struct.hash_table_s*, %struct.hash_table_s** %wx, align 8
  %99 = load i8*, i8** %cursor130, align 8
  %100 = load i32, i32* @last_index_read, align 4
  %101 = load i32, i32* @last_wx_read, align 4
  call void @wx_entry_add(%struct.hash_table_s* %98, i8* %99, i32 %100, i32 %101)
  br label %sw.epilog.194

sw.bb.132:                                        ; preds = %do_action
  br label %sw.epilog.194

sw.bb.133:                                        ; preds = %do_action
  br label %sw.epilog.194

sw.bb.134:                                        ; preds = %do_action
  %102 = load i8*, i8** @afmtext, align 8
  %103 = load i32, i32* @afmleng, align 4
  %conv135 = sext i32 %103 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @afmout, align 8
  %call136 = call i64 @fwrite(i8* %102, i64 %conv135, i64 1, %struct._IO_FILE* %104)
  br label %sw.epilog.194

sw.bb.137:                                        ; preds = %do_action, %do_action
  store i32 0, i32* %retval
  br label %return

sw.bb.138:                                        ; preds = %do_action
  %105 = load i8*, i8** %yy_cp, align 8
  %106 = load i8*, i8** @afmtext, align 8
  %sub.ptr.lhs.cast139 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast140 = ptrtoint i8* %106 to i64
  %sub.ptr.sub141 = sub i64 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  %conv142 = trunc i64 %sub.ptr.sub141 to i32
  %sub143 = sub nsw i32 %conv142, 1
  store i32 %sub143, i32* %yy_amount_of_matched_text, align 4
  %107 = load i8, i8* @yy_hold_char, align 1
  %108 = load i8*, i8** %yy_cp, align 8
  store i8 %107, i8* %108, align 1
  %109 = load i64, i64* @yy_buffer_stack_top, align 8
  %110 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx144 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %110, i64 %109
  %111 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx144, align 8
  %yy_buffer_status = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %111, i32 0, i32 11
  %112 = load i32, i32* %yy_buffer_status, align 4
  %cmp145 = icmp eq i32 %112, 0
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %sw.bb.138
  %113 = load i64, i64* @yy_buffer_stack_top, align 8
  %114 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx148 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %114, i64 %113
  %115 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx148, align 8
  %yy_n_chars = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %115, i32 0, i32 4
  %116 = load i32, i32* %yy_n_chars, align 4
  store i32 %116, i32* @yy_n_chars, align 4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %118 = load i64, i64* @yy_buffer_stack_top, align 8
  %119 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx149 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %119, i64 %118
  %120 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx149, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %120, i32 0, i32 0
  store %struct._IO_FILE* %117, %struct._IO_FILE** %yy_input_file, align 8
  %121 = load i64, i64* @yy_buffer_stack_top, align 8
  %122 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx150 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %122, i64 %121
  %123 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx150, align 8
  %yy_buffer_status151 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %123, i32 0, i32 11
  store i32 1, i32* %yy_buffer_status151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.147, %sw.bb.138
  %124 = load i8*, i8** @yy_c_buf_p, align 8
  %125 = load i32, i32* @yy_n_chars, align 4
  %idxprom153 = sext i32 %125 to i64
  %126 = load i64, i64* @yy_buffer_stack_top, align 8
  %127 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx154 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %127, i64 %126
  %128 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx154, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %128, i32 0, i32 1
  %129 = load i8*, i8** %yy_ch_buf, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %129, i64 %idxprom153
  %cmp156 = icmp ule i8* %124, %arrayidx155
  br i1 %cmp156, label %if.then.158, label %if.else.166

if.then.158:                                      ; preds = %if.end.152
  %130 = load i8*, i8** @afmtext, align 8
  %131 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext = sext i32 %131 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %130, i64 %idx.ext
  store i8* %add.ptr159, i8** @yy_c_buf_p, align 8
  %call160 = call i32 @yy_get_previous_state()
  store i32 %call160, i32* %yy_current_state, align 4
  %132 = load i32, i32* %yy_current_state, align 4
  %call161 = call i32 @yy_try_NUL_trans(i32 %132)
  store i32 %call161, i32* %yy_next_state, align 4
  %133 = load i8*, i8** @afmtext, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %133, i64 0
  store i8* %add.ptr162, i8** %yy_bp, align 8
  %134 = load i32, i32* %yy_next_state, align 4
  %tobool163 = icmp ne i32 %134, 0
  br i1 %tobool163, label %if.then.164, label %if.else

if.then.164:                                      ; preds = %if.then.158
  %135 = load i8*, i8** @yy_c_buf_p, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr165, i8** @yy_c_buf_p, align 8
  store i8* %incdec.ptr165, i8** %yy_cp, align 8
  %136 = load i32, i32* %yy_next_state, align 4
  store i32 %136, i32* %yy_current_state, align 4
  br label %yy_match

if.else:                                          ; preds = %if.then.158
  %137 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %137, i8** %yy_cp, align 8
  br label %yy_find_action

if.else.166:                                      ; preds = %if.end.152
  %call167 = call i32 @yy_get_next_buffer()
  switch i32 %call167, label %sw.epilog [
    i32 1, label %sw.bb.168
    i32 0, label %sw.bb.181
    i32 2, label %sw.bb.186
  ]

sw.bb.168:                                        ; preds = %if.else.166
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %call169 = call i32 @afmwrap()
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.else.176

if.then.171:                                      ; preds = %sw.bb.168
  %138 = load i8*, i8** @afmtext, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %138, i64 0
  store i8* %add.ptr172, i8** @yy_c_buf_p, align 8
  %139 = load i32, i32* @yy_start, align 4
  %sub173 = sub nsw i32 %139, 1
  %div = sdiv i32 %sub173, 2
  %add174 = add nsw i32 11, %div
  %add175 = add nsw i32 %add174, 1
  store i32 %add175, i32* %yy_act, align 4
  br label %do_action

if.else.176:                                      ; preds = %sw.bb.168
  %140 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %tobool177 = icmp ne i32 %140, 0
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %if.else.176
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  call void @afmrestart(%struct._IO_FILE* %141)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.else.176
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.else.166
  %142 = load i8*, i8** @afmtext, align 8
  %143 = load i32, i32* %yy_amount_of_matched_text, align 4
  %idx.ext182 = sext i32 %143 to i64
  %add.ptr183 = getelementptr inbounds i8, i8* %142, i64 %idx.ext182
  store i8* %add.ptr183, i8** @yy_c_buf_p, align 8
  %call184 = call i32 @yy_get_previous_state()
  store i32 %call184, i32* %yy_current_state, align 4
  %144 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %144, i8** %yy_cp, align 8
  %145 = load i8*, i8** @afmtext, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %145, i64 0
  store i8* %add.ptr185, i8** %yy_bp, align 8
  br label %yy_match

sw.bb.186:                                        ; preds = %if.else.166
  %146 = load i32, i32* @yy_n_chars, align 4
  %idxprom187 = sext i32 %146 to i64
  %147 = load i64, i64* @yy_buffer_stack_top, align 8
  %148 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx188 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %148, i64 %147
  %149 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx188, align 8
  %yy_ch_buf189 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %149, i32 0, i32 1
  %150 = load i8*, i8** %yy_ch_buf189, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %150, i64 %idxprom187
  store i8* %arrayidx190, i8** @yy_c_buf_p, align 8
  %call191 = call i32 @yy_get_previous_state()
  store i32 %call191, i32* %yy_current_state, align 4
  %151 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %151, i8** %yy_cp, align 8
  %152 = load i8*, i8** @afmtext, align 8
  %add.ptr192 = getelementptr inbounds i8, i8* %152, i64 0
  store i8* %add.ptr192, i8** %yy_bp, align 8
  br label %yy_find_action

sw.epilog:                                        ; preds = %if.else.166, %if.end.180
  br label %if.end.193

if.end.193:                                       ; preds = %sw.epilog
  br label %sw.epilog.194

sw.default:                                       ; preds = %do_action
  call void @yy_fatal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog.194

sw.epilog.194:                                    ; preds = %sw.default, %if.end.193, %sw.bb.134, %sw.bb.133, %sw.bb.132, %sw.bb.129, %while.end.128, %while.end.112, %while.end.97, %sw.bb.85, %sw.bb.84
  br label %while.body

return:                                           ; preds = %sw.bb.137, %sw.bb.86
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal void @afmensure_buffer_stack() #0 {
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
  %call = call i8* @afmalloc(i32 %conv1)
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
  %call12 = call i8* @afmrealloc(i8* %12, i32 %conv11)
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
define %struct.yy_buffer_state* @afm_create_buffer(%struct._IO_FILE* %file, i32 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i32, align 4
  %b = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @afmalloc(i32 64)
  %0 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %b, align 8
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
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
  %call2 = call i8* @afmalloc(i32 %add)
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 1
  store i8* %call2, i8** %yy_ch_buf, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_ch_buf3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %8 = load i8*, i8** %yy_ch_buf3, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @afm_init_buffer(%struct.yy_buffer_state* %10, %struct._IO_FILE* %11)
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %12
}

; Function Attrs: nounwind uwtable
define internal void @afm_load_buffer_state() #0 {
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
  store i8* %7, i8** @afmtext, align 8
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx2 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  %10 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %arrayidx2, align 8
  %yy_input_file = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %10, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %yy_input_file, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** @afmin, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* @yy_hold_char, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wx_entry_add(%struct.hash_table_s* %table, i8* %glyph, i32 %the_index, i32 %wx) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  %glyph.addr = alloca i8*, align 8
  %the_index.addr = alloca i32, align 4
  %wx.addr = alloca i32, align 4
  %item = alloca %struct.wx_entry*, align 8
  %token = alloca %struct.wx_entry, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %glyph, i8** %glyph.addr, align 8
  store i32 %the_index, i32* %the_index.addr, align 4
  store i32 %wx, i32* %wx.addr, align 4
  %0 = load i8*, i8** %glyph.addr, align 8
  %glyph1 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %token, i32 0, i32 0
  store i8* %0, i8** %glyph1, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.wx_entry* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.wx_entry*
  store %struct.wx_entry* %3, %struct.wx_entry** %item, align 8
  %4 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %tobool = icmp ne %struct.wx_entry* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i8* @xmalloc(i64 16)
  %5 = bitcast i8* %call2 to %struct.wx_entry*
  store %struct.wx_entry* %5, %struct.wx_entry** %item, align 8
  %6 = load i8*, i8** %glyph.addr, align 8
  %call3 = call i8* @xstrdup(i8* %6)
  %7 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %glyph4 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %7, i32 0, i32 0
  store i8* %call3, i8** %glyph4, align 8
  %8 = load i32, i32* %wx.addr, align 4
  %9 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %wx5 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %9, i32 0, i32 2
  store i32 %8, i32* %wx5, align 4
  %10 = load i32, i32* %the_index.addr, align 4
  %11 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %index = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %11, i32 0, i32 1
  store i32 %10, i32* %index, align 4
  %12 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %13 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %14 = bitcast %struct.wx_entry* %13 to i8*
  %call6 = call i8* @hash_insert(%struct.hash_table_s* %12, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
entry:
  %yy_current_state = alloca i32, align 4
  %yy_cp = alloca i8*, align 8
  %yy_c = alloca i8, align 1
  %0 = load i32, i32* @yy_start, align 4
  store i32 %0, i32* %yy_current_state, align 4
  %1 = load i8*, i8** @afmtext, align 8
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
  %arrayidx4 = getelementptr inbounds [57 x i16], [57 x i16]* @yy_accept, i32 0, i64 %idxprom3
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
  %arrayidx7 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom6
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %15 = load i8, i8* %yy_c, align 1
  %conv9 = zext i8 %15 to i32
  %add = add nsw i32 %conv8, %conv9
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_chk, i32 0, i64 %idxprom10
  %16 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %16 to i32
  %17 = load i32, i32* %yy_current_state, align 4
  %cmp13 = icmp ne i32 %conv12, %17
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %yy_current_state, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_def, i32 0, i64 %idxprom15
  %19 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, i32* %yy_current_state, align 4
  %20 = load i32, i32* %yy_current_state, align 4
  %cmp18 = icmp sge i32 %20, 57
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %while.body
  %21 = load i8, i8* %yy_c, align 1
  %conv21 = zext i8 %21 to i32
  %idxprom22 = zext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [24 x i32], [24 x i32]* @yy_meta, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %conv24 = trunc i32 %22 to i8
  store i8 %conv24, i8* %yy_c, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %yy_current_state, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom26
  %24 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %24 to i32
  %25 = load i8, i8* %yy_c, align 1
  %conv29 = zext i8 %25 to i32
  %add30 = add i32 %conv28, %conv29
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_nxt, i32 0, i64 %idxprom31
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
  %arrayidx = getelementptr inbounds [57 x i16], [57 x i16]* @yy_accept, i32 0, i64 %idxprom
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
  %arrayidx2 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom1
  %6 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %6 to i32
  %7 = load i8, i8* %yy_c, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv, %conv3
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_chk, i32 0, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %9 = load i32, i32* %yy_current_state.addr, align 4
  %cmp = icmp ne i32 %conv6, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_def, i32 0, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %11 to i32
  store i32 %conv10, i32* %yy_current_state.addr, align 4
  %12 = load i32, i32* %yy_current_state.addr, align 4
  %cmp11 = icmp sge i32 %12, 57
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %while.body
  %13 = load i8, i8* %yy_c, align 1
  %conv14 = zext i8 %13 to i32
  %idxprom15 = zext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [24 x i32], [24 x i32]* @yy_meta, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %conv17 = trunc i32 %14 to i8
  store i8 %conv17, i8* %yy_c, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %yy_current_state.addr, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [62 x i16], [62 x i16]* @yy_base, i32 0, i64 %idxprom19
  %16 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %16 to i32
  %17 = load i8, i8* %yy_c, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add i32 %conv21, %conv22
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [108 x i16], [108 x i16]* @yy_nxt, i32 0, i64 %idxprom24
  %18 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %18 to i32
  store i32 %conv26, i32* %yy_current_state.addr, align 4
  %19 = load i32, i32* %yy_current_state.addr, align 4
  %cmp27 = icmp eq i32 %19, 56
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
  %4 = load i8*, i8** @afmtext, align 8
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i32 0, i32 0))
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
  %16 = load i8*, i8** @afmtext, align 8
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
  %18 = load i8*, i8** @afmtext, align 8
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
  %call = call i8* @afmrealloc(i8* %57, i32 %add49)
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0))
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
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
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
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %call105 = call i32 @ferror(%struct._IO_FILE* %99) #6
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0))
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
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %call118 = call i64 @fread(i8* %arrayidx116, i64 1, i64 %conv117, %struct._IO_FILE* %107)
  %conv119 = trunc i64 %call118 to i32
  store i32 %conv119, i32* @yy_n_chars, align 4
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.rhs.122, label %land.end.125

land.rhs.122:                                     ; preds = %while.cond.112
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %call123 = call i32 @ferror(%struct._IO_FILE* %108) #6
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
  call void @yy_fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0))
  br label %while.end.133

if.end.131:                                       ; preds = %while.body.126
  %call132 = call i32* @__errno_location() #8
  store i32 0, i32* %call132, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  call void @clearerr(%struct._IO_FILE* %111) #6
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
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  call void @afmrestart(%struct._IO_FILE* %118)
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
  store i8* %arrayidx162, i8** @afmtext, align 8
  %138 = load i32, i32* %ret_val, align 4
  store i32 %138, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.else, %if.then.8
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define i32 @afmwrap() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @afmrestart(%struct._IO_FILE* %input_file) #0 {
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
  call void @afmensure_buffer_stack()
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  %call = call %struct.yy_buffer_state* @afm_create_buffer(%struct._IO_FILE* %4, i32 16384)
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
  call void @afm_init_buffer(%struct.yy_buffer_state* %cond, %struct._IO_FILE* %11)
  call void @afm_load_buffer_state()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_fatal_error(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %1)
  call void @exit(i32 2) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @afm_init_buffer(%struct.yy_buffer_state* %b, %struct._IO_FILE* %file) #0 {
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
  call void @afm_flush_buffer(%struct.yy_buffer_state* %1)
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
  %call3 = call i32 @fileno(%struct._IO_FILE* %13) #6
  %call4 = call i32 @isatty(i32 %call3) #6
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
define void @afm_switch_to_buffer(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  call void @afmensure_buffer_stack()
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
  call void @afm_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @afmalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @afm_delete_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @afmfree(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b.addr, align 8
  %13 = bitcast %struct.yy_buffer_state* %12 to i8*
  call void @afmfree(i8* %13)
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @afmfree(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @afm_flush_buffer(%struct.yy_buffer_state* %b) #0 {
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
  call void @afm_load_buffer_state()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @afmpush_buffer_state(%struct.yy_buffer_state* %new_buffer) #0 {
entry:
  %new_buffer.addr = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %new_buffer, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %0 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %new_buffer.addr, align 8
  %cmp = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @afmensure_buffer_stack()
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
  call void @afm_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @afmpop_buffer_state() #0 {
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
  call void @afm_delete_buffer(%struct.yy_buffer_state* %cond)
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
  call void @afm_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then, %if.then.14, %cond.false.13, %cond.true.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @afm_scan_buffer(i8* %base, i32 %size) #0 {
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
  %call = call i8* @afmalloc(i32 64)
  %7 = bitcast i8* %call to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %b, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
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
  call void @afm_switch_to_buffer(%struct.yy_buffer_state* %23)
  %24 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  store %struct.yy_buffer_state* %24, %struct.yy_buffer_state** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %retval
  ret %struct.yy_buffer_state* %25
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @afm_scan_string(i8* %yystr) #0 {
entry:
  %yystr.addr = alloca i8*, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %1) #10
  %conv = trunc i64 %call to i32
  %call1 = call %struct.yy_buffer_state* @afm_scan_bytes(i8* %0, i32 %conv)
  ret %struct.yy_buffer_state* %call1
}

; Function Attrs: nounwind uwtable
define %struct.yy_buffer_state* @afm_scan_bytes(i8* %yybytes, i32 %_yybytes_len) #0 {
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
  %call = call i8* @afmalloc(i32 %1)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @yy_fatal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
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
  %call8 = call %struct.yy_buffer_state* @afm_scan_buffer(i8* %15, i32 %16)
  store %struct.yy_buffer_state* %call8, %struct.yy_buffer_state** %b, align 8
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %tobool9 = icmp ne %struct.yy_buffer_state* %17, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %for.end
  call void @yy_fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  %yy_is_our_buffer = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 5
  store i32 1, i32* %yy_is_our_buffer, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %b, align 8
  ret %struct.yy_buffer_state* %19
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @afmget_lineno() #0 {
entry:
  %0 = load i32, i32* @afmlineno, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @afmget_in() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @afmin, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @afmget_out() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @afmout, align 8
  ret %struct._IO_FILE* %0
}

; Function Attrs: nounwind uwtable
define i32 @afmget_leng() #0 {
entry:
  %0 = load i32, i32* @afmleng, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i8* @afmget_text() #0 {
entry:
  %0 = load i8*, i8** @afmtext, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @afmset_lineno(i32 %line_number) #0 {
entry:
  %line_number.addr = alloca i32, align 4
  store i32 %line_number, i32* %line_number.addr, align 4
  %0 = load i32, i32* %line_number.addr, align 4
  store i32 %0, i32* @afmlineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @afmset_in(%struct._IO_FILE* %in_str) #0 {
entry:
  %in_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_str, %struct._IO_FILE** %in_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @afmin, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @afmset_out(%struct._IO_FILE* %out_str) #0 {
entry:
  %out_str.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out_str, %struct._IO_FILE** %out_str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out_str.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @afmout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @afmget_debug() #0 {
entry:
  %0 = load i32, i32* @afm_flex_debug, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @afmset_debug(i32 %bdebug) #0 {
entry:
  %bdebug.addr = alloca i32, align 4
  store i32 %bdebug, i32* %bdebug.addr, align 4
  %0 = load i32, i32* %bdebug.addr, align 4
  store i32 %0, i32* @afm_flex_debug, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @afmlex_destroy() #0 {
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
  call void @afm_delete_buffer(%struct.yy_buffer_state* %cond7)
  %8 = load i64, i64* @yy_buffer_stack_top, align 8
  %9 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %arrayidx8 = getelementptr inbounds %struct.yy_buffer_state*, %struct.yy_buffer_state** %9, i64 %8
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %arrayidx8, align 8
  call void @afmpop_buffer_state()
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %10 = load %struct.yy_buffer_state**, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %11 = bitcast %struct.yy_buffer_state** %10 to i8*
  call void @afmfree(i8* %11)
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  %call = call i32 @yy_init_globals()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @yy_init_globals() #0 {
entry:
  store i32 1, i32* @afmlineno, align 4
  store %struct.yy_buffer_state** null, %struct.yy_buffer_state*** @yy_buffer_stack, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  store i64 0, i64* @yy_buffer_stack_max, align 8
  store i8* null, i8** @yy_c_buf_p, align 8
  store i32 0, i32* @yy_init, align 4
  store i32 0, i32* @yy_start, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @afmin, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @afmout, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @afmrealloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @realloc(i8* %0, i64 %conv) #6
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @font_info_table_new() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* bitcast (i64 (%struct.font_info*)* @font_info_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.font_info*)* @font_info_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.font_info*, %struct.font_info*)* @font_info_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

declare i8* @xmalloc(i64) #1

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @font_info_hash_1(%struct.font_info* %font_info) #0 {
entry:
  %font_info.addr = alloca %struct.font_info*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.font_info* %font_info, %struct.font_info** %font_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.font_info*, %struct.font_info** %font_info.addr, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @font_info_hash_2(%struct.font_info* %font_info) #0 {
entry:
  %font_info.addr = alloca %struct.font_info*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.font_info* %font_info, %struct.font_info** %font_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.font_info*, %struct.font_info** %font_info.addr, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @font_info_hash_cmp(%struct.font_info* %x, %struct.font_info* %y) #0 {
entry:
  %x.addr = alloca %struct.font_info*, align 8
  %y.addr = alloca %struct.font_info*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.font_info* %x, %struct.font_info** %x.addr, align 8
  store %struct.font_info* %y, %struct.font_info** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.font_info*, %struct.font_info** %x.addr, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.font_info*, %struct.font_info** %y.addr, align 8
  %key2 = getelementptr inbounds %struct.font_info, %struct.font_info* %2, i32 0, i32 0
  %3 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @font_info_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.font_info*)* @hash_free_font_info to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #6
  ret void
}

declare void @hash_free(%struct.hash_table_s*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @hash_free_font_info(%struct.font_info* %font_info) #0 {
entry:
  %font_info.addr = alloca %struct.font_info*, align 8
  store %struct.font_info* %font_info, %struct.font_info** %font_info.addr, align 8
  %0 = load %struct.font_info*, %struct.font_info** %font_info.addr, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  call void @free(i8* %1) #6
  %2 = load %struct.font_info*, %struct.font_info** %font_info.addr, align 8
  %wx = getelementptr inbounds %struct.font_info, %struct.font_info* %2, i32 0, i32 1
  %3 = load %struct.hash_table_s*, %struct.hash_table_s** %wx, align 8
  call void @wx_entry_table_free(%struct.hash_table_s* %3)
  %4 = load %struct.font_info*, %struct.font_info** %font_info.addr, align 8
  %5 = bitcast %struct.font_info* %4 to i8*
  call void @free(i8* %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @font_info_add(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %font = alloca %struct.font_info*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct.font_info* @font_info_new(i8* %0)
  store %struct.font_info* %call, %struct.font_info** %font, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %2 = load %struct.font_info*, %struct.font_info** %font, align 8
  call void @font_info_finalize(%struct.a2ps_job* %1, %struct.font_info* %2)
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %font_infos = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 49
  %4 = load %struct.hash_table_s*, %struct.hash_table_s** %font_infos, align 8
  %5 = load %struct.font_info*, %struct.font_info** %font, align 8
  %6 = bitcast %struct.font_info* %5 to i8*
  %call1 = call i8* @hash_insert(%struct.hash_table_s* %4, i8* %6)
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %8 = load i8*, i8** %key.addr, align 8
  call void @add_required_font(%struct.a2ps_job* %7, i8* %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.font_info* @font_info_new(i8* %key) #4 {
entry:
  %key.addr = alloca i8*, align 8
  %res = alloca %struct.font_info*, align 8
  store i8* %key, i8** %key.addr, align 8
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.font_info*
  store %struct.font_info* %0, %struct.font_info** %res, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load %struct.font_info*, %struct.font_info** %res, align 8
  %key2 = getelementptr inbounds %struct.font_info, %struct.font_info* %2, i32 0, i32 0
  store i8* %call1, i8** %key2, align 8
  %call3 = call %struct.hash_table_s* @wx_entry_table_new()
  %3 = load %struct.font_info*, %struct.font_info** %res, align 8
  %wx = getelementptr inbounds %struct.font_info, %struct.font_info* %3, i32 0, i32 1
  store %struct.hash_table_s* %call3, %struct.hash_table_s** %wx, align 8
  %4 = load %struct.font_info*, %struct.font_info** %res, align 8
  ret %struct.font_info* %4
}

; Function Attrs: nounwind uwtable
define internal void @font_info_finalize(%struct.a2ps_job* %job, %struct.font_info* %font) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %font.addr = alloca %struct.font_info*, align 8
  %file = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store %struct.font_info* %font, %struct.font_info** %font.addr, align 8
  store i32 0, i32* @afmlineno, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 48
  %1 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map, align 8
  %2 = load %struct.font_info*, %struct.font_info** %font.addr, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %call = call i8* @fonts_map_resolve_alias(%struct.pair_htable* %1, i8* %3)
  store i8* %call, i8** %filename, align 8
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %5 = load i8**, i8*** %path, align 8
  %6 = load i8*, i8** %filename, align 8
  %call1 = call i8* @xpw_find_file(i8** %5, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call1, i8** %file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 2368, %7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %file, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load i8*, i8** %file, align 8
  %call3 = call %struct._IO_FILE* @xrfopen(i8* %10)
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %stream, align 8
  %11 = load %struct.font_info*, %struct.font_info** %font.addr, align 8
  store %struct.font_info* %11, %struct.font_info** @font_info_being_parsed, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void @afmrestart(%struct._IO_FILE* %12)
  %call4 = call i32 @afmlex()
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load i8*, i8** %file, align 8
  call void @free(i8* %14) #6
  ret void
}

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

declare void @add_required_font(%struct.a2ps_job*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @font_is_to_reencode(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #10
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @font_info_get_wx_for_vector(%struct.a2ps_job* %job, i8* %key, i8** %vector, i32* %wx) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %vector.addr = alloca i8**, align 8
  %wx.addr = alloca i32*, align 8
  %font_info = alloca %struct.font_info*, align 8
  %sorted_by_index = alloca %struct.wx_entry**, align 8
  %c = alloca i32, align 4
  %the_index = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8** %vector, i8*** %vector.addr, align 8
  store i32* %wx, i32** %wx.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct.font_info* @font_info_get(%struct.a2ps_job* %0, i8* %1)
  store %struct.font_info* %call, %struct.font_info** %font_info, align 8
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @font_is_to_reencode(%struct.a2ps_job* %2, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.font_info*, %struct.font_info** %font_info, align 8
  %wx2 = getelementptr inbounds %struct.font_info, %struct.font_info* %5, i32 0, i32 1
  %6 = load %struct.hash_table_s*, %struct.hash_table_s** %wx2, align 8
  %7 = load i32, i32* %c, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %vector.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @wx_entry_get_wx(%struct.hash_table_s* %6, i8* %9)
  %10 = load i32, i32* %c, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32*, i32** %wx.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  store i32 %call3, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %c, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.else:                                          ; preds = %entry
  store i32 0, i32* %c, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %if.else
  %13 = load i32, i32* %c, align 4
  %cmp7 = icmp slt i32 %13, 256
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i32, i32* %c, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32*, i32** %wx.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %16 = load i32, i32* %c, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %c, align 4
  br label %for.cond.6

for.end.13:                                       ; preds = %for.cond.6
  %17 = load %struct.font_info*, %struct.font_info** %font_info, align 8
  %wx14 = getelementptr inbounds %struct.font_info, %struct.font_info* %17, i32 0, i32 1
  %18 = load %struct.hash_table_s*, %struct.hash_table_s** %wx14, align 8
  %call15 = call %struct.wx_entry** @wx_entry_get_in_index_order(%struct.hash_table_s* %18)
  store %struct.wx_entry** %call15, %struct.wx_entry*** %sorted_by_index, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.31, %for.end.13
  %19 = load i32, i32* %c, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.wx_entry**, %struct.wx_entry*** %sorted_by_index, align 8
  %arrayidx18 = getelementptr inbounds %struct.wx_entry*, %struct.wx_entry** %20, i64 %idxprom17
  %21 = load %struct.wx_entry*, %struct.wx_entry** %arrayidx18, align 8
  %tobool19 = icmp ne %struct.wx_entry* %21, null
  br i1 %tobool19, label %for.body.20, label %for.end.33

for.body.20:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %c, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.wx_entry**, %struct.wx_entry*** %sorted_by_index, align 8
  %arrayidx22 = getelementptr inbounds %struct.wx_entry*, %struct.wx_entry** %23, i64 %idxprom21
  %24 = load %struct.wx_entry*, %struct.wx_entry** %arrayidx22, align 8
  %index = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %24, i32 0, i32 1
  %25 = load i32, i32* %index, align 4
  store i32 %25, i32* %the_index, align 4
  %26 = load i32, i32* %the_index, align 4
  %cmp23 = icmp sle i32 0, %26
  br i1 %cmp23, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.20
  %27 = load i32, i32* %the_index, align 4
  %cmp24 = icmp slt i32 %27, 256
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %c, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load %struct.wx_entry**, %struct.wx_entry*** %sorted_by_index, align 8
  %arrayidx27 = getelementptr inbounds %struct.wx_entry*, %struct.wx_entry** %29, i64 %idxprom26
  %30 = load %struct.wx_entry*, %struct.wx_entry** %arrayidx27, align 8
  %wx28 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %30, i32 0, i32 2
  %31 = load i32, i32* %wx28, align 4
  %32 = load i32, i32* %the_index, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32*, i32** %wx.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %33, i64 %idxprom29
  store i32 %31, i32* %arrayidx30, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %land.lhs.true, %for.body.20
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end
  %34 = load i32, i32* %c, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, i32* %c, align 4
  br label %for.cond.16

for.end.33:                                       ; preds = %for.cond.16
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.font_info* @font_info_get(%struct.a2ps_job* %job, i8* %key) #4 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %token = alloca %struct.font_info, align 8
  %res = alloca %struct.font_info*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.font_info, %struct.font_info* %token, i32 0, i32 0
  store i8* %0, i8** %key1, align 8
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %font_infos = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %1, i32 0, i32 49
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %font_infos, align 8
  %3 = bitcast %struct.font_info* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %2, i8* %3)
  %4 = bitcast i8* %call to %struct.font_info*
  store %struct.font_info* %4, %struct.font_info** %res, align 8
  %5 = load %struct.font_info*, %struct.font_info** %res, align 8
  %tobool = icmp ne %struct.font_info* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %7 = load i8*, i8** %key.addr, align 8
  call void @font_info_add(%struct.a2ps_job* %6, i8* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %font_infos2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %8, i32 0, i32 49
  %9 = load %struct.hash_table_s*, %struct.hash_table_s** %font_infos2, align 8
  %10 = bitcast %struct.font_info* %token to i8*
  %call3 = call i8* @hash_find_item(%struct.hash_table_s* %9, i8* %10)
  %11 = bitcast i8* %call3 to %struct.font_info*
  store %struct.font_info* %11, %struct.font_info** %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.font_info*, %struct.font_info** %res, align 8
  ret %struct.font_info* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @wx_entry_get_wx(%struct.hash_table_s* %table, i8* %glyph) #4 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.hash_table_s*, align 8
  %glyph.addr = alloca i8*, align 8
  %item = alloca %struct.wx_entry*, align 8
  %token = alloca %struct.wx_entry, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  store i8* %glyph, i8** %glyph.addr, align 8
  %0 = load i8*, i8** %glyph.addr, align 8
  %glyph1 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %token, i32 0, i32 0
  store i8* %0, i8** %glyph1, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.wx_entry* %token to i8*
  %call = call i8* @hash_find_item(%struct.hash_table_s* %1, i8* %2)
  %3 = bitcast i8* %call to %struct.wx_entry*
  store %struct.wx_entry* %3, %struct.wx_entry** %item, align 8
  %4 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %tobool = icmp ne %struct.wx_entry* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.wx_entry*, %struct.wx_entry** %item, align 8
  %wx = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %5, i32 0, i32 2
  %6 = load i32, i32* %wx, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.wx_entry** @wx_entry_get_in_index_order(%struct.hash_table_s* %table) #4 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %0, i8** null, i32 (i8*, i8*)* bitcast (i32 (%struct.wx_entry**, %struct.wx_entry**)* @wx_entry_hash_index_qcmp to i32 (i8*, i8*)*))
  %1 = bitcast i8** %call to %struct.wx_entry**
  ret %struct.wx_entry** %1
}

; Function Attrs: nounwind uwtable
define i32 @font_exists(%struct.a2ps_job* %job, i8* %key) #0 {
entry:
  %job.addr = alloca %struct.a2ps_job*, align 8
  %key.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 48
  %1 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i8* @fonts_map_resolve_alias(%struct.pair_htable* %1, i8* %2)
  store i8* %call, i8** %filename, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %4 = load i8**, i8*** %path, align 8
  %5 = load i8*, i8** %filename, align 8
  %call1 = call i32 @pw_file_exists_p(i8** %4, i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i8* @fonts_map_resolve_alias(%struct.pair_htable* %fonts_map, i8* %fontname) #0 {
entry:
  %retval = alloca i8*, align 8
  %fonts_map.addr = alloca %struct.pair_htable*, align 8
  %fontname.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  store %struct.pair_htable* %fonts_map, %struct.pair_htable** %fonts_map.addr, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  %0 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map.addr, align 8
  %1 = load i8*, i8** %fontname.addr, align 8
  %call = call i8* @pair_get(%struct.pair_htable* %0, i8* %1)
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %res, align 8
  store i8* %3, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %fontname.addr, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare i32 @pw_file_exists_p(i8**, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @font_info_table_dump_special_font_setup(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %fonts = alloca %struct.font_info**, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %font_infos = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 49
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %font_infos, align 8
  %call = call i8** @hash_dump(%struct.hash_table_s* %1, i8** null, i32 (i8*, i8*)* null)
  %2 = bitcast i8** %call to %struct.font_info**
  store %struct.font_info** %2, %struct.font_info*** %fonts, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.font_info**, %struct.font_info*** %fonts, align 8
  %arrayidx = getelementptr inbounds %struct.font_info*, %struct.font_info** %4, i64 %idxprom
  %5 = load %struct.font_info*, %struct.font_info** %arrayidx, align 8
  %tobool = icmp ne %struct.font_info* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.font_info**, %struct.font_info*** %fonts, align 8
  %arrayidx2 = getelementptr inbounds %struct.font_info*, %struct.font_info** %8, i64 %idxprom1
  %9 = load %struct.font_info*, %struct.font_info** %arrayidx2, align 8
  %key = getelementptr inbounds %struct.font_info, %struct.font_info* %9, i32 0, i32 0
  %10 = load i8*, i8** %key, align 8
  %call3 = call i32 @font_is_to_reencode(%struct.a2ps_job* %6, i8* %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.font_info**, %struct.font_info*** %fonts, align 8
  %arrayidx6 = getelementptr inbounds %struct.font_info*, %struct.font_info** %13, i64 %idxprom5
  %14 = load %struct.font_info*, %struct.font_info** %arrayidx6, align 8
  %key7 = getelementptr inbounds %struct.font_info, %struct.font_info* %14, i32 0, i32 0
  %15 = load i8*, i8** %key7, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.font_info**, %struct.font_info*** %fonts, align 8
  %arrayidx9 = getelementptr inbounds %struct.font_info*, %struct.font_info** %17, i64 %idxprom8
  %18 = load %struct.font_info*, %struct.font_info** %arrayidx9, align 8
  %key10 = getelementptr inbounds %struct.font_info, %struct.font_info* %18, i32 0, i32 0
  %19 = load i8*, i8** %key10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %15, i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8** @hash_dump(%struct.hash_table_s*, i8**, i32 (i8*, i8*)*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dump_fonts(%struct._IO_FILE* %stream, %struct.a2ps_job* %job) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %job.addr = alloca %struct.a2ps_job*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %fontname = alloca i8*, align 8
  %fonts = alloca i8**, align 8
  %i = alloca i32, align 4
  %file = alloca i8*, align 8
  %_tmp1_ = alloca i8*, align 8
  %_tmp2_ = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %call = call i8** @required_fonts_get(%struct.a2ps_job* %0)
  store i8** %call, i8*** %fonts, align 8
  %1 = load i8**, i8*** %fonts, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %fonts, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %fonts_map = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 48
  %6 = load %struct.pair_htable*, %struct.pair_htable** %fonts_map, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8**, i8*** %fonts, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i8* @fonts_map_resolve_alias(%struct.pair_htable* %6, i8* %9)
  store i8* %call4, i8** %fontname, align 8
  %10 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %10, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %11 = load i8**, i8*** %path, align 8
  %12 = load i8*, i8** %fontname, align 8
  %call5 = call i8* @pw_find_file(i8** %11, i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call5, i8** %filename, align 8
  %13 = load i8*, i8** %filename, align 8
  %tobool6 = icmp ne i8* %13, null
  br i1 %tobool6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %for.body
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %14, i32 0, i32 2
  %path9 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common8, i32 0, i32 0
  %15 = load i8**, i8*** %path9, align 8
  %16 = load i8*, i8** %fontname, align 8
  %call10 = call i8* @pw_find_file(i8** %15, i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call10, i8** %filename, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %for.body
  %17 = load i8*, i8** %filename, align 8
  %tobool12 = icmp ne i8* %17, null
  br i1 %tobool12, label %if.end.17, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %common14 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 2
  %path15 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common14, i32 0, i32 0
  %19 = load i8**, i8*** %path15, align 8
  %20 = load i8*, i8** %fontname, align 8
  %call16 = call i8* @pw_find_file(i8** %19, i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call16, i8** %filename, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %21 = load i8*, i8** %filename, align 8
  %tobool18 = icmp ne i8* %21, null
  br i1 %tobool18, label %if.end.41, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %22 = load i8*, i8** %fontname, align 8
  store i8* %22, i8** %_tmp1_, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8** %_tmp2_, align 8
  %23 = load i8*, i8** %_tmp1_, align 8
  %call20 = call i64 @strlen(i8* %23) #10
  %24 = load i8*, i8** %_tmp2_, align 8
  %call21 = call i64 @strlen(i8* %24) #10
  %add = add i64 %call20, %call21
  %add22 = add i64 %add, 1
  %mul = mul i64 1, %add22
  %25 = alloca i8, i64 %mul
  store i8* %25, i8** %file, align 8
  br label %do.body.23

do.body.23:                                       ; preds = %do.body
  %26 = load i8*, i8** %file, align 8
  %27 = load i8*, i8** %fontname, align 8
  %call24 = call i8* @stpcpy(i8* %26, i8* %27) #6
  %call25 = call i8* @stpcpy(i8* %call24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body.23
  br label %do.end.26

do.end.26:                                        ; preds = %do.end
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #6
  %28 = load i8*, i8** %file, align 8
  %call28 = call i8* @quotearg(i8* %28)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call27, i8* %call28)
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.26
  %29 = load i8*, i8** %file, align 8
  %30 = load i8*, i8** %fontname, align 8
  %call30 = call i8* @stpcpy(i8* %29, i8* %30) #6
  %call31 = call i8* @stpcpy(i8* %call30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #6
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.29
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #6
  %31 = load i8*, i8** %file, align 8
  %call34 = call i8* @quotearg(i8* %31)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call33, i8* %call34)
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.32
  %32 = load i8*, i8** %file, align 8
  %33 = load i8*, i8** %fontname, align 8
  %call36 = call i8* @stpcpy(i8* %32, i8* %33) #6
  %call37 = call i8* @stpcpy(i8* %call36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.35
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #6
  %34 = load i8*, i8** %file, align 8
  %call40 = call i8* @quotearg(i8* %34)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call39, i8* %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.38, %if.end.17
  %35 = load i8*, i8** %filename, align 8
  %call42 = call %struct._IO_FILE* @xrfopen(i8* %35)
  store %struct._IO_FILE* %call42, %struct._IO_FILE** %fp, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.41
  %36 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 320, %36
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %do.body.43
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i8*, i8** %filename, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* %38)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %do.body.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %40 to i64
  %41 = load i8**, i8*** %fonts, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %41, i64 %idxprom49
  %42 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call52 = call i32 @internal_font_file_dump(%struct._IO_FILE* %43, %struct._IO_FILE* %44)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %do.end.48
  %45 = load i8*, i8** %filename, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* %45)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %do.end.48
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call i32 @fclose(%struct._IO_FILE* %47)
  %48 = load i8*, i8** %filename, align 8
  call void @free(i8* %48) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i8**, i8*** %fonts, align 8
  %51 = bitcast i8** %50 to i8*
  call void @free(i8* %51) #6
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i8** @required_fonts_get(%struct.a2ps_job*) #1

declare i8* @pw_find_file(i8**, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #2

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @quotearg(i8*) #1

declare %struct._IO_FILE* @xrfopen(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @internal_font_file_dump(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call1 = call i32 @ungetc(i32 %1, %struct._IO_FILE* %2)
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call2 = call i32 @binary_font_dump(%struct._IO_FILE* %4, %struct._IO_FILE* %5)
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  call void @streams_copy(%struct._IO_FILE* %6, %struct._IO_FILE* %7)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @pair_table_load(%struct.pair_htable*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @wx_entry_table_free(%struct.hash_table_s* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table_s*, align 8
  store %struct.hash_table_s* %table, %struct.hash_table_s** %table.addr, align 8
  %0 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  call void @hash_free(%struct.hash_table_s* %0, void (i8*)* bitcast (void (%struct.wx_entry*)* @hash_free_wx_entry to void (i8*)*))
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %table.addr, align 8
  %2 = bitcast %struct.hash_table_s* %1 to i8*
  call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hash_free_wx_entry(%struct.wx_entry* %wx_entry) #0 {
entry:
  %wx_entry.addr = alloca %struct.wx_entry*, align 8
  store %struct.wx_entry* %wx_entry, %struct.wx_entry** %wx_entry.addr, align 8
  %0 = load %struct.wx_entry*, %struct.wx_entry** %wx_entry.addr, align 8
  %glyph = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %glyph, align 8
  call void @free(i8* %1) #6
  %2 = load %struct.wx_entry*, %struct.wx_entry** %wx_entry.addr, align 8
  %3 = bitcast %struct.wx_entry* %2 to i8*
  call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_table_s* @wx_entry_table_new() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* bitcast (i64 (%struct.wx_entry*)* @wx_entry_hash_1 to i64 (i8*)*), i64 (i8*)* bitcast (i64 (%struct.wx_entry*)* @wx_entry_hash_2 to i64 (i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.wx_entry*, %struct.wx_entry*)* @wx_entry_hash_cmp to i32 (i8*, i8*)*))
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

; Function Attrs: nounwind uwtable
define internal i64 @wx_entry_hash_1(%struct.wx_entry* %wx_entry) #0 {
entry:
  %wx_entry.addr = alloca %struct.wx_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.wx_entry* %wx_entry, %struct.wx_entry** %wx_entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.wx_entry*, %struct.wx_entry** %wx_entry.addr, align 8
  %glyph = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %glyph, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i64 @wx_entry_hash_2(%struct.wx_entry* %wx_entry) #0 {
entry:
  %wx_entry.addr = alloca %struct.wx_entry*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store %struct.wx_entry* %wx_entry, %struct.wx_entry** %wx_entry.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.wx_entry*, %struct.wx_entry** %wx_entry.addr, align 8
  %glyph = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %glyph, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %kk, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 7
  %shl = shl i32 %conv, %and
  %conv3 = sext i32 %shl to i64
  %8 = load i64, i64* %result, align 8
  %add = add i64 %8, %conv3
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %9 = load i64, i64* %result, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %do.end
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @wx_entry_hash_cmp(%struct.wx_entry* %x, %struct.wx_entry* %y) #0 {
entry:
  %x.addr = alloca %struct.wx_entry*, align 8
  %y.addr = alloca %struct.wx_entry*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.wx_entry* %x, %struct.wx_entry** %x.addr, align 8
  store %struct.wx_entry* %y, %struct.wx_entry** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.wx_entry*, %struct.wx_entry** %x.addr, align 8
  %glyph = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %0, i32 0, i32 0
  %1 = load i8*, i8** %glyph, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %2 = load %struct.wx_entry*, %struct.wx_entry** %y.addr, align 8
  %glyph2 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %glyph2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %3, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %4 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %6 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i8*, i8** %xx, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %9 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %10 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %11 = load i8*, i8** %xx, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load i8*, i8** %yy, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %15 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @wx_entry_hash_index_qcmp(%struct.wx_entry** %x, %struct.wx_entry** %y) #0 {
entry:
  %x.addr = alloca %struct.wx_entry**, align 8
  %y.addr = alloca %struct.wx_entry**, align 8
  store %struct.wx_entry** %x, %struct.wx_entry*** %x.addr, align 8
  store %struct.wx_entry** %y, %struct.wx_entry*** %y.addr, align 8
  %0 = load %struct.wx_entry**, %struct.wx_entry*** %y.addr, align 8
  %1 = load %struct.wx_entry*, %struct.wx_entry** %0, align 8
  %index = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %1, i32 0, i32 1
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.wx_entry**, %struct.wx_entry*** %x.addr, align 8
  %4 = load %struct.wx_entry*, %struct.wx_entry** %3, align 8
  %index1 = getelementptr inbounds %struct.wx_entry, %struct.wx_entry* %4, i32 0, i32 1
  %5 = load i32, i32* %index1, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

declare i8* @pair_get(%struct.pair_htable*, i8*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @binary_font_dump(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #4 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %status = alloca i32, align 4
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 @binary_font_dump_segment(%struct._IO_FILE* %0, %struct._IO_FILE* %1)
  store i32 %call, i32* %status, align 4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @streams_copy(%struct._IO_FILE*, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @binary_font_dump_segment(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #4 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %segment_type = alloca i32, align 4
  %magic = alloca i32, align 4
  %length = alloca i64, align 8
  %read_length = alloca i64, align 8
  %length_to_read = alloca i64, align 8
  %buf = alloca [8192 x i8], align 16
  %i = alloca i64, align 8
  %i34 = alloca i64, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %magic, align 4
  %1 = load i32, i32* %magic, align 4
  %cmp = icmp ne i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %segment_type, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %conv = sext i32 %call2 to i64
  store i64 %conv, i64* %length, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %mul = mul nsw i32 %call3, 256
  %conv4 = sext i32 %mul to i64
  %5 = load i64, i64* %length, align 8
  %add = add i64 %5, %conv4
  store i64 %add, i64* %length, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call5 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  %mul6 = mul nsw i32 %call5, 256
  %mul7 = mul nsw i32 %mul6, 256
  %conv8 = sext i32 %mul7 to i64
  %7 = load i64, i64* %length, align 8
  %add9 = add i64 %7, %conv8
  store i64 %add9, i64* %length, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  %mul11 = mul nsw i32 %call10, 256
  %mul12 = mul nsw i32 %mul11, 256
  %mul13 = mul nsw i32 %mul12, 256
  %conv14 = sext i32 %mul13 to i64
  %9 = load i64, i64* %length, align 8
  %add15 = add i64 %9, %conv14
  store i64 %add15, i64* %length, align 8
  %10 = load i32, i32* %segment_type, align 4
  switch i32 %10, label %sw.default.64 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.30
    i32 3, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %sw.bb
  %11 = load i64, i64* %length, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, i64* %length, align 8
  %cmp16 = icmp ult i64 %12, 8192
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %13 = load i64, i64* %length, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ 8192, %cond.false ]
  store i64 %cond, i64* %length_to_read, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %14 = load i64, i64* %length_to_read, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call18 = call i64 @fread(i8* %arraydecay, i64 1, i64 %14, %struct._IO_FILE* %15)
  store i64 %call18, i64* %read_length, align 8
  %16 = load i64, i64* %read_length, align 8
  %tobool19 = icmp ne i64 %16, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %cond.end
  store i32 2, i32* %retval
  br label %return

if.end.21:                                        ; preds = %cond.end
  %17 = load i64, i64* %read_length, align 8
  %18 = load i64, i64* %length, align 8
  %sub = sub i64 %18, %17
  store i64 %sub, i64* %length, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %read_length, align 8
  %cmp22 = icmp ult i64 %19, %20
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 %21
  %22 = load i8, i8* %arrayidx, align 1
  %conv24 = zext i8 %22 to i32
  switch i32 %conv24, label %sw.default [
    i32 13, label %sw.bb.25
  ]

sw.bb.25:                                         ; preds = %for.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call26 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %23)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %24 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 %24
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call29 = call i32 @_IO_putc(i32 %conv28, %struct._IO_FILE* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.25
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog.65

sw.bb.30:                                         ; preds = %if.end
  br label %while.cond.31

while.cond.31:                                    ; preds = %for.end.61, %sw.bb.30
  %28 = load i64, i64* %length, align 8
  %tobool32 = icmp ne i64 %28, 0
  br i1 %tobool32, label %while.body.33, label %while.end.62

while.body.33:                                    ; preds = %while.cond.31
  %29 = load i64, i64* %length, align 8
  %cmp35 = icmp ult i64 %29, 8192
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %while.body.33
  %30 = load i64, i64* %length, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %while.body.33
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i64 [ %30, %cond.true.37 ], [ 8192, %cond.false.38 ]
  store i64 %cond40, i64* %length_to_read, align 8
  %arraydecay41 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %31 = load i64, i64* %length_to_read, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call42 = call i64 @fread(i8* %arraydecay41, i64 1, i64 %31, %struct._IO_FILE* %32)
  store i64 %call42, i64* %read_length, align 8
  %33 = load i64, i64* %read_length, align 8
  %tobool43 = icmp ne i64 %33, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %cond.end.39
  store i32 2, i32* %retval
  br label %return

if.end.45:                                        ; preds = %cond.end.39
  %34 = load i64, i64* %read_length, align 8
  %35 = load i64, i64* %length, align 8
  %sub46 = sub i64 %35, %34
  store i64 %sub46, i64* %length, align 8
  store i64 0, i64* %i34, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.59, %if.end.45
  %36 = load i64, i64* %i34, align 8
  %37 = load i64, i64* %read_length, align 8
  %cmp48 = icmp ult i64 %36, %37
  br i1 %cmp48, label %for.body.50, label %for.end.61

for.body.50:                                      ; preds = %for.cond.47
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %39 = load i64, i64* %i34, align 8
  %arrayidx51 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i64 %39
  %40 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %40 to i32
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 %conv52)
  %41 = load i64, i64* %i34, align 8
  %add54 = add i64 %41, 1
  %rem = urem i64 %add54, 32
  %tobool55 = icmp ne i64 %rem, 0
  br i1 %tobool55, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %for.body.50
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call57 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %42)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %for.body.50
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %43 = load i64, i64* %i34, align 8
  %inc60 = add i64 %43, 1
  store i64 %inc60, i64* %i34, align 8
  br label %for.cond.47

for.end.61:                                       ; preds = %for.cond.47
  br label %while.cond.31

while.end.62:                                     ; preds = %while.cond.31
  br label %sw.epilog.65

sw.bb.63:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.default.64:                                    ; preds = %if.end
  call void @abort() #9
  unreachable

sw.epilog.65:                                     ; preds = %while.end.62, %while.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call66 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %44)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.65, %sw.bb.63, %if.then.44, %if.then.20, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
