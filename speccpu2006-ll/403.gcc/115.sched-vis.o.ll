; ModuleID = 'sched-vis.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.function_unit_desc = type { i8*, i32, i32, i32, i32, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.sched_info = type { void (%struct.ready_list*)*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.ready_list = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@sched_dump = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@function_units = external constant [0 x %struct.function_unit_desc], align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@rtx_class = external constant [153 x i8], align 16
@target_units = internal global i32 0, align 4
@visual_tbl = common global i8* null, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@n_visual_lines = common global i32 0, align 4
@n_vis_no_unit = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"\0A;;   ==================== scheduling visualization %s \0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c";;   %-8s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"  %-33s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"  %-8s\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"no-unit\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"=====\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"==============================\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"=======\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@vis_no_unit = common global [20 x %struct.rtx_def*] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"(incomplete)\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c";;   %-8d\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"------------------------------\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"  %-8d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@visualize_stall_cycles.prefix = internal constant i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), align 8
@.str.21 = private unnamed_addr constant [10 x i8] c";;       \00", align 1
@visual_tbl_line_length = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"[...]\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@current_sched_info = external global %struct.sched_info*, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"%-4d %s\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"%s: jump %s\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"call <...>\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"i% 4d: barrier\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"%4d note \22%s\22 %d\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%4d %s\00", align 1
@note_insn_name = external constant [22 x i8*], align 16
@.str.31 = private unnamed_addr constant [20 x i8] c"Not an INSN at all\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"i%-4d  <What?>\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"clobber %s\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.37 = private unnamed_addr constant [8 x i8] c"(%s) %s\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%%{\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%s%%}\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"asm {%s}\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"trap_if %s\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"unspec{\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"unspec/v{\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"<0x%lx,0x%lx>\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"L%d\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"const(\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"high(\00", align 1
@reg_names = external global [53 x i8*], align 16
@_sch_istable = external constant [256 x i16], align 16
@.str.56 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"cc0\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"+low(\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"smin\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"smax\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c" 0>>\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"<-<\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c">->\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"gtu\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"ltu\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"geu\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"leu\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"sign_extract\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"sxt\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"zero_extract\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"zxt\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"sign_extend\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"sxn\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"zero_extend\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"zxn\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"float_extend\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"fxn\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"trn\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"float_trunc\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"ftr\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"flt\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"uns_float\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ufl\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"uns_fix\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"ufx\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c" argc:\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"{(\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c")?\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"trap_if\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@rtx_name = external constant [153 x i8*], align 16
@.str.132 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"  %33s\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"uname\00", align 1

; Function Attrs: nounwind uwtable
define void @insn_print_units(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @insn_unit(%struct.rtx_def* %0)
  store i32 %call, i32* %unit, align 4
  %1 = load i32, i32* %unit, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %unit, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %5 = load i32, i32* %unit, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %6)
  br label %if.end.18

if.else.5:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  %8 = load i32, i32* %unit, align 4
  %neg = xor i32 %8, -1
  store i32 %neg, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.5
  %9 = load i32, i32* %unit, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %unit, align 4
  %and = and i32 %10, 1
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom9
  %name11 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx10, i32 0, i32 0
  %13 = load i8*, i8** %name11, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %13)
  %14 = load i32, i32* %unit, align 4
  %cmp13 = icmp ne i32 %14, 1
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  %17 = load i32, i32* %unit, align 4
  %shr = ashr i32 %17, 1
  store i32 %shr, i32* %unit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.then.3
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  ret void
}

declare i32 @insn_unit(%struct.rtx_def*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @init_target_units() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %unit = alloca i32, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call2 = call i32 @insn_unit(%struct.rtx_def* %4)
  store i32 %call2, i32* %unit, align 4
  %5 = load i32, i32* %unit, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %unit, align 4
  %neg = xor i32 %6, -1
  %7 = load i32, i32* @target_units, align 4
  %or = or i32 %7, %neg
  store i32 %or, i32* @target_units, align 4
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %unit, align 4
  %shl = shl i32 1, %8
  %9 = load i32, i32* @target_units, align 4
  %or6 = or i32 %9, %shl
  store i32 %or6, i32* @target_units, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @get_last_insn() #1

; Function Attrs: nounwind uwtable
define void @init_block_visualization() #0 {
entry:
  %0 = load i8*, i8** @visual_tbl, align 8
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 0, i32* @n_visual_lines, align 4
  store i32 0, i32* @n_vis_no_unit, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @print_block_visualization(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %unit = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %3 = load i32, i32* %unit, align 4
  %cmp = icmp slt i32 %3, 26
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %unit, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %bitmask = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %bitmask, align 4
  %6 = load i32, i32* @target_units, align 4
  %and = and i32 %5, %6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %unit, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom3
  %multiplicity = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx4, i32 0, i32 2
  %9 = load i32, i32* %multiplicity, align 4
  %cmp5 = icmp slt i32 %7, %9
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %11 = load i32, i32* %unit, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom7
  %name = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx8, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %14 = load i32, i32* %unit, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %unit, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %unit, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.35, %for.end.12
  %17 = load i32, i32* %unit, align 4
  %cmp16 = icmp slt i32 %17, 26
  br i1 %cmp16, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.15
  %18 = load i32, i32* %unit, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom18
  %bitmask20 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx19, i32 0, i32 1
  %19 = load i32, i32* %bitmask20, align 4
  %20 = load i32, i32* @target_units, align 4
  %and21 = and i32 %19, %20
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %for.body.17
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.31, %if.then.23
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %unit, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom25
  %multiplicity27 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx26, i32 0, i32 2
  %23 = load i32, i32* %multiplicity27, align 4
  %cmp28 = icmp slt i32 %21, %23
  br i1 %cmp28, label %for.body.29, label %for.end.33

for.body.29:                                      ; preds = %for.cond.24
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0))
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.29
  %25 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.24

for.end.33:                                       ; preds = %for.cond.24
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33, %for.body.17
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %26 = load i32, i32* %unit, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, i32* %unit, align 4
  br label %for.cond.15

for.end.37:                                       ; preds = %for.cond.15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %29 = load i8*, i8** @visual_tbl, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define void @visualize_no_unit(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* @n_vis_no_unit, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = load i32, i32* @n_vis_no_unit, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.rtx_def*], [20 x %struct.rtx_def*]* @vis_no_unit, i32 0, i64 %idxprom
  store %struct.rtx_def* %1, %struct.rtx_def** %arrayidx, align 8
  %3 = load i32, i32* @n_vis_no_unit, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @n_vis_no_unit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @visualize_scheduled_insns(i32 %clock) #0 {
entry:
  %clock.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %unit = alloca i32, align 4
  %instance = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %str = alloca [2048 x i8], align 16
  store i32 %clock, i32* %clock.addr, align 4
  %0 = load i32, i32* @n_visual_lines, align 4
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_block_visualization(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  call void @init_block_visualization()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @n_visual_lines, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @n_visual_lines, align 4
  %2 = load i8*, i8** @visual_tbl, align 8
  %3 = load i8*, i8** @visual_tbl, align 8
  %call = call i64 @strlen(i8* %3) #5
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call
  %4 = load i32, i32* %clock.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 %4) #4
  store i32 0, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %5 = load i32, i32* %unit, align 4
  %cmp2 = icmp slt i32 %5, 26
  br i1 %cmp2, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %unit, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %bitmask = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %bitmask, align 4
  %8 = load i32, i32* @target_units, align 4
  %and = and i32 %7, %8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.24

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then.3
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %unit, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom5
  %multiplicity = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx6, i32 0, i32 2
  %11 = load i32, i32* %multiplicity, align 4
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %unit, align 4
  %13 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %13, 26
  %add = add nsw i32 %12, %mul
  store i32 %add, i32* %instance, align 4
  %14 = load i32, i32* %instance, align 4
  %call9 = call %struct.rtx_def* @get_unit_last_insn(i32 %14)
  store %struct.rtx_def* %call9, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool10 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.8
  %16 = load i32, i32* %unit, align 4
  %17 = load i32, i32* %instance, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = load i32, i32* %clock.addr, align 4
  %call11 = call i32 @actual_hazard_this_instance(i32 %16, i32 %17, %struct.rtx_def* %18, i32 %19, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %str, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @print_insn(i8* %arraydecay, %struct.rtx_def* %20, i32 0)
  %arrayidx14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %str, i32 0, i64 30
  store i8 0, i8* %arrayidx14, align 1
  %21 = load i8*, i8** @visual_tbl, align 8
  %22 = load i8*, i8** @visual_tbl, align 8
  %call15 = call i64 @strlen(i8* %22) #5
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %call15
  %arraydecay17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %str, i32 0, i32 0
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay17) #4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %for.body.8
  %23 = load i8*, i8** @visual_tbl, align 8
  %24 = load i8*, i8** @visual_tbl, align 8
  %call19 = call i64 @strlen(i8* %24) #5
  %add.ptr20 = getelementptr inbounds i8, i8* %23, i64 %call19
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0)) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %for.body
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %26 = load i32, i32* %unit, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %unit, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %for.end.27
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* @n_vis_no_unit, align 4
  %cmp29 = icmp slt i32 %27, %28
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  %29 = load i8*, i8** @visual_tbl, align 8
  %30 = load i8*, i8** @visual_tbl, align 8
  %call31 = call i64 @strlen(i8* %30) #5
  %add.ptr32 = getelementptr inbounds i8, i8* %29, i64 %call31
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [20 x %struct.rtx_def*], [20 x %struct.rtx_def*]* @vis_no_unit, i32 0, i64 %idxprom33
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %33 = load i32, i32* %rtint, align 4
  %call36 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 %33) #4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.30
  %34 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  store i32 0, i32* @n_vis_no_unit, align 4
  %35 = load i8*, i8** @visual_tbl, align 8
  %36 = load i8*, i8** @visual_tbl, align 8
  %call40 = call i64 @strlen(i8* %36) #5
  %add.ptr41 = getelementptr inbounds i8, i8* %35, i64 %call40
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct.rtx_def* @get_unit_last_insn(i32) #1

declare i32 @actual_hazard_this_instance(i32, i32, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @print_insn(i8* %buf, %struct.rtx_def* %x, i32 %verbose) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %verbose.addr = alloca i32, align 4
  %t = alloca [2048 x i8], align 16
  %insn = alloca %struct.rtx_def*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb.7
    i32 34, label %sw.bb.25
    i32 36, label %sw.bb.53
    i32 35, label %sw.bb.58
    i32 37, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay, %struct.rtx_def* %4, i32 %5)
  %6 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn = getelementptr inbounds %struct.sched_info, %struct.sched_info* %8, i32 0, i32 5
  %9 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i8* %9(%struct.rtx_def* %10, i32 1)
  %arraydecay1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* %call, i8* %arraydecay1) #4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %13 = load i32, i32* %rtint, align 4
  %arraydecay5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 %13, i8* %arraydecay5) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %arraydecay8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %16 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay8, %struct.rtx_def* %15, i32 %16)
  %17 = load i32, i32* %verbose.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %sw.bb.7
  %18 = load i8*, i8** %buf.addr, align 8
  %19 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn14 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %19, i32 0, i32 5
  %20 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn14, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call15 = call i8* %20(%struct.rtx_def* %21, i32 1)
  %arraydecay16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* %call15, i8* %arraydecay16) #4
  br label %if.end.24

if.else.18:                                       ; preds = %sw.bb.7
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %24 = load i32, i32* %rtint21, align 4
  %arraydecay22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 %24, i8* %arraydecay22) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.18, %if.then.13
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %x.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load29 = load i32, i32* %28, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp = icmp eq i32 %bf.clear30, 39
  br i1 %cmp, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %sw.bb.25
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %x.addr, align 8
  %arraydecay35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %33 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay35, %struct.rtx_def* %32, i32 %33)
  br label %if.end.39

if.else.36:                                       ; preds = %sw.bb.25
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call38 = call i8* @strcpy(i8* %arraydecay37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.31
  %34 = load i32, i32* %verbose.addr, align 4
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.end.39
  %35 = load i8*, i8** %buf.addr, align 8
  %36 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn42 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %36, i32 0, i32 5
  %37 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn42, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call43 = call i8* %37(%struct.rtx_def* %38, i32 1)
  %arraydecay44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* %call43, i8* %arraydecay44) #4
  br label %if.end.52

if.else.46:                                       ; preds = %if.end.39
  %39 = load i8*, i8** %buf.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %41 = load i32, i32* %rtint49, align 4
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 %41, i8* %arraydecay50) #4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.46, %if.then.41
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %42 = load i8*, i8** %buf.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %44 = load i32, i32* %rtint56, align 4
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %44) #4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %45 = load i8*, i8** %buf.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %47 = load i32, i32* %rtint61, align 4
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %47) #4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %entry
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 4
  %rtint66 = bitcast %union.rtunion_def* %arrayidx65 to i32*
  %49 = load i32, i32* %rtint66, align 4
  %cmp67 = icmp sgt i32 %49, 0
  br i1 %cmp67, label %if.then.68, label %if.else.78

if.then.68:                                       ; preds = %sw.bb.63
  %50 = load i8*, i8** %buf.addr, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %52 = load i32, i32* %rtint71, align 4
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx73 to i8**
  %54 = load i8*, i8** %rtstr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 4
  %rtint76 = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %56 = load i32, i32* %rtint76, align 4
  %call77 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i32 %52, i8* %54, i32 %56) #4
  br label %if.end.87

if.else.78:                                       ; preds = %sw.bb.63
  %57 = load i8*, i8** %buf.addr, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %59 = load i32, i32* %rtint81, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 4
  %rtint84 = bitcast %union.rtunion_def* %arrayidx83 to i32*
  %61 = load i32, i32* %rtint84, align 4
  %sub = sub nsw i32 %61, -100
  %idxprom = sext i32 %sub to i64
  %arrayidx85 = getelementptr inbounds [22 x i8*], [22 x i8*]* @note_insn_name, i32 0, i64 %idxprom
  %62 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %59, i8* %62) #4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.78, %if.then.68
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %63 = load i32, i32* %verbose.addr, align 4
  %tobool88 = icmp ne i32 %63, 0
  br i1 %tobool88, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %sw.default
  %64 = load i8*, i8** %buf.addr, align 8
  %call90 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0)) #4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @debug_rtx(%struct.rtx_def* %65)
  br label %if.end.96

if.else.91:                                       ; preds = %sw.default
  %66 = load i8*, i8** %buf.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %68 = load i32, i32* %rtint94, align 4
  %call95 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 %68) #4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.91, %if.then.89
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.96, %if.end.87, %sw.bb.58, %sw.bb.53, %if.end.52, %if.end.24, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @visualize_stall_cycles(i32 %stalls) #0 {
entry:
  %stalls.addr = alloca i32, align 4
  %suffix = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %stalls, i32* %stalls.addr, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8** %suffix, align 8
  %0 = load i32, i32* @n_visual_lines, align 4
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_block_visualization(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  call void @init_block_visualization()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @n_visual_lines, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @n_visual_lines, align 4
  %2 = load i8*, i8** @visual_tbl, align 8
  %3 = load i8*, i8** @visual_tbl, align 8
  %call = call i64 @strlen(i8* %3) #5
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call
  store i8* %add.ptr, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** @visualize_stall_cycles.prefix, align 8
  %call1 = call i8* @strcpy(i8* %4, i8* %5) #4
  %6 = load i8*, i8** @visualize_stall_cycles.prefix, align 8
  %call2 = call i64 @strlen(i8* %6) #5
  %7 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 %call2
  store i8* %add.ptr3, i8** %p, align 8
  %8 = load i32, i32* %stalls.addr, align 4
  %conv = zext i32 %8 to i64
  %9 = load i32, i32* @visual_tbl_line_length, align 4
  %conv4 = zext i32 %9 to i64
  %10 = load i8*, i8** @visualize_stall_cycles.prefix, align 8
  %call5 = call i64 @strlen(i8* %10) #5
  %sub = sub i64 %conv4, %call5
  %11 = load i8*, i8** %suffix, align 8
  %call6 = call i64 @strlen(i8* %11) #5
  %sub7 = sub i64 %sub, %call6
  %cmp8 = icmp ugt i64 %conv, %sub7
  br i1 %cmp8, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8** %suffix, align 8
  %12 = load i32, i32* @visual_tbl_line_length, align 4
  %conv11 = zext i32 %12 to i64
  %13 = load i8*, i8** @visualize_stall_cycles.prefix, align 8
  %call12 = call i64 @strlen(i8* %13) #5
  %sub13 = sub i64 %conv11, %call12
  %14 = load i8*, i8** %suffix, align 8
  %call14 = call i64 @strlen(i8* %14) #5
  %sub15 = sub i64 %sub13, %call14
  %conv16 = trunc i64 %sub15 to i32
  store i32 %conv16, i32* %stalls.addr, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i32, i32* %stalls.addr, align 4
  %conv18 = sext i32 %16 to i64
  call void @llvm.memset.p0i8.i64(i8* %15, i8 46, i64 %conv18, i32 1, i1 false)
  %17 = load i32, i32* %stalls.addr, align 4
  %18 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr19, i8** %p, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %suffix, align 8
  %call20 = call i8* @strcpy(i8* %19, i8* %20) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @visualize_alloc() #0 {
entry:
  %call = call i32 @get_visual_tbl_length()
  %conv = sext i32 %call to i64
  %call1 = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call1, i8** @visual_tbl, align 8
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_visual_tbl_length() #0 {
entry:
  %unit = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %s = alloca i8*, align 8
  %0 = alloca i8, i64 36
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0)) #4
  %2 = load i8*, i8** %s, align 8
  %call1 = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %n1, align 4
  store i32 3, i32* %n, align 4
  %3 = load i32, i32* %n1, align 4
  %4 = load i32, i32* %n, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, i32* %n, align 4
  store i32 0, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %5 = load i32, i32* %unit, align 4
  %cmp = icmp slt i32 %5, 26
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %unit, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %bitmask = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %bitmask, align 4
  %8 = load i32, i32* @target_units, align 4
  %and = and i32 %7, %8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %unit, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom4
  %multiplicity = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx5, i32 0, i32 2
  %11 = load i32, i32* %multiplicity, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %n1, align 4
  %13 = load i32, i32* %n, align 4
  %add9 = add nsw i32 %13, %12
  store i32 %add9, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end
  %15 = load i32, i32* %unit, align 4
  %inc11 = add nsw i32 %15, 1
  store i32 %inc11, i32* %unit, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %16 = load i32, i32* %n1, align 4
  %17 = load i32, i32* %n, align 4
  %add13 = add nsw i32 %17, %16
  store i32 %add13, i32* %n, align 4
  %18 = load i32, i32* %n, align 4
  %conv14 = sext i32 %18 to i64
  %add15 = add i64 %conv14, 3
  %conv16 = trunc i64 %add15 to i32
  store i32 %conv16, i32* %n, align 4
  %19 = load i32, i32* %n, align 4
  store i32 %19, i32* @visual_tbl_line_length, align 4
  %20 = load i32, i32* %n, align 4
  %mul = mul nsw i32 100, %20
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define void @visualize_free() #0 {
entry:
  %0 = load i8*, i8** @visual_tbl, align 8
  call void @free(i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @print_pattern(i8* %buf, %struct.rtx_def* %x, i32 %verbose) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %verbose.addr = alloca i32, align 4
  %t1 = alloca [2048 x i8], align 16
  %t2 = alloca [2048 x i8], align 16
  %t3 = alloca [2048 x i8], align 16
  %i = alloca i32, align 4
  %i101 = alloca i32, align 4
  %i147 = alloca i32, align 4
  %i177 = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 47, label %sw.bb
    i32 51, label %sw.bb.7
    i32 50, label %sw.bb.9
    i32 49, label %sw.bb.10
    i32 48, label %sw.bb.17
    i32 38, label %sw.bb.24
    i32 39, label %sw.bb.80
    i32 24, label %sw.bb.100
    i32 40, label %sw.bb.130
    i32 44, label %sw.bb.134
    i32 45, label %sw.bb.135
    i32 52, label %sw.bb.139
    i32 42, label %sw.bb.146
    i32 43, label %sw.bb.176
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay, %struct.rtx_def* %3, i32 %4)
  %arraydecay1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %7 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay1, %struct.rtx_def* %6, i32 %7)
  %8 = load i8*, i8** %buf.addr, align 8
  %arraydecay5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay5, i8* %arraydecay6) #4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %9 = load i8*, i8** %buf.addr, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = load i32, i32* %verbose.addr, align 4
  call void @print_exp(i8* %10, %struct.rtx_def* %11, i32 %12)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %arraydecay11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %15 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay11, %struct.rtx_def* %14, i32 %15)
  %16 = load i8*, i8** %buf.addr, align 8
  %arraydecay15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay15) #4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %arraydecay18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %19 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay18, %struct.rtx_def* %18, i32 %19)
  %20 = load i8*, i8** %buf.addr, align 8
  %arraydecay22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay22) #4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load28 = load i32, i32* %23, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp = icmp eq i32 %bf.clear29, 102
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.24
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp36 = icmp eq %struct.rtx_def* %26, %27
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %31 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay37, %struct.rtx_def* %30, i32 %31)
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true, %sw.bb.24
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 103
  br i1 %cmp49, label %land.lhs.true.50, label %if.else.67

land.lhs.true.50:                                 ; preds = %if.else
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp57 = icmp eq %struct.rtx_def* %37, %38
  br i1 %cmp57, label %if.then.58, label %if.else.67

if.then.58:                                       ; preds = %land.lhs.true.50
  %arrayidx59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i64 0
  store i8 33, i8* %arrayidx59, align 1
  %arraydecay60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay60, i64 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %42 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %add.ptr, %struct.rtx_def* %41, i32 %42)
  br label %if.end

if.else.67:                                       ; preds = %land.lhs.true.50, %if.else
  %arraydecay68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %45 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay68, %struct.rtx_def* %44, i32 %45)
  br label %if.end

if.end:                                           ; preds = %if.else.67, %if.then.58
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %if.then
  %arraydecay73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 1
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %48 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay73, %struct.rtx_def* %47, i32 %48)
  %49 = load i8*, i8** %buf.addr, align 8
  %arraydecay77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay77, i8* %arraydecay78) #4
  br label %sw.epilog

sw.bb.80:                                         ; preds = %entry
  %arraydecay81 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call82 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.80
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtvec_def**
  %52 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %52, i32 0, i32 0
  %53 = load i32, i32* %num_elem, align 4
  %cmp85 = icmp slt i32 %50, %53
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtvec89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtvec_def**
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec89, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %57 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx90, align 8
  %58 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay86, %struct.rtx_def* %57, i32 %58)
  %arraydecay91 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %arraydecay92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call94 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay92, i8* %arraydecay93) #4
  %arraydecay95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %call97 = call i8* @strcpy(i8* %arraydecay95, i8* %arraydecay96) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i8*, i8** %buf.addr, align 8
  %arraydecay98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call99 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay98) #4
  br label %sw.epilog

sw.bb.100:                                        ; preds = %entry
  %arraydecay102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call103 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #4
  store i32 0, i32* %i101, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.125, %sw.bb.100
  %61 = load i32, i32* %i101, align 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtvec107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtvec_def**
  %63 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec107, align 8
  %num_elem108 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %63, i32 0, i32 0
  %64 = load i32, i32* %num_elem108, align 4
  %cmp109 = icmp slt i32 %61, %64
  br i1 %cmp109, label %for.body.110, label %for.end.127

for.body.110:                                     ; preds = %for.cond.104
  %arraydecay111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %65 = load i32, i32* %i101, align 4
  %idxprom112 = sext i32 %65 to i64
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtvec115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtvec_def**
  %67 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec115, align 8
  %elem116 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %67, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem116, i32 0, i64 %idxprom112
  %68 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx117, align 8
  %69 = load i32, i32* %verbose.addr, align 4
  call void @print_insn(i8* %arraydecay111, %struct.rtx_def* %68, i32 %69)
  %arraydecay118 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %arraydecay119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call121 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay119, i8* %arraydecay120) #4
  %arraydecay122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %call124 = call i8* @strcpy(i8* %arraydecay122, i8* %arraydecay123) #4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.110
  %70 = load i32, i32* %i101, align 4
  %inc126 = add nsw i32 %70, 1
  store i32 %inc126, i32* %i101, align 4
  br label %for.cond.104

for.end.127:                                      ; preds = %for.cond.104
  %71 = load i8*, i8** %buf.addr, align 8
  %arraydecay128 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call129 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay128) #4
  br label %sw.epilog

sw.bb.130:                                        ; preds = %entry
  %72 = load i8*, i8** %buf.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx132 to i8**
  %74 = load i8*, i8** %rtstr, align 8
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* %74) #4
  br label %sw.epilog

sw.bb.134:                                        ; preds = %entry
  br label %sw.epilog

sw.bb.135:                                        ; preds = %entry
  %75 = load i8*, i8** %buf.addr, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  %78 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %75, %struct.rtx_def* %77, i32 %78)
  br label %sw.epilog

sw.bb.139:                                        ; preds = %entry
  %arraydecay140 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %81 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay140, %struct.rtx_def* %80, i32 %81)
  %82 = load i8*, i8** %buf.addr, align 8
  %arraydecay144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call145 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* %arraydecay144) #4
  br label %sw.epilog

sw.bb.146:                                        ; preds = %entry
  %arraydecay148 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call149 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)) #4
  store i32 0, i32* %i147, align 4
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.171, %sw.bb.146
  %83 = load i32, i32* %i147, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtvec153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtvec_def**
  %85 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec153, align 8
  %num_elem154 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %85, i32 0, i32 0
  %86 = load i32, i32* %num_elem154, align 4
  %cmp155 = icmp slt i32 %83, %86
  br i1 %cmp155, label %for.body.156, label %for.end.173

for.body.156:                                     ; preds = %for.cond.150
  %arraydecay157 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %87 = load i32, i32* %i147, align 4
  %idxprom158 = sext i32 %87 to i64
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 0
  %rtvec161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtvec_def**
  %89 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec161, align 8
  %elem162 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %89, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem162, i32 0, i64 %idxprom158
  %90 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx163, align 8
  %91 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay157, %struct.rtx_def* %90, i32 %91)
  %arraydecay164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %arraydecay165 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call167 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay165, i8* %arraydecay166) #4
  %arraydecay168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay169 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %call170 = call i8* @strcpy(i8* %arraydecay168, i8* %arraydecay169) #4
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.156
  %92 = load i32, i32* %i147, align 4
  %inc172 = add nsw i32 %92, 1
  store i32 %inc172, i32* %i147, align 4
  br label %for.cond.150

for.end.173:                                      ; preds = %for.cond.150
  %93 = load i8*, i8** %buf.addr, align 8
  %arraydecay174 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call175 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay174) #4
  br label %sw.epilog

sw.bb.176:                                        ; preds = %entry
  %arraydecay178 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call179 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #4
  store i32 0, i32* %i177, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.201, %sw.bb.176
  %94 = load i32, i32* %i177, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtvec183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec183, align 8
  %num_elem184 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 0
  %97 = load i32, i32* %num_elem184, align 4
  %cmp185 = icmp slt i32 %94, %97
  br i1 %cmp185, label %for.body.186, label %for.end.203

for.body.186:                                     ; preds = %for.cond.180
  %arraydecay187 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %98 = load i32, i32* %i177, align 4
  %idxprom188 = sext i32 %98 to i64
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtvec191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtvec_def**
  %100 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec191, align 8
  %elem192 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %100, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem192, i32 0, i64 %idxprom188
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx193, align 8
  %102 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay187, %struct.rtx_def* %101, i32 %102)
  %arraydecay194 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %arraydecay195 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay196 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t2, i32 0, i32 0
  %call197 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay195, i8* %arraydecay196) #4
  %arraydecay198 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %arraydecay199 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t3, i32 0, i32 0
  %call200 = call i8* @strcpy(i8* %arraydecay198, i8* %arraydecay199) #4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.186
  %103 = load i32, i32* %i177, align 4
  %inc202 = add nsw i32 %103, 1
  store i32 %inc202, i32* %i177, align 4
  br label %for.cond.180

for.end.203:                                      ; preds = %for.cond.180
  %104 = load i8*, i8** %buf.addr, align 8
  %arraydecay204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t1, i32 0, i32 0
  %call205 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay204) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %105 = load i8*, i8** %buf.addr, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %107 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %105, %struct.rtx_def* %106, i32 %107)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.203, %for.end.173, %sw.bb.139, %sw.bb.135, %sw.bb.134, %sw.bb.130, %for.end.127, %for.end, %if.end.72, %sw.bb.17, %sw.bb.10, %sw.bb.9, %sw.bb.7, %sw.bb
  ret void
}

declare void @debug_rtx(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @print_value(i8* %buf, %struct.rtx_def* %x, i32 %verbose) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %verbose.addr = alloca i32, align 4
  %t = alloca [2048 x i8], align 16
  %cur = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %cur, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb.3
    i32 57, label %sw.bb.14
    i32 68, label %sw.bb.20
    i32 67, label %sw.bb.27
    i32 58, label %sw.bb.36
    i32 134, label %sw.bb.45
    i32 61, label %sw.bb.54
    i32 63, label %sw.bb.82
    i32 62, label %sw.bb.96
    i32 69, label %sw.bb.98
    i32 59, label %sw.bb.100
    i32 66, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %4 = load i64, i64* %rtwint, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i64 %4) #4
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i8*, i8** %cur, align 8
  %arraydecay1 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call2 = call i8* @safe_concat(i8* %5, i8* %6, i8* %arraydecay1)
  store i8* %call2, i8** %cur, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtwint7 = bitcast %union.rtunion_def* %arrayidx6 to i64*
  %8 = load i64, i64* %rtwint7, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtwint10 = bitcast %union.rtunion_def* %arrayidx9 to i64*
  %10 = load i64, i64* %rtwint10, align 8
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i64 %8, i64 %10) #4
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i8*, i8** %cur, align 8
  %arraydecay12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call13 = call i8* @safe_concat(i8* %11, i8* %12, i8* %arraydecay12)
  store i8* %call13, i8** %cur, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i8*, i8** %cur, align 8
  %call15 = call i8* @safe_concat(i8* %13, i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call15, i8** %cur, align 8
  %15 = load i8*, i8** %buf.addr, align 8
  %16 = load i8*, i8** %cur, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx17 to i8**
  %18 = load i8*, i8** %rtstr, align 8
  %call18 = call i8* @safe_concat(i8* %15, i8* %16, i8* %18)
  store i8* %call18, i8** %cur, align 8
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i8*, i8** %cur, align 8
  %call19 = call i8* @safe_concat(i8* %19, i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call19, i8** %cur, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %21 = load i8*, i8** %buf.addr, align 8
  %22 = load i8*, i8** %cur, align 8
  %call21 = call i8* @safe_concat(i8* %21, i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0))
  store i8* %call21, i8** %cur, align 8
  %23 = load i8*, i8** %buf.addr, align 8
  %24 = load i8*, i8** %cur, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtstr24 = bitcast %union.rtunion_def* %arrayidx23 to i8**
  %26 = load i8*, i8** %rtstr24, align 8
  %call25 = call i8* @safe_concat(i8* %23, i8* %24, i8* %26)
  store i8* %call25, i8** %cur, align 8
  %27 = load i8*, i8** %buf.addr, align 8
  %28 = load i8*, i8** %cur, align 8
  %call26 = call i8* @safe_concat(i8* %27, i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0))
  store i8* %call26, i8** %cur, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %arraydecay28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %31 = load i32, i32* %rtint, align 4
  %call33 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 %31) #4
  %32 = load i8*, i8** %buf.addr, align 8
  %33 = load i8*, i8** %cur, align 8
  %arraydecay34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call35 = call i8* @safe_concat(i8* %32, i8* %33, i8* %arraydecay34)
  store i8* %call35, i8** %cur, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %arraydecay37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %36 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay37, %struct.rtx_def* %35, i32 %36)
  %37 = load i8*, i8** %buf.addr, align 8
  %38 = load i8*, i8** %cur, align 8
  %call41 = call i8* @safe_concat(i8* %37, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0))
  store i8* %call41, i8** %cur, align 8
  %39 = load i8*, i8** %buf.addr, align 8
  %40 = load i8*, i8** %cur, align 8
  %arraydecay42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call43 = call i8* @safe_concat(i8* %39, i8* %40, i8* %arraydecay42)
  store i8* %call43, i8** %cur, align 8
  %41 = load i8*, i8** %buf.addr, align 8
  %42 = load i8*, i8** %cur, align 8
  %call44 = call i8* @safe_concat(i8* %41, i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  store i8* %call44, i8** %cur, align 8
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %arraydecay46 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %45 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay46, %struct.rtx_def* %44, i32 %45)
  %46 = load i8*, i8** %buf.addr, align 8
  %47 = load i8*, i8** %cur, align 8
  %call50 = call i8* @safe_concat(i8* %46, i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  store i8* %call50, i8** %cur, align 8
  %48 = load i8*, i8** %buf.addr, align 8
  %49 = load i8*, i8** %cur, align 8
  %arraydecay51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call52 = call i8* @safe_concat(i8* %48, i8* %49, i8* %arraydecay51)
  store i8* %call52, i8** %cur, align 8
  %50 = load i8*, i8** %buf.addr, align 8
  %51 = load i8*, i8** %cur, align 8
  %call53 = call i8* @safe_concat(i8* %50, i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  store i8* %call53, i8** %cur, align 8
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx56 to i32*
  %53 = load i32, i32* %rtuint, align 4
  %cmp = icmp ult i32 %53, 53
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.54
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtuint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %55 = load i32, i32* %rtuint59, align 4
  %idxprom = zext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom
  %56 = load i8*, i8** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx61, align 1
  %conv = sext i8 %57 to i32
  store i32 %conv, i32* %c, align 4
  %58 = load i32, i32* %c, align 4
  %and = and i32 %58, 255
  %idxprom62 = sext i32 %and to i64
  %arrayidx63 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom62
  %59 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %59 to i32
  %and65 = and i32 %conv64, 4
  %tobool = icmp ne i32 %and65, 0
  br i1 %tobool, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %if.then
  %60 = load i8*, i8** %buf.addr, align 8
  %61 = load i8*, i8** %cur, align 8
  %call67 = call i8* @safe_concat(i8* %60, i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  store i8* %call67, i8** %cur, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.66, %if.then
  %62 = load i8*, i8** %buf.addr, align 8
  %63 = load i8*, i8** %cur, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtuint70 = bitcast %union.rtunion_def* %arrayidx69 to i32*
  %65 = load i32, i32* %rtuint70, align 4
  %idxprom71 = zext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom71
  %66 = load i8*, i8** %arrayidx72, align 8
  %call73 = call i8* @safe_concat(i8* %62, i8* %63, i8* %66)
  store i8* %call73, i8** %cur, align 8
  br label %if.end.81

if.else:                                          ; preds = %sw.bb.54
  %arraydecay74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtuint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %68 = load i32, i32* %rtuint77, align 4
  %call78 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 %68) #4
  %69 = load i8*, i8** %buf.addr, align 8
  %70 = load i8*, i8** %cur, align 8
  %arraydecay79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call80 = call i8* @safe_concat(i8* %69, i8* %70, i8* %arraydecay79)
  store i8* %call80, i8** %cur, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.end
  br label %sw.epilog

sw.bb.82:                                         ; preds = %entry
  %arraydecay83 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %73 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay83, %struct.rtx_def* %72, i32 %73)
  %74 = load i8*, i8** %buf.addr, align 8
  %75 = load i8*, i8** %cur, align 8
  %arraydecay87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call88 = call i8* @safe_concat(i8* %74, i8* %75, i8* %arraydecay87)
  store i8* %call88, i8** %cur, align 8
  %arraydecay89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 1
  %rtuint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %77 = load i32, i32* %rtuint92, align 4
  %call93 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 %77) #4
  %78 = load i8*, i8** %buf.addr, align 8
  %79 = load i8*, i8** %cur, align 8
  %arraydecay94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call95 = call i8* @safe_concat(i8* %78, i8* %79, i8* %arraydecay94)
  store i8* %call95, i8** %cur, align 8
  br label %sw.epilog

sw.bb.96:                                         ; preds = %entry
  %80 = load i8*, i8** %buf.addr, align 8
  %81 = load i8*, i8** %cur, align 8
  %call97 = call i8* @safe_concat(i8* %80, i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0))
  store i8* %call97, i8** %cur, align 8
  br label %sw.epilog

sw.bb.98:                                         ; preds = %entry
  %82 = load i8*, i8** %buf.addr, align 8
  %83 = load i8*, i8** %cur, align 8
  %call99 = call i8* @safe_concat(i8* %82, i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0))
  store i8* %call99, i8** %cur, align 8
  br label %sw.epilog

sw.bb.100:                                        ; preds = %entry
  %84 = load i8*, i8** %buf.addr, align 8
  %85 = load i8*, i8** %cur, align 8
  %call101 = call i8* @safe_concat(i8* %84, i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  store i8* %call101, i8** %cur, align 8
  br label %sw.epilog

sw.bb.102:                                        ; preds = %entry
  %arraydecay103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %88 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay103, %struct.rtx_def* %87, i32 %88)
  %89 = load i8*, i8** %buf.addr, align 8
  %90 = load i8*, i8** %cur, align 8
  %call107 = call i8* @safe_concat(i8* %89, i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call107, i8** %cur, align 8
  %91 = load i8*, i8** %buf.addr, align 8
  %92 = load i8*, i8** %cur, align 8
  %arraydecay108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call109 = call i8* @safe_concat(i8* %91, i8* %92, i8* %arraydecay108)
  store i8* %call109, i8** %cur, align 8
  %93 = load i8*, i8** %buf.addr, align 8
  %94 = load i8*, i8** %cur, align 8
  %call110 = call i8* @safe_concat(i8* %93, i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call110, i8** %cur, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %arraydecay111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %96 = load i32, i32* %verbose.addr, align 4
  call void @print_exp(i8* %arraydecay111, %struct.rtx_def* %95, i32 %96)
  %97 = load i8*, i8** %buf.addr, align 8
  %98 = load i8*, i8** %cur, align 8
  %arraydecay112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %t, i32 0, i32 0
  %call113 = call i8* @safe_concat(i8* %97, i8* %98, i8* %arraydecay112)
  store i8* %call113, i8** %cur, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.102, %sw.bb.100, %sw.bb.98, %sw.bb.96, %sw.bb.82, %if.end.81, %sw.bb.45, %sw.bb.36, %sw.bb.27, %sw.bb.20, %sw.bb.14, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_exp(i8* %buf, %struct.rtx_def* %x, i32 %verbose) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %verbose.addr = alloca i32, align 4
  %tmp = alloca [2048 x i8], align 16
  %st = alloca [4 x i8*], align 16
  %cur = alloca i8*, align 8
  %fun = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %op = alloca [4 x %struct.rtx_def*], align 16
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %cur, align 8
  store i8* null, i8** %fun, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 %idxprom7
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 75, label %sw.bb
    i32 135, label %sw.bb.36
    i32 76, label %sw.bb.47
    i32 74, label %sw.bb.57
    i32 77, label %sw.bb.66
    i32 78, label %sw.bb.72
    i32 79, label %sw.bb.82
    i32 81, label %sw.bb.92
    i32 80, label %sw.bb.101
    i32 82, label %sw.bb.111
    i32 92, label %sw.bb.120
    i32 93, label %sw.bb.129
    i32 94, label %sw.bb.138
    i32 95, label %sw.bb.147
    i32 86, label %sw.bb.156
    i32 83, label %sw.bb.162
    i32 84, label %sw.bb.172
    i32 85, label %sw.bb.182
    i32 87, label %sw.bb.192
    i32 90, label %sw.bb.202
    i32 89, label %sw.bb.212
    i32 88, label %sw.bb.222
    i32 91, label %sw.bb.232
    i32 129, label %sw.bb.242
    i32 130, label %sw.bb.247
    i32 131, label %sw.bb.252
    i32 103, label %sw.bb.257
    i32 102, label %sw.bb.267
    i32 105, label %sw.bb.277
    i32 109, label %sw.bb.287
    i32 107, label %sw.bb.296
    i32 111, label %sw.bb.306
    i32 104, label %sw.bb.315
    i32 108, label %sw.bb.325
    i32 106, label %sw.bb.334
    i32 110, label %sw.bb.344
    i32 132, label %sw.bb.353
    i32 133, label %sw.bb.366
    i32 120, label %sw.bb.381
    i32 121, label %sw.bb.388
    i32 123, label %sw.bb.395
    i32 122, label %sw.bb.402
    i32 124, label %sw.bb.409
    i32 125, label %sw.bb.416
    i32 127, label %sw.bb.423
    i32 126, label %sw.bb.430
    i32 128, label %sw.bb.435
    i32 96, label %sw.bb.442
    i32 97, label %sw.bb.448
    i32 98, label %sw.bb.454
    i32 99, label %sw.bb.460
    i32 50, label %sw.bb.466
    i32 72, label %sw.bb.480
    i32 52, label %sw.bb.497
    i32 46, label %sw.bb.502
    i32 42, label %sw.bb.515
    i32 43, label %sw.bb.515
  ]

sw.bb:                                            ; preds = %for.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %8, %struct.rtx_def** %arrayidx10, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load14 = load i32, i32* %11, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 54
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx21 to i64*
  %14 = load i64, i64* %rtwint, align 8
  %cmp22 = icmp slt i64 %14, 0
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arrayidx23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8** %arrayidx23, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtwint29 = bitcast %union.rtunion_def* %arrayidx28 to i64*
  %17 = load i64, i64* %rtwint29, align 8
  %sub = sub nsw i64 0, %17
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub)
  %arrayidx30 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx30, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %arrayidx31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8** %arrayidx31, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %arrayidx35 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %19, %struct.rtx_def** %arrayidx35, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %arrayidx40 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %21, %struct.rtx_def** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8** %arrayidx41, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %arrayidx45 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %23, %struct.rtx_def** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i8** %arrayidx46, align 8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %for.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %arrayidx51 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %25, %struct.rtx_def** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8** %arrayidx52, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %arrayidx56 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %27, %struct.rtx_def** %arrayidx56, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8** %fun, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %arrayidx61 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %29, %struct.rtx_def** %arrayidx61, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %arrayidx65 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %31, %struct.rtx_def** %arrayidx65, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %for.end
  %arrayidx67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), i8** %arrayidx67, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %arrayidx71 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %33, %struct.rtx_def** %arrayidx71, align 8
  br label %sw.epilog

sw.bb.72:                                         ; preds = %for.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %arrayidx76 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %35, %struct.rtx_def** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8** %arrayidx77, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %arrayidx81 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %37, %struct.rtx_def** %arrayidx81, align 8
  br label %sw.epilog

sw.bb.82:                                         ; preds = %for.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %arrayidx86 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %39, %struct.rtx_def** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8** %arrayidx87, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 1
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %arrayidx91 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %41, %struct.rtx_def** %arrayidx91, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8** %fun, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %arrayidx96 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %43, %struct.rtx_def** %arrayidx96, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 1
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %arrayidx100 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %45, %struct.rtx_def** %arrayidx100, align 8
  br label %sw.epilog

sw.bb.101:                                        ; preds = %for.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %arrayidx105 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %47, %struct.rtx_def** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8** %arrayidx106, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %arrayidx110 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %49, %struct.rtx_def** %arrayidx110, align 8
  br label %sw.epilog

sw.bb.111:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8** %fun, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 0
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %arrayidx115 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %51, %struct.rtx_def** %arrayidx115, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 1
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %arrayidx119 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %53, %struct.rtx_def** %arrayidx119, align 8
  br label %sw.epilog

sw.bb.120:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8** %fun, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %arrayidx124 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %55, %struct.rtx_def** %arrayidx124, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 1
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %arrayidx128 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %57, %struct.rtx_def** %arrayidx128, align 8
  br label %sw.epilog

sw.bb.129:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8** %fun, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  %arrayidx133 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %59, %struct.rtx_def** %arrayidx133, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 1
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %arrayidx137 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %61, %struct.rtx_def** %arrayidx137, align 8
  br label %sw.epilog

sw.bb.138:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8** %fun, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %arrayidx142 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %63, %struct.rtx_def** %arrayidx142, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 1
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %arrayidx146 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %65, %struct.rtx_def** %arrayidx146, align 8
  br label %sw.epilog

sw.bb.147:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8** %fun, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %arrayidx151 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %67, %struct.rtx_def** %arrayidx151, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 1
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %arrayidx155 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %69, %struct.rtx_def** %arrayidx155, align 8
  br label %sw.epilog

sw.bb.156:                                        ; preds = %for.end
  %arrayidx157 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8** %arrayidx157, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx160, align 8
  %arrayidx161 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %71, %struct.rtx_def** %arrayidx161, align 8
  br label %sw.epilog

sw.bb.162:                                        ; preds = %for.end
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %arrayidx166 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %73, %struct.rtx_def** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8** %arrayidx167, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 1
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  %arrayidx171 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %75, %struct.rtx_def** %arrayidx171, align 8
  br label %sw.epilog

sw.bb.172:                                        ; preds = %for.end
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx175, align 8
  %arrayidx176 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %77, %struct.rtx_def** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i8** %arrayidx177, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 1
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %arrayidx181 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %79, %struct.rtx_def** %arrayidx181, align 8
  br label %sw.epilog

sw.bb.182:                                        ; preds = %for.end
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %arrayidx186 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %81, %struct.rtx_def** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8** %arrayidx187, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %arrayidx191 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %83, %struct.rtx_def** %arrayidx191, align 8
  br label %sw.epilog

sw.bb.192:                                        ; preds = %for.end
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 0
  %rtx195 = bitcast %union.rtunion_def* %arrayidx194 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx195, align 8
  %arrayidx196 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %85, %struct.rtx_def** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8** %arrayidx197, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 1
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  %arrayidx201 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %87, %struct.rtx_def** %arrayidx201, align 8
  br label %sw.epilog

sw.bb.202:                                        ; preds = %for.end
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  %arrayidx206 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %89, %struct.rtx_def** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8** %arrayidx207, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 1
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %arrayidx211 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %91, %struct.rtx_def** %arrayidx211, align 8
  br label %sw.epilog

sw.bb.212:                                        ; preds = %for.end
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 0
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %arrayidx216 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %93, %struct.rtx_def** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i8** %arrayidx217, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 1
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %arrayidx221 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %95, %struct.rtx_def** %arrayidx221, align 8
  br label %sw.epilog

sw.bb.222:                                        ; preds = %for.end
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  %arrayidx226 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %97, %struct.rtx_def** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8** %arrayidx227, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 1
  %rtx230 = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx230, align 8
  %arrayidx231 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %99, %struct.rtx_def** %arrayidx231, align 8
  br label %sw.epilog

sw.bb.232:                                        ; preds = %for.end
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 0
  %rtx235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx235, align 8
  %arrayidx236 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %101, %struct.rtx_def** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i8** %arrayidx237, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 1
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %arrayidx241 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %103, %struct.rtx_def** %arrayidx241, align 8
  br label %sw.epilog

sw.bb.242:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8** %fun, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld243 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx244 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld243, i32 0, i64 0
  %rtx245 = bitcast %union.rtunion_def* %arrayidx244 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx245, align 8
  %arrayidx246 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %105, %struct.rtx_def** %arrayidx246, align 8
  br label %sw.epilog

sw.bb.247:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8** %fun, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 0
  %rtx250 = bitcast %union.rtunion_def* %arrayidx249 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx250, align 8
  %arrayidx251 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %107, %struct.rtx_def** %arrayidx251, align 8
  br label %sw.epilog

sw.bb.252:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8** %fun, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  %arrayidx256 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %109, %struct.rtx_def** %arrayidx256, align 8
  br label %sw.epilog

sw.bb.257:                                        ; preds = %for.end
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtx260 = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx260, align 8
  %arrayidx261 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %111, %struct.rtx_def** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i8** %arrayidx262, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 1
  %rtx265 = bitcast %union.rtunion_def* %arrayidx264 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx265, align 8
  %arrayidx266 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %113, %struct.rtx_def** %arrayidx266, align 8
  br label %sw.epilog

sw.bb.267:                                        ; preds = %for.end
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld268, i32 0, i64 0
  %rtx270 = bitcast %union.rtunion_def* %arrayidx269 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx270, align 8
  %arrayidx271 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %115, %struct.rtx_def** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8** %arrayidx272, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 1
  %rtx275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx275, align 8
  %arrayidx276 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %117, %struct.rtx_def** %arrayidx276, align 8
  br label %sw.epilog

sw.bb.277:                                        ; preds = %for.end
  %118 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld278 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i32 0, i64 0
  %rtx280 = bitcast %union.rtunion_def* %arrayidx279 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx280, align 8
  %arrayidx281 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %119, %struct.rtx_def** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8** %arrayidx282, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 1
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %arrayidx286 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %121, %struct.rtx_def** %arrayidx286, align 8
  br label %sw.epilog

sw.bb.287:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8** %fun, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld288, i32 0, i64 0
  %rtx290 = bitcast %union.rtunion_def* %arrayidx289 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx290, align 8
  %arrayidx291 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %123, %struct.rtx_def** %arrayidx291, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld292, i32 0, i64 1
  %rtx294 = bitcast %union.rtunion_def* %arrayidx293 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx294, align 8
  %arrayidx295 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %125, %struct.rtx_def** %arrayidx295, align 8
  br label %sw.epilog

sw.bb.296:                                        ; preds = %for.end
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld297, i32 0, i64 0
  %rtx299 = bitcast %union.rtunion_def* %arrayidx298 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx299, align 8
  %arrayidx300 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %127, %struct.rtx_def** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8** %arrayidx301, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld302, i32 0, i64 1
  %rtx304 = bitcast %union.rtunion_def* %arrayidx303 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx304, align 8
  %arrayidx305 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %129, %struct.rtx_def** %arrayidx305, align 8
  br label %sw.epilog

sw.bb.306:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i8** %fun, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld307, i32 0, i64 0
  %rtx309 = bitcast %union.rtunion_def* %arrayidx308 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx309, align 8
  %arrayidx310 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %131, %struct.rtx_def** %arrayidx310, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx312 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld311, i32 0, i64 1
  %rtx313 = bitcast %union.rtunion_def* %arrayidx312 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx313, align 8
  %arrayidx314 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %133, %struct.rtx_def** %arrayidx314, align 8
  br label %sw.epilog

sw.bb.315:                                        ; preds = %for.end
  %134 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 0
  %rtx318 = bitcast %union.rtunion_def* %arrayidx317 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx318, align 8
  %arrayidx319 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %135, %struct.rtx_def** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8** %arrayidx320, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 1
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx323, align 8
  %arrayidx324 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %137, %struct.rtx_def** %arrayidx324, align 8
  br label %sw.epilog

sw.bb.325:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i8** %fun, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtx328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx328, align 8
  %arrayidx329 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %139, %struct.rtx_def** %arrayidx329, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld330, i32 0, i64 1
  %rtx332 = bitcast %union.rtunion_def* %arrayidx331 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx332, align 8
  %arrayidx333 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %141, %struct.rtx_def** %arrayidx333, align 8
  br label %sw.epilog

sw.bb.334:                                        ; preds = %for.end
  %142 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld335, i32 0, i64 0
  %rtx337 = bitcast %union.rtunion_def* %arrayidx336 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx337, align 8
  %arrayidx338 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %143, %struct.rtx_def** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8** %arrayidx339, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld340, i32 0, i64 1
  %rtx342 = bitcast %union.rtunion_def* %arrayidx341 to %struct.rtx_def**
  %145 = load %struct.rtx_def*, %struct.rtx_def** %rtx342, align 8
  %arrayidx343 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %145, %struct.rtx_def** %arrayidx343, align 8
  br label %sw.epilog

sw.bb.344:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i8** %fun, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld345, i32 0, i64 0
  %rtx347 = bitcast %union.rtunion_def* %arrayidx346 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx347, align 8
  %arrayidx348 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %147, %struct.rtx_def** %arrayidx348, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 1
  %rtx351 = bitcast %union.rtunion_def* %arrayidx350 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx351, align 8
  %arrayidx352 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %149, %struct.rtx_def** %arrayidx352, align 8
  br label %sw.epilog

sw.bb.353:                                        ; preds = %for.end
  %150 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %150, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0)
  store i8* %cond, i8** %fun, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtx356 = bitcast %union.rtunion_def* %arrayidx355 to %struct.rtx_def**
  %152 = load %struct.rtx_def*, %struct.rtx_def** %rtx356, align 8
  %arrayidx357 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %152, %struct.rtx_def** %arrayidx357, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 1
  %rtx360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %rtx360, align 8
  %arrayidx361 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %154, %struct.rtx_def** %arrayidx361, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld362, i32 0, i64 2
  %rtx364 = bitcast %union.rtunion_def* %arrayidx363 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtx364, align 8
  %arrayidx365 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 2
  store %struct.rtx_def* %156, %struct.rtx_def** %arrayidx365, align 8
  br label %sw.epilog

sw.bb.366:                                        ; preds = %for.end
  %157 = load i32, i32* %verbose.addr, align 4
  %tobool367 = icmp ne i32 %157, 0
  %cond368 = select i1 %tobool367, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0)
  store i8* %cond368, i8** %fun, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 0
  %rtx371 = bitcast %union.rtunion_def* %arrayidx370 to %struct.rtx_def**
  %159 = load %struct.rtx_def*, %struct.rtx_def** %rtx371, align 8
  %arrayidx372 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %159, %struct.rtx_def** %arrayidx372, align 8
  %160 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 1
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %161 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  %arrayidx376 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %161, %struct.rtx_def** %arrayidx376, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld377, i32 0, i64 2
  %rtx379 = bitcast %union.rtunion_def* %arrayidx378 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx379, align 8
  %arrayidx380 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 2
  store %struct.rtx_def* %163, %struct.rtx_def** %arrayidx380, align 8
  br label %sw.epilog

sw.bb.381:                                        ; preds = %for.end
  %164 = load i32, i32* %verbose.addr, align 4
  %tobool382 = icmp ne i32 %164, 0
  %cond383 = select i1 %tobool382, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0)
  store i8* %cond383, i8** %fun, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 0
  %rtx386 = bitcast %union.rtunion_def* %arrayidx385 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx386, align 8
  %arrayidx387 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %166, %struct.rtx_def** %arrayidx387, align 8
  br label %sw.epilog

sw.bb.388:                                        ; preds = %for.end
  %167 = load i32, i32* %verbose.addr, align 4
  %tobool389 = icmp ne i32 %167, 0
  %cond390 = select i1 %tobool389, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0)
  store i8* %cond390, i8** %fun, align 8
  %168 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld391, i32 0, i64 0
  %rtx393 = bitcast %union.rtunion_def* %arrayidx392 to %struct.rtx_def**
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx393, align 8
  %arrayidx394 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %169, %struct.rtx_def** %arrayidx394, align 8
  br label %sw.epilog

sw.bb.395:                                        ; preds = %for.end
  %170 = load i32, i32* %verbose.addr, align 4
  %tobool396 = icmp ne i32 %170, 0
  %cond397 = select i1 %tobool396, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)
  store i8* %cond397, i8** %fun, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 0
  %rtx400 = bitcast %union.rtunion_def* %arrayidx399 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx400, align 8
  %arrayidx401 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %172, %struct.rtx_def** %arrayidx401, align 8
  br label %sw.epilog

sw.bb.402:                                        ; preds = %for.end
  %173 = load i32, i32* %verbose.addr, align 4
  %tobool403 = icmp ne i32 %173, 0
  %cond404 = select i1 %tobool403, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)
  store i8* %cond404, i8** %fun, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld405, i32 0, i64 0
  %rtx407 = bitcast %union.rtunion_def* %arrayidx406 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx407, align 8
  %arrayidx408 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %175, %struct.rtx_def** %arrayidx408, align 8
  br label %sw.epilog

sw.bb.409:                                        ; preds = %for.end
  %176 = load i32, i32* %verbose.addr, align 4
  %tobool410 = icmp ne i32 %176, 0
  %cond411 = select i1 %tobool410, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0)
  store i8* %cond411, i8** %fun, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 0
  %rtx414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtx_def**
  %178 = load %struct.rtx_def*, %struct.rtx_def** %rtx414, align 8
  %arrayidx415 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %178, %struct.rtx_def** %arrayidx415, align 8
  br label %sw.epilog

sw.bb.416:                                        ; preds = %for.end
  %179 = load i32, i32* %verbose.addr, align 4
  %tobool417 = icmp ne i32 %179, 0
  %cond418 = select i1 %tobool417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0)
  store i8* %cond418, i8** %fun, align 8
  %180 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 0
  %rtx421 = bitcast %union.rtunion_def* %arrayidx420 to %struct.rtx_def**
  %181 = load %struct.rtx_def*, %struct.rtx_def** %rtx421, align 8
  %arrayidx422 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %181, %struct.rtx_def** %arrayidx422, align 8
  br label %sw.epilog

sw.bb.423:                                        ; preds = %for.end
  %182 = load i32, i32* %verbose.addr, align 4
  %tobool424 = icmp ne i32 %182, 0
  %cond425 = select i1 %tobool424, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0)
  store i8* %cond425, i8** %fun, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld426, i32 0, i64 0
  %rtx428 = bitcast %union.rtunion_def* %arrayidx427 to %struct.rtx_def**
  %184 = load %struct.rtx_def*, %struct.rtx_def** %rtx428, align 8
  %arrayidx429 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %184, %struct.rtx_def** %arrayidx429, align 8
  br label %sw.epilog

sw.bb.430:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8** %fun, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld431 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld431, i32 0, i64 0
  %rtx433 = bitcast %union.rtunion_def* %arrayidx432 to %struct.rtx_def**
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtx433, align 8
  %arrayidx434 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %186, %struct.rtx_def** %arrayidx434, align 8
  br label %sw.epilog

sw.bb.435:                                        ; preds = %for.end
  %187 = load i32, i32* %verbose.addr, align 4
  %tobool436 = icmp ne i32 %187, 0
  %cond437 = select i1 %tobool436, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)
  store i8* %cond437, i8** %fun, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld438, i32 0, i64 0
  %rtx440 = bitcast %union.rtunion_def* %arrayidx439 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx440, align 8
  %arrayidx441 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %189, %struct.rtx_def** %arrayidx441, align 8
  br label %sw.epilog

sw.bb.442:                                        ; preds = %for.end
  %arrayidx443 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8** %arrayidx443, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld444 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx445 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld444, i32 0, i64 0
  %rtx446 = bitcast %union.rtunion_def* %arrayidx445 to %struct.rtx_def**
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtx446, align 8
  %arrayidx447 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %191, %struct.rtx_def** %arrayidx447, align 8
  br label %sw.epilog

sw.bb.448:                                        ; preds = %for.end
  %arrayidx449 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8** %arrayidx449, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld450 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx451 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld450, i32 0, i64 0
  %rtx452 = bitcast %union.rtunion_def* %arrayidx451 to %struct.rtx_def**
  %193 = load %struct.rtx_def*, %struct.rtx_def** %rtx452, align 8
  %arrayidx453 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %193, %struct.rtx_def** %arrayidx453, align 8
  br label %sw.epilog

sw.bb.454:                                        ; preds = %for.end
  %194 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 0
  %rtx457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx457, align 8
  %arrayidx458 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %195, %struct.rtx_def** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8** %arrayidx459, align 8
  br label %sw.epilog

sw.bb.460:                                        ; preds = %for.end
  %196 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld461, i32 0, i64 0
  %rtx463 = bitcast %union.rtunion_def* %arrayidx462 to %struct.rtx_def**
  %197 = load %struct.rtx_def*, %struct.rtx_def** %rtx463, align 8
  %arrayidx464 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %197, %struct.rtx_def** %arrayidx464, align 8
  %arrayidx465 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.118, i32 0, i32 0), i8** %arrayidx465, align 8
  br label %sw.epilog

sw.bb.466:                                        ; preds = %for.end
  %arrayidx467 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i8** %arrayidx467, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld468 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx469 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld468, i32 0, i64 0
  %rtx470 = bitcast %union.rtunion_def* %arrayidx469 to %struct.rtx_def**
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rtx470, align 8
  %arrayidx471 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %199, %struct.rtx_def** %arrayidx471, align 8
  %200 = load i32, i32* %verbose.addr, align 4
  %tobool472 = icmp ne i32 %200, 0
  br i1 %tobool472, label %if.then.473, label %if.end.479

if.then.473:                                      ; preds = %sw.bb.466
  %arrayidx474 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i8** %arrayidx474, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 1
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %arrayidx478 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %202, %struct.rtx_def** %arrayidx478, align 8
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.473, %sw.bb.466
  br label %sw.epilog

sw.bb.480:                                        ; preds = %for.end
  %arrayidx481 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8** %arrayidx481, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld482, i32 0, i64 0
  %rtx484 = bitcast %union.rtunion_def* %arrayidx483 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx484, align 8
  %arrayidx485 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %204, %struct.rtx_def** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8** %arrayidx486, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld487, i32 0, i64 1
  %rtx489 = bitcast %union.rtunion_def* %arrayidx488 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx489, align 8
  %arrayidx490 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %206, %struct.rtx_def** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8** %arrayidx491, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 2
  %rtx494 = bitcast %union.rtunion_def* %arrayidx493 to %struct.rtx_def**
  %208 = load %struct.rtx_def*, %struct.rtx_def** %rtx494, align 8
  %arrayidx495 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 2
  store %struct.rtx_def* %208, %struct.rtx_def** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8** %arrayidx496, align 8
  br label %sw.epilog

sw.bb.497:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8** %fun, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 0
  %rtx500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtx500, align 8
  %arrayidx501 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %210, %struct.rtx_def** %arrayidx501, align 8
  br label %sw.epilog

sw.bb.502:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), i8** %fun, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld503, i32 0, i64 0
  %rtx505 = bitcast %union.rtunion_def* %arrayidx504 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx505, align 8
  %arrayidx506 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 0
  store %struct.rtx_def* %212, %struct.rtx_def** %arrayidx506, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld507, i32 0, i64 1
  %rtx509 = bitcast %union.rtunion_def* %arrayidx508 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx509, align 8
  %arrayidx510 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 1
  store %struct.rtx_def* %214, %struct.rtx_def** %arrayidx510, align 8
  %215 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld511 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld511, i32 0, i64 2
  %rtx513 = bitcast %union.rtunion_def* %arrayidx512 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx513, align 8
  %arrayidx514 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 2
  store %struct.rtx_def* %216, %struct.rtx_def** %arrayidx514, align 8
  br label %sw.epilog

sw.bb.515:                                        ; preds = %for.end, %for.end
  %217 = load i8*, i8** %buf.addr, align 8
  %218 = load i8*, i8** %cur, align 8
  %call516 = call i8* @safe_concat(i8* %217, i8* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0))
  store i8* %call516, i8** %cur, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load517 = load i32, i32* %220, align 8
  %bf.clear518 = and i32 %bf.load517, 65535
  %cmp519 = icmp eq i32 %bf.clear518, 43
  br i1 %cmp519, label %if.then.520, label %if.end.522

if.then.520:                                      ; preds = %sw.bb.515
  %221 = load i8*, i8** %buf.addr, align 8
  %222 = load i8*, i8** %cur, align 8
  %call521 = call i8* @safe_concat(i8* %221, i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0))
  store i8* %call521, i8** %cur, align 8
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.520, %sw.bb.515
  %223 = load i8*, i8** %buf.addr, align 8
  %224 = load i8*, i8** %cur, align 8
  %call523 = call i8* @safe_concat(i8* %223, i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call523, i8** %cur, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %sep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.524

for.cond.524:                                     ; preds = %for.inc.537, %if.end.522
  %225 = load i32, i32* %i, align 4
  %226 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld525 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx526 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld525, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx526 to %struct.rtvec_def**
  %227 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %227, i32 0, i32 0
  %228 = load i32, i32* %num_elem, align 4
  %cmp527 = icmp slt i32 %225, %228
  br i1 %cmp527, label %for.body.528, label %for.end.539

for.body.528:                                     ; preds = %for.cond.524
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %229 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %229 to i64
  %230 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld530 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx531 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld530, i32 0, i64 0
  %rtvec532 = bitcast %union.rtunion_def* %arrayidx531 to %struct.rtvec_def**
  %231 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec532, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %231, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom529
  %232 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx533, align 8
  %233 = load i32, i32* %verbose.addr, align 4
  call void @print_pattern(i8* %arraydecay, %struct.rtx_def* %232, i32 %233)
  %234 = load i8*, i8** %buf.addr, align 8
  %235 = load i8*, i8** %cur, align 8
  %236 = load i8*, i8** %sep, align 8
  %call534 = call i8* @safe_concat(i8* %234, i8* %235, i8* %236)
  store i8* %call534, i8** %cur, align 8
  %237 = load i8*, i8** %buf.addr, align 8
  %238 = load i8*, i8** %cur, align 8
  %arraydecay535 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %call536 = call i8* @safe_concat(i8* %237, i8* %238, i8* %arraydecay535)
  store i8* %call536, i8** %cur, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0), i8** %sep, align 8
  br label %for.inc.537

for.inc.537:                                      ; preds = %for.body.528
  %239 = load i32, i32* %i, align 4
  %inc538 = add nsw i32 %239, 1
  store i32 %inc538, i32* %i, align 4
  br label %for.cond.524

for.end.539:                                      ; preds = %for.cond.524
  %240 = load i8*, i8** %buf.addr, align 8
  %241 = load i8*, i8** %cur, align 8
  %call540 = call i8* @safe_concat(i8* %240, i8* %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0))
  store i8* %call540, i8** %cur, align 8
  %arraydecay541 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %242 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx543 to i32*
  %243 = load i32, i32* %rtint, align 4
  %call544 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay541, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i32 %243) #4
  %244 = load i8*, i8** %buf.addr, align 8
  %245 = load i8*, i8** %cur, align 8
  %arraydecay545 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %call546 = call i8* @safe_concat(i8* %244, i8* %245, i8* %arraydecay545)
  store i8* %call546, i8** %cur, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %246 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load547 = load i32, i32* %247, align 8
  %bf.clear548 = and i32 %bf.load547, 65535
  %idxprom549 = sext i32 %bf.clear548 to i64
  %arrayidx550 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_name, i32 0, i64 %idxprom549
  %248 = load i8*, i8** %arrayidx550, align 8
  %arrayidx551 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 0
  store i8* %248, i8** %arrayidx551, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.539, %sw.bb.502, %sw.bb.497, %sw.bb.480, %if.end.479, %sw.bb.460, %sw.bb.454, %sw.bb.448, %sw.bb.442, %sw.bb.435, %sw.bb.430, %sw.bb.423, %sw.bb.416, %sw.bb.409, %sw.bb.402, %sw.bb.395, %sw.bb.388, %sw.bb.381, %sw.bb.366, %sw.bb.353, %sw.bb.344, %sw.bb.334, %sw.bb.325, %sw.bb.315, %sw.bb.306, %sw.bb.296, %sw.bb.287, %sw.bb.277, %sw.bb.267, %sw.bb.257, %sw.bb.252, %sw.bb.247, %sw.bb.242, %sw.bb.232, %sw.bb.222, %sw.bb.212, %sw.bb.202, %sw.bb.192, %sw.bb.182, %sw.bb.172, %sw.bb.162, %sw.bb.156, %sw.bb.147, %sw.bb.138, %sw.bb.129, %sw.bb.120, %sw.bb.111, %sw.bb.101, %sw.bb.92, %sw.bb.82, %sw.bb.72, %sw.bb.66, %sw.bb.57, %sw.bb.47, %sw.bb.36, %if.end
  %249 = load i8*, i8** %fun, align 8
  %tobool552 = icmp ne i8* %249, null
  br i1 %tobool552, label %if.then.553, label %if.end.556

if.then.553:                                      ; preds = %sw.epilog
  %250 = load i8*, i8** %buf.addr, align 8
  %251 = load i8*, i8** %cur, align 8
  %252 = load i8*, i8** %fun, align 8
  %call554 = call i8* @safe_concat(i8* %250, i8* %251, i8* %252)
  store i8* %call554, i8** %cur, align 8
  %253 = load i8*, i8** %buf.addr, align 8
  %254 = load i8*, i8** %cur, align 8
  %call555 = call i8* @safe_concat(i8* %253, i8* %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0))
  store i8* %call555, i8** %cur, align 8
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.553, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond.557

for.cond.557:                                     ; preds = %for.inc.584, %if.end.556
  %255 = load i32, i32* %i, align 4
  %cmp558 = icmp slt i32 %255, 4
  br i1 %cmp558, label %for.body.559, label %for.end.586

for.body.559:                                     ; preds = %for.cond.557
  %256 = load i32, i32* %i, align 4
  %idxprom560 = sext i32 %256 to i64
  %arrayidx561 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 %idxprom560
  %257 = load i8*, i8** %arrayidx561, align 8
  %tobool562 = icmp ne i8* %257, null
  br i1 %tobool562, label %if.then.563, label %if.end.567

if.then.563:                                      ; preds = %for.body.559
  %258 = load i8*, i8** %buf.addr, align 8
  %259 = load i8*, i8** %cur, align 8
  %260 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %260 to i64
  %arrayidx565 = getelementptr inbounds [4 x i8*], [4 x i8*]* %st, i32 0, i64 %idxprom564
  %261 = load i8*, i8** %arrayidx565, align 8
  %call566 = call i8* @safe_concat(i8* %258, i8* %259, i8* %261)
  store i8* %call566, i8** %cur, align 8
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.563, %for.body.559
  %262 = load i32, i32* %i, align 4
  %idxprom568 = sext i32 %262 to i64
  %arrayidx569 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 %idxprom568
  %263 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx569, align 8
  %tobool570 = icmp ne %struct.rtx_def* %263, null
  br i1 %tobool570, label %if.then.571, label %if.end.583

if.then.571:                                      ; preds = %if.end.567
  %264 = load i8*, i8** %fun, align 8
  %tobool572 = icmp ne i8* %264, null
  br i1 %tobool572, label %land.lhs.true.573, label %if.end.577

land.lhs.true.573:                                ; preds = %if.then.571
  %265 = load i32, i32* %i, align 4
  %cmp574 = icmp ne i32 %265, 0
  br i1 %cmp574, label %if.then.575, label %if.end.577

if.then.575:                                      ; preds = %land.lhs.true.573
  %266 = load i8*, i8** %buf.addr, align 8
  %267 = load i8*, i8** %cur, align 8
  %call576 = call i8* @safe_concat(i8* %266, i8* %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.129, i32 0, i32 0))
  store i8* %call576, i8** %cur, align 8
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.575, %land.lhs.true.573, %if.then.571
  %arraydecay578 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %268 = load i32, i32* %i, align 4
  %idxprom579 = sext i32 %268 to i64
  %arrayidx580 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %op, i32 0, i64 %idxprom579
  %269 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx580, align 8
  %270 = load i32, i32* %verbose.addr, align 4
  call void @print_value(i8* %arraydecay578, %struct.rtx_def* %269, i32 %270)
  %271 = load i8*, i8** %buf.addr, align 8
  %272 = load i8*, i8** %cur, align 8
  %arraydecay581 = getelementptr inbounds [2048 x i8], [2048 x i8]* %tmp, i32 0, i32 0
  %call582 = call i8* @safe_concat(i8* %271, i8* %272, i8* %arraydecay581)
  store i8* %call582, i8** %cur, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %if.end.577, %if.end.567
  br label %for.inc.584

for.inc.584:                                      ; preds = %if.end.583
  %273 = load i32, i32* %i, align 4
  %inc585 = add nsw i32 %273, 1
  store i32 %inc585, i32* %i, align 4
  br label %for.cond.557

for.end.586:                                      ; preds = %for.cond.557
  %274 = load i8*, i8** %fun, align 8
  %tobool587 = icmp ne i8* %274, null
  br i1 %tobool587, label %if.then.588, label %if.end.590

if.then.588:                                      ; preds = %for.end.586
  %275 = load i8*, i8** %buf.addr, align 8
  %276 = load i8*, i8** %cur, align 8
  %call589 = call i8* @safe_concat(i8* %275, i8* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  store i8* %call589, i8** %cur, align 8
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.588, %for.end.586
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @safe_concat(i8* %buf, i8* %cur, i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %cur.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %end = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %cur, i8** %cur.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2048
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  store i8* %add.ptr1, i8** %end, align 8
  %1 = load i8*, i8** %cur.addr, align 8
  %2 = load i8*, i8** %end, align 8
  %cmp = icmp ugt i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %end, align 8
  store i8 0, i8* %3, align 1
  %4 = load i8*, i8** %end, align 8
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i8*, i8** %cur.addr, align 8
  %6 = load i8*, i8** %end, align 8
  %cmp2 = icmp ult i8* %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %c, align 4
  %cmp3 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %c, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = load i8*, i8** %cur.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %cur.addr, align 8
  store i8 %conv5, i8* %11, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %cur.addr, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %cur.addr, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
