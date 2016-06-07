; ModuleID = 'doloop.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.loop = type { i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def**, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.simple_bitmap_def*, i32, %struct.edge_def**, i32, %struct.edge_def**, i32, %struct.simple_bitmap_def*, i32, i32, %struct.loop*, %struct.loop*, %struct.loop*, i32, i32, i8*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.loop_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i64, i32, i32, %struct.iv_class*, %struct.rtx_def*, %struct.loop_mem_info*, i32, i32, i32, i32, i32, %struct.rtx_def*, %struct.loop_movables, %struct.loop_regs, %struct.loop_ivs, i32 }
%struct.iv_class = type { i32, i32, %struct.induction*, i32, %struct.induction*, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.iv_class*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.induction = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def**, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i16, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.induction*, %struct.induction*, i64, %struct.induction*, %struct.rtx_def* }
%struct.loop_mem_info = type { %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.loop_movables = type { %struct.movable*, %struct.movable* }
%struct.movable = type opaque
%struct.loop_regs = type { i32, i32, %struct.loop_reg*, i32 }
%struct.loop_reg = type { i32, i32, %struct.rtx_def*, i8, i8 }
%struct.loop_ivs = type { %struct.iv*, i32, %struct.iv_class* }
%struct.iv = type { i32, %union.anon }
%union.anon = type { %struct.iv_class* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@loop_dump_stream = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"Doloop: Processing loop %d, enclosed levels %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Doloop: Cannot precondition loop.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Doloop: Not normal loop.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Doloop: Too few iterations (%ld) to be profitable.\0A\00", align 1
@word_mode = external global i32, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Doloop: Target unwilling to use doloop pattern!\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Doloop: Unrecognizable doloop pattern!\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Doloop: Invalid jump at loop end.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Doloop: Loop completely unrolled.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Doloop: Loop has multiple exit targets.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Doloop: Indirect jump in function.\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Doloop: Function call in loop.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Doloop: Computed branch in the loop.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Doloop: Could not determine iteration info.\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Doloop: Increment not an integer constant.\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Doloop: NE loop with non-unity increment.\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Doloop: Possible infinite iteration case ignored.\0A\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@.str.16 = private unnamed_addr constant [35 x i8] c"Doloop: Inserting doloop pattern (\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" iterations).\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.20 = private unnamed_addr constant [9 x i8] c"doloop.c\00", align 1
@__FUNCTION__.doloop_modify = private unnamed_addr constant [14 x i8] c"doloop_modify\00", align 1
@__FUNCTION__.doloop_modify_runtime = private unnamed_addr constant [22 x i8] c"doloop_modify_runtime\00", align 1
@max_uid_for_loop = external global i32, align 4
@uid_luid = external global i32*, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"Doloop: Basic induction var skips initial incr.\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Doloop: Do-while loop.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @doloop_optimize(%struct.loop* %loop) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %loop_info = alloca %struct.loop_info*, align 8
  %initial_value = alloca %struct.rtx_def*, align 8
  %final_value = alloca %struct.rtx_def*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %jump_insn = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %n_iterations = alloca i64, align 8
  %n_iterations_max = alloca i64, align 8
  %doloop_seq = alloca %struct.rtx_def*, align 8
  %doloop_pat = alloca %struct.rtx_def*, align 8
  %doloop_reg = alloca %struct.rtx_def*, align 8
  %iterations = alloca %struct.rtx_def*, align 8
  %iterations_max = alloca %struct.rtx_def*, align 8
  %start_label = alloca %struct.rtx_def*, align 8
  %condition = alloca %struct.rtx_def*, align 8
  %nonneg = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  store %struct.loop_info* %2, %struct.loop_info** %loop_info, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %5 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 0
  %6 = load i32, i32* %num, align 4
  %7 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %level = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 16
  %8 = load i32, i32* %level, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 27
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call1 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %10)
  store %struct.rtx_def* %call1, %struct.rtx_def** %jump_insn, align 8
  %11 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %call2 = call i32 @doloop_valid_p(%struct.loop* %11, %struct.rtx_def* %12)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %call6 = call i32 @precondition_loop_p(%struct.loop* %13, %struct.rtx_def** %initial_value, %struct.rtx_def** %final_value, %struct.rtx_def** %increment, i32* %mode)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  %16 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations14 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %16, i32 0, i32 15
  %17 = load i64, i64* %n_iterations14, align 8
  store i64 %17, i64* %n_iterations, align 8
  %18 = load i64, i64* %n_iterations, align 8
  %tobool15 = icmp ne i64 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %19 = load i64, i64* %n_iterations, align 8
  store i64 %19, i64* %n_iterations_max, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.13
  %20 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %call17 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %20, i32 8, %struct.rtx_def* null)
  %cmp = icmp ne %struct.rtx_def* %call17, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %nonneg, align 4
  %21 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %22 = load i32, i32* %mode, align 4
  %23 = load i32, i32* %nonneg, align 4
  %call18 = call i64 @doloop_iterations_max(%struct.loop_info* %21, i32 %22, i32 %23)
  store i64 %call18, i64* %n_iterations_max, align 8
  %24 = load i64, i64* %n_iterations_max, align 8
  %tobool19 = icmp ne i64 %24, 0
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  %27 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number = getelementptr inbounds %struct.loop_info, %struct.loop_info* %27, i32 0, i32 16
  %28 = load i32, i32* %unroll_number, align 4
  %conv27 = zext i32 %28 to i64
  %29 = load i64, i64* %n_iterations, align 8
  %div = udiv i64 %29, %conv27
  store i64 %div, i64* %n_iterations, align 8
  %30 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number28 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %30, i32 0, i32 16
  %31 = load i32, i32* %unroll_number28, align 4
  %conv29 = zext i32 %31 to i64
  %32 = load i64, i64* %n_iterations_max, align 8
  %div30 = udiv i64 %32, %conv29
  store i64 %div30, i64* %n_iterations_max, align 8
  %33 = load i64, i64* %n_iterations, align 8
  %tobool31 = icmp ne i64 %33, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.26
  %34 = load i64, i64* %n_iterations, align 8
  %cmp32 = icmp ult i64 %34, 3
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %land.lhs.true
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %35, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %37 = load i64, i64* %n_iterations, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i64 %37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.34
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true, %if.end.26
  %38 = load i64, i64* %n_iterations, align 8
  %call40 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %38)
  store %struct.rtx_def* %call40, %struct.rtx_def** %iterations, align 8
  %39 = load i64, i64* %n_iterations_max, align 8
  %call41 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %39)
  store %struct.rtx_def* %call41, %struct.rtx_def** %iterations_max, align 8
  %call42 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call42, %struct.rtx_def** %start_label, align 8
  %40 = load i32, i32* %mode, align 4
  %call43 = call %struct.rtx_def* @gen_reg_rtx(i32 %40)
  store %struct.rtx_def* %call43, %struct.rtx_def** %doloop_reg, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %doloop_reg, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max, align 8
  %44 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %level44 = getelementptr inbounds %struct.loop, %struct.loop* %44, i32 0, i32 16
  %45 = load i32, i32* %level44, align 4
  %conv45 = sext i32 %45 to i64
  %call46 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv45)
  %46 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %call47 = call %struct.rtx_def* @gen_doloop_end(%struct.rtx_def* %41, %struct.rtx_def* %42, %struct.rtx_def* %43, %struct.rtx_def* %call46, %struct.rtx_def* %46)
  store %struct.rtx_def* %call47, %struct.rtx_def** %doloop_seq, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %tobool48 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool48, label %if.end.57, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end.39
  %48 = load i32, i32* %mode, align 4
  %49 = load i32, i32* @word_mode, align 4
  %cmp50 = icmp ne i32 %48, %49
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %land.lhs.true.49
  %50 = load i32, i32* @word_mode, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %doloop_reg, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load = load i32, i32* %52, align 8
  %bf.value = and i32 %50, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %52, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %doloop_reg, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max, align 8
  %56 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %level53 = getelementptr inbounds %struct.loop, %struct.loop* %56, i32 0, i32 16
  %57 = load i32, i32* %level53, align 4
  %conv54 = sext i32 %57 to i64
  %call55 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv54)
  %58 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %call56 = call %struct.rtx_def* @gen_doloop_end(%struct.rtx_def* %53, %struct.rtx_def* %54, %struct.rtx_def* %55, %struct.rtx_def* %call55, %struct.rtx_def* %58)
  store %struct.rtx_def* %call56, %struct.rtx_def** %doloop_seq, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.52, %land.lhs.true.49, %if.end.39
  %59 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %tobool58 = icmp ne %struct.rtx_def* %59, null
  br i1 %tobool58, label %if.end.64, label %if.then.59

if.then.59:                                       ; preds = %if.end.57
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool60 = icmp ne %struct._IO_FILE* %60, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.59
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.57
  %62 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load65 = load i32, i32* %63, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 24
  br i1 %cmp67, label %if.then.69, label %if.else.83

if.then.69:                                       ; preds = %if.end.64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i32 0, i32 0
  %66 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %66, 1
  %idxprom = sext i32 %sub to i64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtvec72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**
  %68 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec72, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %68, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %69 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx73, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %doloop_pat, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %doloop_pat, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load74 = load i32, i32* %71, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 33
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.then.69
  %72 = load %struct.rtx_def*, %struct.rtx_def** %doloop_pat, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %doloop_pat, align 8
  br label %if.end.82

if.else.81:                                       ; preds = %if.then.69
  store %struct.rtx_def* null, %struct.rtx_def** %doloop_pat, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.78
  br label %if.end.84

if.else.83:                                       ; preds = %if.end.64
  %74 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %doloop_pat, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.end.82
  %75 = load %struct.rtx_def*, %struct.rtx_def** %doloop_pat, align 8
  %tobool85 = icmp ne %struct.rtx_def* %75, null
  br i1 %tobool85, label %lor.lhs.false, label %if.then.88

lor.lhs.false:                                    ; preds = %if.end.84
  %76 = load %struct.rtx_def*, %struct.rtx_def** %doloop_pat, align 8
  %call86 = call %struct.rtx_def* @doloop_condition_get(%struct.rtx_def* %76)
  store %struct.rtx_def* %call86, %struct.rtx_def** %condition, align 8
  %tobool87 = icmp ne %struct.rtx_def* %call86, null
  br i1 %tobool87, label %if.end.93, label %if.then.88

if.then.88:                                       ; preds = %lor.lhs.false, %if.end.84
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool89 = icmp ne %struct._IO_FILE* %77, null
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.88
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.88
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %lor.lhs.false
  %79 = load i64, i64* %n_iterations, align 8
  %cmp94 = icmp ne i64 %79, 0
  br i1 %cmp94, label %if.then.96, label %if.else.98

if.then.96:                                       ; preds = %if.end.93
  %80 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %call97 = call i32 @doloop_modify(%struct.loop* %80, %struct.rtx_def* %81, %struct.rtx_def* %82, %struct.rtx_def* %83, %struct.rtx_def* %84, %struct.rtx_def* %85)
  store i32 %call97, i32* %retval
  br label %return

if.else.98:                                       ; preds = %if.end.93
  %86 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %90 = load i32, i32* %mode, align 4
  %91 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %call99 = call i32 @doloop_modify_runtime(%struct.loop* %86, %struct.rtx_def* %87, %struct.rtx_def* %88, %struct.rtx_def* %89, i32 %90, %struct.rtx_def* %91)
  store i32 %call99, i32* %retval
  br label %return

return:                                           ; preds = %if.else.98, %if.then.96, %if.end.92, %if.end.63, %if.end.38, %if.end.24, %if.end.12, %if.then.4
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @doloop_valid_p(%struct.loop* %loop, %struct.rtx_def* %jump_insn) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %jump_insn.addr = alloca %struct.rtx_def*, align 8
  %loop_info = alloca %struct.loop_info*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %jump_insn, %struct.rtx_def** %jump_insn.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  store %struct.loop_info* %2, %struct.loop_info** %loop_info, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn.addr, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn.addr, align 8
  %call1 = call i32 @onlyjump_p(%struct.rtx_def* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %7 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 15
  %8 = load i64, i64* %n_iterations, align 8
  %9 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number = getelementptr inbounds %struct.loop_info, %struct.loop_info* %9, i32 0, i32 16
  %10 = load i32, i32* %unroll_number, align 4
  %conv = zext i32 %10 to i64
  %cmp = icmp eq i64 %8, %conv
  br i1 %cmp, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %13 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %has_multiple_exit_targets = getelementptr inbounds %struct.loop_info, %struct.loop_info* %13, i32 0, i32 5
  %14 = load i32, i32* %has_multiple_exit_targets, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.13
  %15 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 32
  %16 = load i32, i32* %exit_count, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.end.13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %lor.lhs.false.15
  %19 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %has_indirect_jump = getelementptr inbounds %struct.loop_info, %struct.loop_info* %19, i32 0, i32 6
  %20 = load i32, i32* %has_indirect_jump, align 4
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.22
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool25 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.24
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.24
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %23 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %has_call = getelementptr inbounds %struct.loop_info, %struct.loop_info* %23, i32 0, i32 0
  %24 = load i32, i32* %has_call, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool32 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.31
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.29
  %27 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %has_tablejump = getelementptr inbounds %struct.loop_info, %struct.loop_info* %27, i32 0, i32 4
  %28 = load i32, i32* %has_tablejump, align 4
  %tobool37 = icmp ne i32 %28, 0
  br i1 %tobool37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.end.36
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool39 = icmp ne %struct._IO_FILE* %29, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.38
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.38
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.36
  %31 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment = getelementptr inbounds %struct.loop_info, %struct.loop_info* %31, i32 0, i32 13
  %32 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %tobool44 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %33, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.45
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.43
  %35 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment51 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %35, i32 0, i32 13
  %36 = load %struct.rtx_def*, %struct.rtx_def** %increment51, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load = load i32, i32* %37, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp52 = icmp ne i32 %bf.clear, 54
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.end.50
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool55 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.54
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.54
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.50
  %40 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code = getelementptr inbounds %struct.loop_info, %struct.loop_info* %40, i32 0, i32 14
  %41 = load i32, i32* %comparison_code, align 4
  %cmp60 = icmp eq i32 %41, 102
  br i1 %cmp60, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.end.59
  %42 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment62 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %42, i32 0, i32 13
  %43 = load %struct.rtx_def*, %struct.rtx_def** %increment62, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %44 = load i64, i64* %rtwint, align 8
  %cmp63 = icmp ne i64 %44, -1
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.77

land.lhs.true.65:                                 ; preds = %land.lhs.true
  %45 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment66 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %45, i32 0, i32 13
  %46 = load %struct.rtx_def*, %struct.rtx_def** %increment66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtwint69 = bitcast %union.rtunion_def* %arrayidx68 to i64*
  %47 = load i64, i64* %rtwint69, align 8
  %cmp70 = icmp ne i64 %47, 1
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %land.lhs.true.65
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool73 = icmp ne %struct._IO_FILE* %48, null
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.then.72
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.then.72
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.65, %land.lhs.true, %if.end.59
  %50 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations78 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %50, i32 0, i32 15
  %51 = load i64, i64* %n_iterations78, align 8
  %tobool79 = icmp ne i64 %51, 0
  br i1 %tobool79, label %if.end.129, label %land.lhs.true.80

land.lhs.true.80:                                 ; preds = %if.end.77
  %52 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code81 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %52, i32 0, i32 14
  %53 = load i32, i32* %comparison_code81, align 4
  %cmp82 = icmp eq i32 %53, 110
  br i1 %cmp82, label %land.lhs.true.84, label %lor.lhs.false.91

land.lhs.true.84:                                 ; preds = %land.lhs.true.80
  %54 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment85 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %54, i32 0, i32 13
  %55 = load %struct.rtx_def*, %struct.rtx_def** %increment85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtwint88 = bitcast %union.rtunion_def* %arrayidx87 to i64*
  %56 = load i64, i64* %rtwint88, align 8
  %cmp89 = icmp sgt i64 %56, 0
  br i1 %cmp89, label %if.then.124, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.84, %land.lhs.true.80
  %57 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code92 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %57, i32 0, i32 14
  %58 = load i32, i32* %comparison_code92, align 4
  %cmp93 = icmp eq i32 %58, 108
  br i1 %cmp93, label %land.lhs.true.95, label %lor.lhs.false.102

land.lhs.true.95:                                 ; preds = %lor.lhs.false.91
  %59 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment96 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %59, i32 0, i32 13
  %60 = load %struct.rtx_def*, %struct.rtx_def** %increment96, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtwint99 = bitcast %union.rtunion_def* %arrayidx98 to i64*
  %61 = load i64, i64* %rtwint99, align 8
  %cmp100 = icmp slt i64 %61, 0
  br i1 %cmp100, label %if.then.124, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.95, %lor.lhs.false.91
  %62 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code103 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %62, i32 0, i32 14
  %63 = load i32, i32* %comparison_code103, align 4
  %cmp104 = icmp eq i32 %63, 111
  br i1 %cmp104, label %land.lhs.true.106, label %lor.lhs.false.113

land.lhs.true.106:                                ; preds = %lor.lhs.false.102
  %64 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment107 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %64, i32 0, i32 13
  %65 = load %struct.rtx_def*, %struct.rtx_def** %increment107, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtwint110 = bitcast %union.rtunion_def* %arrayidx109 to i64*
  %66 = load i64, i64* %rtwint110, align 8
  %cmp111 = icmp sgt i64 %66, 1
  br i1 %cmp111, label %if.then.124, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.106, %lor.lhs.false.102
  %67 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code114 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %67, i32 0, i32 14
  %68 = load i32, i32* %comparison_code114, align 4
  %cmp115 = icmp eq i32 %68, 109
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.129

land.lhs.true.117:                                ; preds = %lor.lhs.false.113
  %69 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment118 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %69, i32 0, i32 13
  %70 = load %struct.rtx_def*, %struct.rtx_def** %increment118, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtwint121 = bitcast %union.rtunion_def* %arrayidx120 to i64*
  %71 = load i64, i64* %rtwint121, align 8
  %cmp122 = icmp slt i64 %71, -1
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %land.lhs.true.117, %land.lhs.true.106, %land.lhs.true.95, %land.lhs.true.84
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool125 = icmp ne %struct._IO_FILE* %72, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.then.124
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.then.124
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.lhs.true.117, %lor.lhs.false.113, %if.end.77
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.129, %if.end.76, %if.end.58, %if.end.49, %if.end.42, %if.end.35, %if.end.28, %if.end.21, %if.end.12, %if.end
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare i32 @precondition_loop_p(%struct.loop*, %struct.rtx_def**, %struct.rtx_def**, %struct.rtx_def**, i32*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i64 @doloop_iterations_max(%struct.loop_info* %loop_info, i32 %mode, i32 %nonneg) #0 {
entry:
  %retval = alloca i64, align 8
  %loop_info.addr = alloca %struct.loop_info*, align 8
  %mode.addr = alloca i32, align 4
  %nonneg.addr = alloca i32, align 4
  %n_iterations_max = alloca i64, align 8
  %code = alloca i32, align 4
  %min_value = alloca %struct.rtx_def*, align 8
  %max_value = alloca %struct.rtx_def*, align 8
  %abs_inc = alloca i64, align 8
  %neg_inc = alloca i32, align 4
  %umax = alloca i64, align 8
  %umin = alloca i64, align 8
  %smax = alloca i64, align 8
  %smin = alloca i64, align 8
  store %struct.loop_info* %loop_info, %struct.loop_info** %loop_info.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %nonneg, i32* %nonneg.addr, align 4
  store i32 0, i32* %neg_inc, align 4
  %0 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %increment = getelementptr inbounds %struct.loop_info, %struct.loop_info* %0, i32 0, i32 13
  %1 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %2 = load i64, i64* %rtwint, align 8
  store i64 %2, i64* %abs_inc, align 8
  %3 = load i64, i64* %abs_inc, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %abs_inc, align 8
  %sub = sub nsw i64 0, %4
  store i64 %sub, i64* %abs_inc, align 8
  store i32 1, i32* %neg_inc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %neg_inc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %comparison_code = getelementptr inbounds %struct.loop_info, %struct.loop_info* %6, i32 0, i32 14
  %7 = load i32, i32* %comparison_code, align 4
  %call = call i32 @swap_condition(i32 %7)
  store i32 %call, i32* %code, align 4
  %8 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %final_equiv_value = getelementptr inbounds %struct.loop_info, %struct.loop_info* %8, i32 0, i32 11
  %9 = load %struct.rtx_def*, %struct.rtx_def** %final_equiv_value, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %min_value, align 8
  %10 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %initial_equiv_value = getelementptr inbounds %struct.loop_info, %struct.loop_info* %10, i32 0, i32 10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %initial_equiv_value, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %max_value, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %12 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %comparison_code2 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %12, i32 0, i32 14
  %13 = load i32, i32* %comparison_code2, align 4
  store i32 %13, i32* %code, align 4
  %14 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %initial_equiv_value3 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %14, i32 0, i32 10
  %15 = load %struct.rtx_def*, %struct.rtx_def** %initial_equiv_value3, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %min_value, align 8
  %16 = load %struct.loop_info*, %struct.loop_info** %loop_info.addr, align 8
  %final_equiv_value4 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %16, i32 0, i32 11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %final_equiv_value4, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %max_value, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.1
  %18 = load i32, i32* %code, align 4
  switch i32 %18, label %sw.default [
    i32 111, label %sw.bb
    i32 110, label %sw.bb
    i32 107, label %sw.bb.27
    i32 106, label %sw.bb.27
    i32 102, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.5, %if.end.5
  %19 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp eq i32 %bf.clear, 54
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %sw.bb
  %21 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtwint10 = bitcast %union.rtunion_def* %arrayidx9 to i64*
  %22 = load i64, i64* %rtwint10, align 8
  store i64 %22, i64* %umin, align 8
  br label %if.end.12

if.else.11:                                       ; preds = %sw.bb
  store i64 0, i64* %umin, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.7
  %23 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load13 = load i32, i32* %24, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 54
  br i1 %cmp15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.end.12
  %25 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtwint19 = bitcast %union.rtunion_def* %arrayidx18 to i64*
  %26 = load i64, i64* %rtwint19, align 8
  store i64 %26, i64* %umax, align 8
  br label %if.end.25

if.else.20:                                       ; preds = %if.end.12
  %27 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %28 = load i16, i16* %arrayidx21, align 2
  %conv = zext i16 %28 to i32
  %sub22 = sub nsw i32 %conv, 1
  %shl = shl i32 2, %sub22
  %sub23 = sub i32 %shl, 1
  %conv24 = zext i32 %sub23 to i64
  store i64 %conv24, i64* %umax, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.20, %if.then.16
  %29 = load i64, i64* %umax, align 8
  %30 = load i64, i64* %umin, align 8
  %sub26 = sub i64 %29, %30
  store i64 %sub26, i64* %n_iterations_max, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.5, %if.end.5
  %31 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load28 = load i32, i32* %32, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 54
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %sw.bb.27
  %33 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtwint35 = bitcast %union.rtunion_def* %arrayidx34 to i64*
  %34 = load i64, i64* %rtwint35, align 8
  store i64 %34, i64* %smin, align 8
  br label %if.end.44

if.else.36:                                       ; preds = %sw.bb.27
  %35 = load i32, i32* %mode.addr, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom37
  %36 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %36 to i32
  %sub40 = sub nsw i32 %conv39, 1
  %shl41 = shl i32 1, %sub40
  %sub42 = sub i32 0, %shl41
  %conv43 = zext i32 %sub42 to i64
  store i64 %conv43, i64* %smin, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.36, %if.then.32
  %37 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load45 = load i32, i32* %38, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 54
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.end.44
  %39 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtwint52 = bitcast %union.rtunion_def* %arrayidx51 to i64*
  %40 = load i64, i64* %rtwint52, align 8
  store i64 %40, i64* %smax, align 8
  br label %if.end.61

if.else.53:                                       ; preds = %if.end.44
  %41 = load i32, i32* %mode.addr, align 4
  %idxprom54 = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom54
  %42 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %42 to i32
  %sub57 = sub nsw i32 %conv56, 1
  %shl58 = shl i32 1, %sub57
  %sub59 = sub i32 %shl58, 1
  %conv60 = zext i32 %sub59 to i64
  store i64 %conv60, i64* %smax, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.53, %if.then.49
  %43 = load i64, i64* %smax, align 8
  %44 = load i64, i64* %smin, align 8
  %sub62 = sub nsw i64 %43, %44
  store i64 %sub62, i64* %n_iterations_max, align 8
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.5
  %45 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load64 = load i32, i32* %46, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 54
  br i1 %cmp66, label %land.lhs.true, label %if.else.80

land.lhs.true:                                    ; preds = %sw.bb.63
  %47 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load68 = load i32, i32* %48, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 54
  br i1 %cmp70, label %if.then.72, label %if.else.80

if.then.72:                                       ; preds = %land.lhs.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %max_value, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtwint75 = bitcast %union.rtunion_def* %arrayidx74 to i64*
  %50 = load i64, i64* %rtwint75, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %min_value, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtwint78 = bitcast %union.rtunion_def* %arrayidx77 to i64*
  %52 = load i64, i64* %rtwint78, align 8
  %sub79 = sub nsw i64 %50, %52
  store i64 %sub79, i64* %n_iterations_max, align 8
  br label %if.end.88

if.else.80:                                       ; preds = %land.lhs.true, %sw.bb.63
  %53 = load i32, i32* %mode.addr, align 4
  %idxprom81 = sext i32 %53 to i64
  %arrayidx82 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom81
  %54 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %54 to i32
  %sub84 = sub nsw i32 %conv83, 1
  %shl85 = shl i32 2, %sub84
  %sub86 = sub i32 %shl85, 1
  %conv87 = zext i32 %sub86 to i64
  store i64 %conv87, i64* %n_iterations_max, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.80, %if.then.72
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  store i64 0, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.88, %if.end.61, %if.end.25
  %55 = load i64, i64* %abs_inc, align 8
  %56 = load i64, i64* %n_iterations_max, align 8
  %div = udiv i64 %56, %55
  store i64 %div, i64* %n_iterations_max, align 8
  %57 = load i32, i32* %nonneg.addr, align 4
  %tobool89 = icmp ne i32 %57, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.107

land.lhs.true.90:                                 ; preds = %sw.epilog
  %58 = load i64, i64* %n_iterations_max, align 8
  %59 = load i32, i32* %mode.addr, align 4
  %idxprom91 = sext i32 %59 to i64
  %arrayidx92 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom91
  %60 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %60 to i32
  %sub94 = sub nsw i32 %conv93, 1
  %shl95 = shl i32 1, %sub94
  %conv96 = zext i32 %shl95 to i64
  %cmp97 = icmp ugt i64 %58, %conv96
  br i1 %cmp97, label %if.then.99, label %if.end.107

if.then.99:                                       ; preds = %land.lhs.true.90
  %61 = load i32, i32* %mode.addr, align 4
  %idxprom100 = sext i32 %61 to i64
  %arrayidx101 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom100
  %62 = load i16, i16* %arrayidx101, align 2
  %conv102 = zext i16 %62 to i32
  %sub103 = sub nsw i32 %conv102, 1
  %shl104 = shl i32 1, %sub103
  %sub105 = sub i32 %shl104, 1
  %conv106 = zext i32 %sub105 to i64
  store i64 %conv106, i64* %n_iterations_max, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.99, %land.lhs.true.90, %sw.epilog
  %63 = load i64, i64* %n_iterations_max, align 8
  store i64 %63, i64* %retval
  br label %return

return:                                           ; preds = %if.end.107, %sw.default
  %64 = load i64, i64* %retval
  ret i64 %64
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @gen_label_rtx() #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @gen_doloop_end(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @doloop_condition_get(%struct.rtx_def* %pattern) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %cmp = alloca %struct.rtx_def*, align 8
  %inc = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %condition = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 39
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %cmp, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtvec5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtvec_def**
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5, align 8
  %elem6 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem6, i32 0, i64 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %inc, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %inc, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp ne i32 %bf.clear9, 47
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %inc, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load13 = load i32, i32* %12, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 61
  br i1 %cmp15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %inc, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %reg, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp ne i32 %bf.clear22, 47
  br i1 %cmp23, label %if.then.54, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.17
  %17 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp28 = icmp ne %struct.rtx_def* %18, %19
  br i1 %cmp28, label %if.then.54, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.24
  %20 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load33 = load i32, i32* %22, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp ne i32 %bf.clear34, 72
  br i1 %cmp35, label %if.then.54, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.29
  %23 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load43 = load i32, i32* %26, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp ne i32 %bf.clear44, 67
  br i1 %cmp45, label %if.then.54, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.36
  %27 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 2
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp53 = icmp ne %struct.rtx_def* %29, %30
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.36, %lor.lhs.false.29, %lor.lhs.false.24, %if.end.17
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.46
  %31 = load %struct.rtx_def*, %struct.rtx_def** %cmp, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %condition, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load62 = load i32, i32* %35, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp ne i32 %bf.clear63, 104
  br i1 %cmp64, label %land.lhs.true, label %lor.lhs.false.68

land.lhs.true:                                    ; preds = %if.end.55
  %36 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load65 = load i32, i32* %37, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp ne i32 %bf.clear66, 102
  br i1 %cmp67, label %if.then.75, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true, %if.end.55
  %38 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load72 = load i32, i32* %40, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp ne i32 %bf.clear73, 54
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.68, %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.76:                                        ; preds = %lor.lhs.false.68
  %41 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp80 = icmp eq %struct.rtx_def* %42, %43
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.76
  %44 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %retval
  br label %return

if.end.82:                                        ; preds = %if.end.76
  %45 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load86 = load i32, i32* %47, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 75
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.98

land.lhs.true.89:                                 ; preds = %if.end.82
  %48 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp96 = icmp eq %struct.rtx_def* %50, %51
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.89
  %52 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %retval
  br label %return

if.end.98:                                        ; preds = %land.lhs.true.89, %if.end.82
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.then.97, %if.then.81, %if.then.75, %if.then.54, %if.then.16, %if.then
  %53 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %53
}

; Function Attrs: nounwind uwtable
define internal i32 @doloop_modify(%struct.loop* %loop, %struct.rtx_def* %iterations, %struct.rtx_def* %iterations_max, %struct.rtx_def* %doloop_seq, %struct.rtx_def* %start_label, %struct.rtx_def* %condition) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %iterations.addr = alloca %struct.rtx_def*, align 8
  %iterations_max.addr = alloca %struct.rtx_def*, align 8
  %doloop_seq.addr = alloca %struct.rtx_def*, align 8
  %start_label.addr = alloca %struct.rtx_def*, align 8
  %condition.addr = alloca %struct.rtx_def*, align 8
  %counter_reg = alloca %struct.rtx_def*, align 8
  %count = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %jump_insn = alloca %struct.rtx_def*, align 8
  %nonneg = alloca i32, align 4
  %decrement_count = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %iterations, %struct.rtx_def** %iterations.addr, align 8
  store %struct.rtx_def* %iterations_max, %struct.rtx_def** %iterations_max.addr, align 8
  store %struct.rtx_def* %doloop_seq, %struct.rtx_def** %doloop_seq.addr, align 8
  store %struct.rtx_def* %start_label, %struct.rtx_def** %start_label.addr, align 8
  store %struct.rtx_def* %condition, %struct.rtx_def** %condition.addr, align 8
  store i32 0, i32* %nonneg, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 27
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %jump_insn, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  %4 = load %struct.rtx_def*, %struct.rtx_def** %iterations.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %iterations.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %8 = load i64, i64* %rtwint, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i64 %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %12 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %top = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 28
  %13 = load %struct.rtx_def*, %struct.rtx_def** %top, align 8
  %tobool7 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %14 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %top8 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 28
  %15 = load %struct.rtx_def*, %struct.rtx_def** %top8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %16 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 26
  %17 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %15, %cond.true ], [ %17, %cond.false ]
  %call9 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %11, %struct.rtx_def* %cond)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %19 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %rtint, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %call12 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %20)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %counter_reg, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %counter_reg, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load15 = load i32, i32* %24, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 75
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %cond.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %counter_reg, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %counter_reg, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %cond.end
  call void @start_sequence()
  %27 = load %struct.rtx_def*, %struct.rtx_def** %iterations.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %count, align 8
  store i32 0, i32* %decrement_count, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load23 = load i32, i32* %29, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  switch i32 %bf.clear24, label %sw.default [
    i32 102, label %sw.bb
    i32 104, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %if.end.22
  %30 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp28 = icmp eq %struct.rtx_def* %31, %32
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %sw.bb
  store i32 1, i32* %decrement_count, align 4
  br label %if.end.37

if.else.30:                                       ; preds = %sw.bb
  %33 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp34 = icmp ne %struct.rtx_def* %34, %35
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.30
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 458, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.doloop_modify, i32 0, i32 0)) #3
  unreachable

if.end.36:                                        ; preds = %if.else.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.29
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.22
  %36 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 1
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp42 = icmp ne %struct.rtx_def* %37, %38
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.38
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 464, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.doloop_modify, i32 0, i32 0)) #3
  unreachable

if.end.44:                                        ; preds = %sw.bb.38
  store i32 1, i32* %decrement_count, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtwint47 = bitcast %union.rtunion_def* %arrayidx46 to i64*
  %40 = load i64, i64* %rtwint47, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %counter_reg, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load48 = load i32, i32* %42, align 8
  %bf.lshr = lshr i32 %bf.load48, 16
  %bf.clear49 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear49 to i64
  %arrayidx50 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %43 = load i16, i16* %arrayidx50, align 2
  %conv = zext i16 %43 to i32
  %sub = sub nsw i32 %conv, 1
  %shl = shl i32 1, %sub
  %conv51 = zext i32 %shl to i64
  %cmp52 = icmp ule i64 %40, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.44
  store i32 1, i32* %nonneg, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.44
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.22
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 478, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.doloop_modify, i32 0, i32 0)) #3
  unreachable

sw.epilog:                                        ; preds = %if.end.55, %if.end.37
  %44 = load i32, i32* %decrement_count, align 4
  %tobool56 = icmp ne i32 %44, 0
  br i1 %tobool56, label %if.then.57, label %if.end.75

if.then.57:                                       ; preds = %sw.epilog
  %45 = load %struct.rtx_def*, %struct.rtx_def** %count, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load58 = load i32, i32* %46, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 54
  br i1 %cmp60, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %if.then.57
  %47 = load %struct.rtx_def*, %struct.rtx_def** %count, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtwint65 = bitcast %union.rtunion_def* %arrayidx64 to i64*
  %48 = load i64, i64* %rtwint65, align 8
  %sub66 = sub nsw i64 %48, 1
  %call67 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub66)
  store %struct.rtx_def* %call67, %struct.rtx_def** %count, align 8
  br label %if.end.74

if.else.68:                                       ; preds = %if.then.57
  %49 = load %struct.rtx_def*, %struct.rtx_def** %counter_reg, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load69 = load i32, i32* %50, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 16
  %bf.clear71 = and i32 %bf.lshr70, 255
  %51 = load %struct.rtx_def*, %struct.rtx_def** %count, align 8
  %call72 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 1)
  %call73 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear71, i32 76, %struct.rtx_def* %51, %struct.rtx_def* %call72, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call73, %struct.rtx_def** %count, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.68, %if.then.62
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %sw.epilog
  %52 = load %struct.rtx_def*, %struct.rtx_def** %counter_reg, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %count, align 8
  call void @convert_move(%struct.rtx_def* %52, %struct.rtx_def* %53, i32 1)
  %call76 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call76, %struct.rtx_def** %sequence, align 8
  call void @end_sequence()
  %54 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %55 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start77 = getelementptr inbounds %struct.loop, %struct.loop* %55, i32 0, i32 26
  %56 = load %struct.rtx_def*, %struct.rtx_def** %start77, align 8
  %call78 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %54, %struct.rtx_def* %56)
  %57 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq.addr, align 8
  %58 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end79 = getelementptr inbounds %struct.loop, %struct.loop* %58, i32 0, i32 27
  %59 = load %struct.rtx_def*, %struct.rtx_def** %end79, align 8
  %call80 = call %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def* %57, %struct.rtx_def* %59)
  %60 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end81 = getelementptr inbounds %struct.loop, %struct.loop* %60, i32 0, i32 27
  %61 = load %struct.rtx_def*, %struct.rtx_def** %end81, align 8
  %call82 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %61)
  store %struct.rtx_def* %call82, %struct.rtx_def** %jump_insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 7
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  store %struct.rtx_def* %62, %struct.rtx_def** %rtx85, align 8
  %64 = load i32, i32* %nonneg, align 4
  %tobool86 = icmp ne i32 %64, 0
  br i1 %tobool86, label %if.then.87, label %if.end.95

if.then.87:                                       ; preds = %if.end.75
  %65 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 6
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %call91 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 8, %struct.rtx_def* null, %struct.rtx_def* %66)
  %67 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 6
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  store %struct.rtx_def* %call91, %struct.rtx_def** %rtx94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.87, %if.end.75
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @doloop_modify_runtime(%struct.loop* %loop, %struct.rtx_def* %iterations_max, %struct.rtx_def* %doloop_seq, %struct.rtx_def* %start_label, i32 %mode, %struct.rtx_def* %condition) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %iterations_max.addr = alloca %struct.rtx_def*, align 8
  %doloop_seq.addr = alloca %struct.rtx_def*, align 8
  %start_label.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %condition.addr = alloca %struct.rtx_def*, align 8
  %loop_info = alloca %struct.loop_info*, align 8
  %abs_inc = alloca i64, align 8
  %neg_inc = alloca i32, align 4
  %diff = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %iterations = alloca %struct.rtx_def*, align 8
  %initial_value = alloca %struct.rtx_def*, align 8
  %final_value = alloca %struct.rtx_def*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %unsigned_p = alloca i32, align 4
  %comparison_code = alloca i32, align 4
  %iteration_var = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %v = alloca %struct.induction*, align 8
  %shift_count = alloca i32, align 4
  %extra = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %limit = alloca i64, align 8
  %count = alloca %struct.rtx_def*, align 8
  %label161 = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %iterations_max, %struct.rtx_def** %iterations_max.addr, align 8
  store %struct.rtx_def* %doloop_seq, %struct.rtx_def** %doloop_seq.addr, align 8
  store %struct.rtx_def* %start_label, %struct.rtx_def** %start_label.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %condition, %struct.rtx_def** %condition.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  store %struct.loop_info* %2, %struct.loop_info** %loop_info, align 8
  %3 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %3, i32 0, i32 13
  %4 = load %struct.rtx_def*, %struct.rtx_def** %increment1, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %increment, align 8
  %5 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value2 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %5, i32 0, i32 7
  %6 = load %struct.rtx_def*, %struct.rtx_def** %initial_value2, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %initial_value, align 8
  %7 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value3 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 9
  %8 = load %struct.rtx_def*, %struct.rtx_def** %final_value3, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %final_value, align 8
  store i32 0, i32* %neg_inc, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %10 = load i64, i64* %rtwint, align 8
  store i64 %10, i64* %abs_inc, align 8
  %11 = load i64, i64* %abs_inc, align 8
  %cmp = icmp slt i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %abs_inc, align 8
  %sub = sub nsw i64 0, %12
  store i64 %sub, i64* %abs_inc, align 8
  store i32 1, i32* %neg_inc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code4 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %13, i32 0, i32 14
  %14 = load i32, i32* %comparison_code4, align 4
  store i32 %14, i32* %comparison_code, align 4
  %15 = load i32, i32* %comparison_code, align 4
  %cmp5 = icmp eq i32 %15, 111
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %comparison_code, align 4
  %cmp6 = icmp eq i32 %16, 110
  br i1 %cmp6, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* %comparison_code, align 4
  %cmp8 = icmp eq i32 %17, 109
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %18 = load i32, i32* %comparison_code, align 4
  %cmp10 = icmp eq i32 %18, 108
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.9
  %19 = load i32, i32* %comparison_code, align 4
  %cmp11 = icmp eq i32 %19, 102
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false, %if.end
  %20 = phi i1 [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32
  store i32 %lor.ext, i32* %unsigned_p, align 4
  call void @start_sequence()
  %21 = load i32, i32* %mode.addr, align 4
  %22 = load i32, i32* %neg_inc, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %23, %cond.true ], [ %24, %cond.false ]
  %call = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %cond)
  %25 = load i32, i32* %neg_inc, align 4
  %tobool12 = icmp ne i32 %25, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi %struct.rtx_def* [ %26, %cond.true.13 ], [ %27, %cond.false.14 ]
  %call17 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %cond16)
  %28 = load i32, i32* %unsigned_p, align 4
  %call18 = call %struct.rtx_def* @expand_simple_binop(i32 %21, i32 76, %struct.rtx_def* %call, %struct.rtx_def* %call17, %struct.rtx_def* null, i32 %28, i32 3)
  store %struct.rtx_def* %call18, %struct.rtx_def** %diff, align 8
  %29 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %scan_start = getelementptr inbounds %struct.loop, %struct.loop* %29, i32 0, i32 29
  %30 = load %struct.rtx_def*, %struct.rtx_def** %scan_start, align 8
  %tobool19 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool19, label %if.then.20, label %if.end.105

if.then.20:                                       ; preds = %cond.end.15
  %31 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var21 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %31, i32 0, i32 12
  %32 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var21, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %iteration_var, align 8
  %33 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux22 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 22
  %34 = load i8*, i8** %aux22, align 8
  %35 = bitcast i8* %34 to %struct.loop_info*
  %ivs23 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %35, i32 0, i32 29
  store %struct.loop_ivs* %ivs23, %struct.loop_ivs** %ivs, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %37 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %37 to i64
  %38 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %38, i32 0, i32 0
  %39 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx26 = getelementptr inbounds %struct.iv, %struct.iv* %39, i64 %idxprom
  %type = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx26, i32 0, i32 0
  %40 = load i32, i32* %type, align 4
  %cmp27 = icmp eq i32 %40, 1
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.20
  %41 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %42 = load i32, i32* %rtuint31, align 4
  %idxprom32 = zext i32 %42 to i64
  %43 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs33 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %43, i32 0, i32 0
  %44 = load %struct.iv*, %struct.iv** %regs33, align 8
  %arrayidx34 = getelementptr inbounds %struct.iv, %struct.iv* %44, i64 %idxprom32
  %iv = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx34, i32 0, i32 1
  %class = bitcast %union.anon* %iv to %struct.iv_class**
  %45 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  store %struct.iv_class* %45, %struct.iv_class** %bl, align 8
  br label %if.end.61

if.else:                                          ; preds = %if.then.20
  %46 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %47 = load i32, i32* %rtuint37, align 4
  %idxprom38 = zext i32 %47 to i64
  %48 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs39 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %48, i32 0, i32 0
  %49 = load %struct.iv*, %struct.iv** %regs39, align 8
  %arrayidx40 = getelementptr inbounds %struct.iv, %struct.iv* %49, i64 %idxprom38
  %type41 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx40, i32 0, i32 0
  %50 = load i32, i32* %type41, align 4
  %cmp42 = icmp eq i32 %50, 3
  br i1 %cmp42, label %if.then.43, label %if.else.59

if.then.43:                                       ; preds = %if.else
  %51 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtuint46 = bitcast %union.rtunion_def* %arrayidx45 to i32*
  %52 = load i32, i32* %rtuint46, align 4
  %idxprom47 = zext i32 %52 to i64
  %53 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs48 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %53, i32 0, i32 0
  %54 = load %struct.iv*, %struct.iv** %regs48, align 8
  %arrayidx49 = getelementptr inbounds %struct.iv, %struct.iv* %54, i64 %idxprom47
  %iv50 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx49, i32 0, i32 1
  %info = bitcast %union.anon* %iv50 to %struct.induction**
  %55 = load %struct.induction*, %struct.induction** %info, align 8
  store %struct.induction* %55, %struct.induction** %v, align 8
  %56 = load %struct.induction*, %struct.induction** %v, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %56, i32 0, i32 2
  %57 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtuint53 = bitcast %union.rtunion_def* %arrayidx52 to i32*
  %58 = load i32, i32* %rtuint53, align 4
  %idxprom54 = zext i32 %58 to i64
  %59 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs55 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %59, i32 0, i32 0
  %60 = load %struct.iv*, %struct.iv** %regs55, align 8
  %arrayidx56 = getelementptr inbounds %struct.iv, %struct.iv* %60, i64 %idxprom54
  %iv57 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx56, i32 0, i32 1
  %class58 = bitcast %union.anon* %iv57 to %struct.iv_class**
  %61 = load %struct.iv_class*, %struct.iv_class** %class58, align 8
  store %struct.iv_class* %61, %struct.iv_class** %bl, align 8
  br label %if.end.60

if.else.59:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 652, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.doloop_modify_runtime, i32 0, i32 0)) #3
  unreachable

if.end.60:                                        ; preds = %if.then.43
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.28
  %62 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %62, i32 0, i32 2
  %63 = load %struct.induction*, %struct.induction** %biv, align 8
  %insn = getelementptr inbounds %struct.induction, %struct.induction* %63, i32 0, i32 0
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %65 = load i32, i32* %rtint, align 4
  %66 = load i32, i32* @max_uid_for_loop, align 4
  %cmp64 = icmp slt i32 %65, %66
  br i1 %cmp64, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %if.end.61
  %67 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv65 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %67, i32 0, i32 2
  %68 = load %struct.induction*, %struct.induction** %biv65, align 8
  %insn66 = getelementptr inbounds %struct.induction, %struct.induction* %68, i32 0, i32 0
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtint69 = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %70 = load i32, i32* %rtint69, align 4
  %71 = load i32, i32* @max_uid_for_loop, align 4
  %cmp70 = icmp slt i32 %70, %71
  br i1 %cmp70, label %cond.true.71, label %cond.false.79

cond.true.71:                                     ; preds = %land.lhs.true
  %72 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv72 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %72, i32 0, i32 2
  %73 = load %struct.induction*, %struct.induction** %biv72, align 8
  %insn73 = getelementptr inbounds %struct.induction, %struct.induction* %73, i32 0, i32 0
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtint76 = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %75 = load i32, i32* %rtint76, align 4
  %idxprom77 = sext i32 %75 to i64
  %76 = load i32*, i32** @uid_luid, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %76, i64 %idxprom77
  %77 = load i32, i32* %arrayidx78, align 4
  br label %cond.end.80

cond.false.79:                                    ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 655, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.doloop_modify_runtime, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.80

cond.end.80:                                      ; preds = %78, %cond.true.71
  %cond81 = phi i32 [ %77, %cond.true.71 ], [ -1, %78 ]
  %79 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %scan_start82 = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 29
  %80 = load %struct.rtx_def*, %struct.rtx_def** %scan_start82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %81 = load i32, i32* %rtint85, align 4
  %82 = load i32, i32* @max_uid_for_loop, align 4
  %cmp86 = icmp slt i32 %81, %82
  br i1 %cmp86, label %cond.true.87, label %cond.false.94

cond.true.87:                                     ; preds = %cond.end.80
  %83 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %scan_start88 = getelementptr inbounds %struct.loop, %struct.loop* %83, i32 0, i32 29
  %84 = load %struct.rtx_def*, %struct.rtx_def** %scan_start88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %85 = load i32, i32* %rtint91, align 4
  %idxprom92 = sext i32 %85 to i64
  %86 = load i32*, i32** @uid_luid, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %86, i64 %idxprom92
  %87 = load i32, i32* %arrayidx93, align 4
  br label %cond.end.95

cond.false.94:                                    ; preds = %cond.end.80
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 655, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.doloop_modify_runtime, i32 0, i32 0)) #3
  unreachable
                                                  ; No predecessors!
  br label %cond.end.95

cond.end.95:                                      ; preds = %88, %cond.true.87
  %cond96 = phi i32 [ %87, %cond.true.87 ], [ -1, %88 ]
  %cmp97 = icmp slt i32 %cond81, %cond96
  br i1 %cmp97, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %cond.end.95
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool99 = icmp ne %struct._IO_FILE* %89, null
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.98
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.98
  %91 = load i32, i32* %mode.addr, align 4
  %92 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %95 = load i32, i32* %unsigned_p, align 4
  %call103 = call %struct.rtx_def* @expand_simple_binop(i32 %91, i32 75, %struct.rtx_def* %92, %struct.rtx_def* %93, %struct.rtx_def* %94, i32 %95, i32 3)
  store %struct.rtx_def* %call103, %struct.rtx_def** %diff, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.102, %cond.end.95, %if.end.61
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %cond.end.15
  %96 = load i64, i64* %abs_inc, align 8
  %97 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number = getelementptr inbounds %struct.loop_info, %struct.loop_info* %97, i32 0, i32 16
  %98 = load i32, i32* %unroll_number, align 4
  %conv = zext i32 %98 to i64
  %mul = mul nsw i64 %96, %conv
  %cmp106 = icmp ne i64 %mul, 1
  br i1 %cmp106, label %if.then.108, label %if.else.157

if.then.108:                                      ; preds = %if.end.105
  %99 = load i64, i64* %abs_inc, align 8
  %100 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number109 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %100, i32 0, i32 16
  %101 = load i32, i32* %unroll_number109, align 4
  %conv110 = zext i32 %101 to i64
  %mul111 = mul nsw i64 %99, %conv110
  %call112 = call i32 @exact_log2_wide(i64 %mul111)
  store i32 %call112, i32* %shift_count, align 4
  %102 = load i32, i32* %shift_count, align 4
  %cmp113 = icmp slt i32 %102, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.then.108
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 675, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.doloop_modify_runtime, i32 0, i32 0)) #3
  unreachable

if.end.116:                                       ; preds = %if.then.108
  %103 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load = load i32, i32* %104, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %105 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %106 = load i32, i32* %shift_count, align 4
  %conv117 = sext i32 %106 to i64
  %call118 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv117)
  %call119 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear, i32 90, %struct.rtx_def* %105, %struct.rtx_def* %call118, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call119, %struct.rtx_def** %iterations, align 8
  %107 = load i64, i64* %abs_inc, align 8
  %cmp120 = icmp ne i64 %107, 1
  br i1 %cmp120, label %if.then.122, label %if.end.156

if.then.122:                                      ; preds = %if.end.116
  %108 = load i64, i64* %abs_inc, align 8
  %109 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number123 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %109, i32 0, i32 16
  %110 = load i32, i32* %unroll_number123, align 4
  %conv124 = zext i32 %110 to i64
  %mul125 = mul nsw i64 %108, %conv124
  %sub126 = sub nsw i64 %mul125, 1
  %call127 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub126)
  store %struct.rtx_def* %call127, %struct.rtx_def** %count, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load128 = load i32, i32* %112, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %113 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %count, align 8
  %call131 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear130, i32 83, %struct.rtx_def* %113, %struct.rtx_def* %114, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call131, %struct.rtx_def** %extra, align 8
  %call132 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call132, %struct.rtx_def** %label, align 8
  %115 = load i64, i64* %abs_inc, align 8
  %116 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number133 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %116, i32 0, i32 16
  %117 = load i32, i32* %unroll_number133, align 4
  %sub134 = sub i32 %117, 1
  %conv135 = zext i32 %sub134 to i64
  %mul136 = mul nsw i64 %115, %conv135
  store i64 %mul136, i64* %limit, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %extra, align 8
  %119 = load i64, i64* %limit, align 8
  %call137 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %119)
  %120 = load i64, i64* %limit, align 8
  %cmp138 = icmp eq i64 %120, 0
  %cond140 = select i1 %cmp138, i32 103, i32 110
  %121 = load %struct.rtx_def*, %struct.rtx_def** %extra, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load141 = load i32, i32* %122, align 8
  %bf.lshr142 = lshr i32 %bf.load141, 16
  %bf.clear143 = and i32 %bf.lshr142, 255
  %123 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %118, %struct.rtx_def* %call137, i32 %cond140, %struct.rtx_def* null, i32 %bf.clear143, i32 0, %struct.rtx_def* %123)
  %124 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call144 = call %struct.rtx_def* @get_last_insn()
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call144, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  store %struct.rtx_def* %124, %struct.rtx_def** %rtx, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 3
  %rtint149 = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %126 = load i32, i32* %rtint149, align 4
  %inc = add nsw i32 %126, 1
  store i32 %inc, i32* %rtint149, align 4
  %127 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load150 = load i32, i32* %128, align 8
  %bf.lshr151 = lshr i32 %bf.load150, 16
  %bf.clear152 = and i32 %bf.lshr151, 255
  %129 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %call153 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 1)
  %130 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %call154 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear152, i32 75, %struct.rtx_def* %129, %struct.rtx_def* %call153, %struct.rtx_def* %130, i32 1, i32 3)
  store %struct.rtx_def* %call154, %struct.rtx_def** %iterations, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call155 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %131)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.122, %if.end.116
  br label %if.end.158

if.else.157:                                      ; preds = %if.end.105
  %132 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  store %struct.rtx_def* %132, %struct.rtx_def** %iterations, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.157, %if.end.156
  %133 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop = getelementptr inbounds %struct.loop, %struct.loop* %133, i32 0, i32 23
  %134 = load %struct.rtx_def*, %struct.rtx_def** %vtop, align 8
  %tobool159 = icmp ne %struct.rtx_def* %134, null
  br i1 %tobool159, label %if.end.184, label %if.then.160

if.then.160:                                      ; preds = %if.end.158
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool162 = icmp ne %struct._IO_FILE* %135, null
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.160
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.160
  %137 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number166 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %137, i32 0, i32 16
  %138 = load i32, i32* %unroll_number166, align 4
  %cmp167 = icmp eq i32 %138, 1
  br i1 %cmp167, label %if.then.169, label %if.end.183

if.then.169:                                      ; preds = %if.end.165
  %call170 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call170, %struct.rtx_def** %label161, align 8
  %139 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %call171 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %139)
  %140 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_value = getelementptr inbounds %struct.loop_info, %struct.loop_info* %140, i32 0, i32 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %call172 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %141)
  %142 = load i32, i32* %comparison_code, align 4
  %143 = load i32, i32* %mode.addr, align 4
  %144 = load %struct.rtx_def*, %struct.rtx_def** %label161, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %call171, %struct.rtx_def* %call172, i32 %142, %struct.rtx_def* null, i32 %143, i32 0, %struct.rtx_def* %144)
  %145 = load %struct.rtx_def*, %struct.rtx_def** %label161, align 8
  %call173 = call %struct.rtx_def* @get_last_insn()
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call173, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 7
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  store %struct.rtx_def* %145, %struct.rtx_def** %rtx176, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %label161, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 3
  %rtint179 = bitcast %union.rtunion_def* %arrayidx178 to i32*
  %147 = load i32, i32* %rtint179, align 4
  %inc180 = add nsw i32 %147, 1
  store i32 %inc180, i32* %rtint179, align 4
  %148 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call181 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %148, %struct.rtx_def* %149)
  %150 = load %struct.rtx_def*, %struct.rtx_def** %label161, align 8
  %call182 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %150)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.169, %if.end.165
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.158
  %call185 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call185, %struct.rtx_def** %sequence, align 8
  call void @end_sequence()
  %151 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %152 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %152, i32 0, i32 26
  %153 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %call186 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %151, %struct.rtx_def* %153)
  %154 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %iterations, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %iterations_max.addr, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %doloop_seq.addr, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %condition.addr, align 8
  %call187 = call i32 @doloop_modify(%struct.loop* %154, %struct.rtx_def* %155, %struct.rtx_def* %156, %struct.rtx_def* %157, %struct.rtx_def* %158, %struct.rtx_def* %159)
  ret i32 %call187
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

declare i32 @swap_condition(i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare %struct.rtx_def* @emit_label_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_related_insns(%struct.rtx_def*) #1

declare void @start_sequence() #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @expand_simple_binop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare void @convert_move(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare i32 @exact_log2_wide(i64) #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
