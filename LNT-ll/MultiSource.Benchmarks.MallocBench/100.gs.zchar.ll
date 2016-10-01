; ModuleID = './MultiSource.Benchmarks.MallocBench/100.gs.zchar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_font_dir_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }
%struct.gs_point_s = type { float, float }
%struct.gs_type1_state_s = type opaque
%struct.z1_data = type { %struct.font_data_s*, i64*, [2 x i64] }

@esp = external global %struct.ref_s*, align 8
@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@gs_type1_state_sizeof = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"type1addpath\00", align 1
@zchar_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zashow }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zawidthshow }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcharpath }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zkshow }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcachedevice }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcharwidth }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zshow }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zstringwidth }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1addpath }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1imagepath }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zwidthshow }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"3ashow\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"6awidthshow\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"2charpath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"2kshow\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"3setcachedevice\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"2setcharwidth\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1show\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1stringwidth\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"1type1addpath\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"8type1imagepath\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"4widthshow\00", align 1
@estop = external global %struct.ref_s*, align 8
@gs_show_enum_sizeof = external global i32, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"setup_show\00", align 1
@estack = external global [0 x %struct.ref_s], align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"free_show\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zshow(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @setup_show(%struct.ref_s* %0, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %4 = load i8*, i8** %bytes, align 8
  %5 = bitcast i8* %4 to %struct.gs_show_enum_s*
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %bytes2 = bitcast %union.v* %value1 to i8**
  %8 = load i8*, i8** %bytes2, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 2
  %10 = load i16, i16* %size, align 2
  %conv = zext i16 %10 to i32
  %call3 = call i32 @gs_show_n_init(%struct.gs_show_enum_s* %5, %struct.gs_state_s* %6, i8* %8, i32 %conv)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @free_show()
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call8 = call i32 @show_continue(%struct.ref_s* %14)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @setup_show(%struct.ref_s* %op, i32 (%struct.ref_s*)* %endproc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %endproc.addr = alloca i32 (%struct.ref_s*)*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.ref_s*)* %endproc, i32 (%struct.ref_s*)** %endproc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 6
  %5 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp7 = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -5, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load i32, i32* @gs_show_enum_sizeof, align 4
  %call = call i8* @alloc(i32 1, i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %7 = bitcast i8* %call to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %7, %struct.gs_show_enum_s** %penum, align 8
  %cmp11 = icmp eq %struct.gs_show_enum_s* %7, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 -25, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 1, i16* %index, align 2
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  store i16 33, i16* %type_attrs15, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 1
  store %struct.ref_s* %incdec.ptr16, %struct.ref_s** @esp, align 8
  %12 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %endproc.addr, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %opproc = bitcast %union.v* %value17 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %12, i32 (%struct.ref_s*)** %opproc, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  store i16 37, i16* %type_attrs18, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr19, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %index21 = bitcast %union.v* %value20 to i16*
  store i16 0, i16* %index21, align 2
  %18 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  store i16 32, i16* %type_attrs22, align 2
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr23, %struct.ref_s** @esp, align 8
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %21 = bitcast %struct.gs_show_enum_s* %20 to i8*
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %bytes = bitcast %union.v* %value24 to i8**
  store i8* %21, i8** %bytes, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 52, i16* %type_attrs25, align 2
  %24 = load i32, i32* @gs_show_enum_sizeof, align 4
  %conv26 = trunc i32 %24 to i16
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 2
  store i16 %conv26, i16* %size27, align 2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.5, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @finish_show(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  ret i32 0
}

declare i32 @gs_show_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @show_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  %pslot = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.font_data_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %2, %struct.gs_show_enum_s** %penum, align 8
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %call = call i32 @gs_show_next(%struct.gs_show_enum_s* %3)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.3
    i32 1, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %opproc = bitcast %union.v* %value1 to i32 (%struct.ref_s*)**
  %6 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %opproc, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call2 = call i32 %6(%struct.ref_s* %7)
  store i32 %call2, i32* %code, align 4
  call void @free_show()
  %8 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %9 = load i32, i32* %code, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %arrayidx4, %struct.ref_s** %pslot, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp5 = icmp ugt %struct.ref_s* %add.ptr, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.3
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %call7 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* %14)
  %conv = zext i8 %call7 to i64
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 0
  %intval = bitcast %union.v* %value9 to i64*
  store i64 %conv, i64* %intval, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  %17 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %call11 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* %17)
  %conv12 = zext i8 %call11 to i64
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %intval14 = bitcast %union.v* %value13 to i64*
  store i64 %conv12, i64* %intval14, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 20, i16* %type_attrs15, align 2
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %opproc17 = bitcast %union.v* %value16 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %opproc17, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  store i16 37, i16* %type_attrs18, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr19, %struct.ref_s** @esp, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %pslot, align 8
  %26 = bitcast %struct.ref_s* %incdec.ptr19 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call21 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %28)
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call21, i32 0, i32 4
  %29 = load i8*, i8** %client_data, align 8
  %30 = bitcast i8* %29 to %struct.font_data_s*
  store %struct.font_data_s* %30, %struct.font_data_s** %pfont, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 2
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr22, %struct.ref_s** @osp, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp23 = icmp ugt %struct.ref_s* %add.ptr22, %32
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %sw.bb.20
  %33 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  store %struct.ref_s* %add.ptr26, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.20
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %35 = load %struct.font_data_s*, %struct.font_data_s** %pfont, align 8
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %35, i32 0, i32 0
  %36 = bitcast %struct.ref_s* %arrayidx28 to i8*
  %37 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %38 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %call29 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* %38)
  %conv30 = zext i8 %call29 to i64
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %intval32 = bitcast %union.v* %value31 to i64*
  store i64 %conv30, i64* %intval32, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  store i16 20, i16* %type_attrs33, align 2
  %41 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 1
  store %struct.ref_s* %incdec.ptr34, %struct.ref_s** @esp, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %opproc36 = bitcast %union.v* %value35 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %opproc36, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 1
  store i16 37, i16* %type_attrs37, align 2
  %44 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 2
  store i16 0, i16* %size38, align 2
  %45 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 1
  store %struct.ref_s* %incdec.ptr39, %struct.ref_s** @esp, align 8
  %46 = load %struct.font_data_s*, %struct.font_data_s** %pfont, align 8
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %46, i32 0, i32 1
  %47 = bitcast %struct.ref_s* %incdec.ptr39 to i8*
  %48 = bitcast %struct.ref_s* %BuildChar to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @free_show()
  %49 = load i32, i32* %code, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.27, %if.then.25, %if.end, %if.then, %cond.end
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @zashow(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %axy = alloca [2 x float], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i32 0
  %call = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call1 = call i32 @setup_show(%struct.ref_s* %1, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %4 = load i8*, i8** %bytes, align 8
  %5 = bitcast i8* %4 to %struct.gs_show_enum_s*
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i64 1
  %8 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %8 to double
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %bytes6 = bitcast %union.v* %value5 to i8**
  %10 = load i8*, i8** %bytes6, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 2
  %12 = load i16, i16* %size, align 2
  %conv7 = zext i16 %12 to i32
  %call8 = call i32 @gs_ashow_n_init(%struct.gs_show_enum_s* %5, %struct.gs_state_s* %6, double %conv, double %conv4, i8* %10, i32 %conv7)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  call void @free_show()
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -3
  store %struct.ref_s* %add.ptr13, %struct.ref_s** @osp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  store %struct.ref_s* %add.ptr14, %struct.ref_s** %op.addr, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call15 = call i32 @show_continue(%struct.ref_s* %16)
  store i32 %call15, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @num_params(...) #1

declare i32 @gs_ashow_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, double, double, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zwidthshow(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cxy = alloca [2 x float], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp3 = icmp ugt i64 %3, 255
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -2
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i32 0
  %call = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call9 = call i32 @setup_show(%struct.ref_s* %5, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call9, i32* %code, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %bytes = bitcast %union.v* %value14 to i8**
  %8 = load i8*, i8** %bytes, align 8
  %9 = bitcast i8* %8 to %struct.gs_show_enum_s*
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i64 0
  %11 = load float, float* %arrayidx15, align 4
  %conv16 = fpext float %11 to double
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i64 1
  %12 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %12 to double
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx19, i32 0, i32 0
  %intval21 = bitcast %union.v* %value20 to i64*
  %14 = load i64, i64* %intval21, align 8
  %conv22 = trunc i64 %14 to i8
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %bytes24 = bitcast %union.v* %value23 to i8**
  %16 = load i8*, i8** %bytes24, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 2
  %18 = load i16, i16* %size, align 2
  %conv25 = zext i16 %18 to i32
  %call26 = call i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* %9, %struct.gs_state_s* %10, double %conv16, double %conv18, i8 signext %conv22, i8* %16, i32 %conv25)
  store i32 %call26, i32* %code, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.13
  call void @free_show()
  %19 = load i32, i32* %code, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.13
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  store %struct.ref_s* %add.ptr31, %struct.ref_s** @osp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -4
  store %struct.ref_s* %add.ptr32, %struct.ref_s** %op.addr, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call33 = call i32 @show_continue(%struct.ref_s* %22)
  store i32 %call33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.12, %if.then.5, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_widthshow_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, double, double, i8 signext, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zawidthshow(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cxy = alloca [2 x float], align 4
  %axy = alloca [2 x float], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp3 = icmp ugt i64 %3, 255
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i32 0
  %call = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %arraydecay10 = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i32 0
  %call11 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr9, i32 2, float* %arraydecay10)
  store i32 %call11, i32* %code, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call15 = call i32 @setup_show(%struct.ref_s* %6, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call15, i32* %code, align 4
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %if.end.6
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.14
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %bytes = bitcast %union.v* %value20 to i8**
  %9 = load i8*, i8** %bytes, align 8
  %10 = bitcast i8* %9 to %struct.gs_show_enum_s*
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i64 0
  %12 = load float, float* %arrayidx21, align 4
  %conv22 = fpext float %12 to double
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %cxy, i32 0, i64 1
  %13 = load float, float* %arrayidx23, align 4
  %conv24 = fpext float %13 to double
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -3
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 0
  %intval27 = bitcast %union.v* %value26 to i64*
  %15 = load i64, i64* %intval27, align 8
  %conv28 = trunc i64 %15 to i8
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i64 0
  %16 = load float, float* %arrayidx29, align 4
  %conv30 = fpext float %16 to double
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %axy, i32 0, i64 1
  %17 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %17 to double
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %bytes34 = bitcast %union.v* %value33 to i8**
  %19 = load i8*, i8** %bytes34, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 2
  %21 = load i16, i16* %size, align 2
  %conv35 = zext i16 %21 to i32
  %call36 = call i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* %10, %struct.gs_state_s* %11, double %conv22, double %conv24, i8 signext %conv28, double %conv30, double %conv32, i8* %19, i32 %conv35)
  store i32 %call36, i32* %code, align 4
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.19
  call void @free_show()
  %22 = load i32, i32* %code, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.19
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -6
  store %struct.ref_s* %add.ptr41, %struct.ref_s** @osp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -6
  store %struct.ref_s* %add.ptr42, %struct.ref_s** %op.addr, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call43 = call i32 @show_continue(%struct.ref_s* %25)
  store i32 %call43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.18, %if.then.5, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, double, double, i8 signext, double, double, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zkshow(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 3
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @setup_show(%struct.ref_s* %4, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = bitcast i8* %7 to %struct.gs_show_enum_s*
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %bytes9 = bitcast %union.v* %value8 to i8**
  %11 = load i8*, i8** %bytes9, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size, align 2
  %conv10 = zext i16 %13 to i32
  %call11 = call i32 @gs_kshow_n_init(%struct.gs_show_enum_s* %8, %struct.gs_state_s* %9, i8* %11, i32 %conv10)
  store i32 %call11, i32* %code, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  call void @free_show()
  %14 = load i32, i32* %code, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %17 = bitcast %struct.ref_s* %arrayidx16 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %op.addr, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call19 = call i32 @show_continue(%struct.ref_s* %21)
  store i32 %call19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.6, %if.then, %sw.default
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gs_kshow_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zstringwidth(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @setup_show(%struct.ref_s* %0, i32 (%struct.ref_s*)* @finish_stringwidth)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %4 = load i8*, i8** %bytes, align 8
  %5 = bitcast i8* %4 to %struct.gs_show_enum_s*
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %bytes2 = bitcast %union.v* %value1 to i8**
  %8 = load i8*, i8** %bytes2, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 2
  %10 = load i16, i16* %size, align 2
  %conv = zext i16 %10 to i32
  %call3 = call i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* %5, %struct.gs_state_s* %6, i8* %8, i32 %conv)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @free_show()
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call8 = call i32 @show_continue(%struct.ref_s* %14)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @finish_stringwidth(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %width = alloca %struct.gs_point_s, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_show_enum_s*
  call void @gs_show_width(%struct.gs_show_enum_s* %2, %struct.gs_point_s* %width)
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width, i32 0, i32 0
  %6 = load float, float* %x, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %realval = bitcast %union.v* %value3 to float*
  store float %6, float* %realval, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %width, i32 0, i32 1
  %9 = load float, float* %y, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval6 = bitcast %union.v* %value5 to float*
  store float %9, float* %realval6, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 44, i16* %type_attrs7, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, i8*, i32) #1

declare void @gs_show_width(%struct.gs_show_enum_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcharpath(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %call = call i32 @setup_show(%struct.ref_s* %add.ptr, i32 (%struct.ref_s*)* @finish_show)
  store i32 %call, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %6 = load i8*, i8** %bytes, align 8
  %7 = bitcast i8* %6 to %struct.gs_show_enum_s*
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %bytes7 = bitcast %union.v* %value6 to i8**
  %10 = load i8*, i8** %bytes7, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i32 0, i32 2
  %12 = load i16, i16* %size, align 2
  %conv9 = zext i16 %12 to i32
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %index = bitcast %union.v* %value10 to i16*
  %14 = load i16, i16* %index, align 2
  %conv11 = zext i16 %14 to i32
  %call12 = call i32 @gs_charpath_n_init(%struct.gs_show_enum_s* %7, %struct.gs_state_s* %8, i8* %10, i32 %conv9, i32 %conv11)
  store i32 %call12, i32* %code, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.5
  call void @free_show()
  %15 = load i32, i32* %code, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.5
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  store %struct.ref_s* %add.ptr17, %struct.ref_s** @osp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %op.addr, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call19 = call i32 @show_continue(%struct.ref_s* %18)
  store i32 %call19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gs_charpath_n_init(%struct.gs_show_enum_s*, %struct.gs_state_s*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zsetcachedevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %wbox = alloca [6 x float], align 16
  %npop = alloca i32, align 4
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 6, i32* %npop, align 4
  %call = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %call, %struct.gs_show_enum_s** %penum, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i32 0
  %call1 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %0, i32 6, float* %arraydecay)
  store i32 %call1, i32* %code, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %cmp = icmp eq %struct.gs_show_enum_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end.20

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.then.3
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.then.3, %if.then.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 2
  %6 = load i16, i16* %size, align 2
  %conv4 = zext i16 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 4
  br i1 %cmp5, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %arraydecay7 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i32 0
  %call8 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay7)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 3
  %arraydecay13 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i32 0
  %add.ptr14 = getelementptr inbounds float, float* %arraydecay13, i64 2
  %call15 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr12, i32 4, float* %add.ptr14)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %sw.epilog
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.11
  store i32 3, i32* %npop, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4
  %conv21 = fpext float %12 to double
  %arrayidx22 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 1
  %13 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %13 to double
  %arrayidx24 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 2
  %14 = load float, float* %arrayidx24, align 4
  %conv25 = fpext float %14 to double
  %arrayidx26 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 3
  %15 = load float, float* %arrayidx26, align 4
  %conv27 = fpext float %15 to double
  %arrayidx28 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 4
  %16 = load float, float* %arrayidx28, align 4
  %conv29 = fpext float %16 to double
  %arrayidx30 = getelementptr inbounds [6 x float], [6 x float]* %wbox, i32 0, i64 5
  %17 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %17 to double
  %call32 = call i32 @gs_setcachedevice(%struct.gs_show_enum_s* %11, double %conv21, double %conv23, double %conv25, double %conv27, double %conv29, double %conv31)
  store i32 %call32, i32* %code, align 4
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.20
  %18 = load i32, i32* %code, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.20
  %19 = load i32, i32* %npop, align 4
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.ext = sext i32 %19 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 %idx.neg
  store %struct.ref_s* %add.ptr37, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.35, %if.then.18, %sw.default, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gs_setcachedevice(%struct.gs_show_enum_s*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zsetcharwidth(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %width = alloca [2 x float], align 4
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %call = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %call, %struct.gs_show_enum_s** %penum, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %width, i32 0, i32 0
  %call1 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %0, i32 2, float* %arraydecay)
  store i32 %call1, i32* %code, align 4
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %cmp = icmp eq %struct.gs_show_enum_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %width, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %width, i32 0, i64 1
  %5 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %5 to double
  %call5 = call i32 @gs_setcharwidth(%struct.gs_show_enum_s* %3, double %conv, double %conv4)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %7 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_setcharwidth(%struct.gs_show_enum_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @ztype1addpath(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_show_enum_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %pis = alloca %struct.gs_type1_state_s*, align 8
  %discard = alloca i64, align 8
  %spt = alloca %struct.gs_fixed_point_s, align 8
  %ept = alloca %struct.gs_fixed_point_s, align 8
  %flex_path_was_open = alloca i32, align 4
  %tdata = alloca %struct.gs_type1_data_s, align 8
  %zdata = alloca %struct.z1_data, align 8
  %charstring = alloca i8*, align 8
  %pcstr = alloca %struct.ref_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %call = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %call, %struct.gs_show_enum_s** %penum, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call1 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %0)
  store %struct.gs_font_s* %call1, %struct.gs_font_s** %pfont, align 8
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 4
  %2 = load i8*, i8** %client_data, align 8
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pfdata, align 8
  store i8* null, i8** %charstring, align 8
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %cmp = icmp eq %struct.gs_show_enum_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 252
  %cmp2 = icmp eq i32 %and, 52
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %type1_data = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %7, i32 0, i32 5
  %8 = bitcast %struct.gs_type1_data_s* %tdata to i8*
  %9 = bitcast %struct.gs_type1_data_s* %type1_data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %pfdata6 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 0
  store %struct.font_data_s* %10, %struct.font_data_s** %pfdata6, align 8
  %ostack = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ostack, i32 0, i32 0
  %osptr = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 1
  store i64* %arraydecay, i64** %osptr, align 8
  %11 = bitcast %struct.z1_data* %zdata to i8*
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %tdata, i32 0, i32 2
  store i8* %11, i8** %proc_data, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size, align 2
  %conv7 = zext i16 %13 to i32
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %tdata, i32 0, i32 3
  %14 = load i32, i32* %lenIV, align 4
  %cmp8 = icmp sle i32 %conv7, %14
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %16 = load i32, i32* @gs_type1_state_sizeof, align 4
  %call12 = call i8* @alloc(i32 1, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %17 = bitcast i8* %call12 to %struct.gs_type1_state_s*
  store %struct.gs_type1_state_s* %17, %struct.gs_type1_state_s** %pis, align 8
  %18 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %cmp13 = icmp eq %struct.gs_type1_state_s* %18, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 -25, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %19 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum, align 8
  %call17 = call i32 @gs_show_in_charpath(%struct.gs_show_enum_s* %21)
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8
  %paint_type = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 11
  %23 = load i32, i32* %paint_type, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %25 = load i8*, i8** %bytes, align 8
  %call18 = call i32 @gs_type1_init(%struct.gs_type1_state_s* %19, %struct.gs_show_enum_s* %20, i32 %call17, i32 %23, i8* %25, %struct.gs_type1_data_s* %tdata)
  store i32 %call18, i32* %code, align 4
  %26 = load i32, i32* %code, align 4
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %27 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %28 = bitcast %struct.gs_type1_state_s* %27 to i8*
  %29 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* %28, i32 1, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %30 = load i32, i32* %code, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.16
  br label %more

more:                                             ; preds = %sw.bb.76, %sw.bb.75, %sw.bb.71, %sw.bb, %if.end.51, %if.end.22
  %31 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %32 = load i8*, i8** %charstring, align 8
  %call23 = call i32 @gs_type1_interpret(%struct.gs_type1_state_s* %31, i8* %32)
  store i32 %call23, i32* %code, align 4
  store i8* null, i8** %charstring, align 8
  %33 = load i32, i32* %code, align 4
  %cmp24 = icmp sgt i32 %33, 0
  br i1 %cmp24, label %if.then.26, label %if.end.84

if.then.26:                                       ; preds = %more
  %34 = load i32, i32* %code, align 4
  %and27 = and i32 %34, 1
  %tobool = icmp ne i32 %and27, 0
  br i1 %tobool, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.26
  %35 = load i32, i32* %code, align 4
  %shr = ashr i32 %35, 1
  store i32 %shr, i32* %code, align 4
  %36 = load i32, i32* %code, align 4
  %37 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %37, i32 0, i32 2
  %size29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding, i32 0, i32 2
  %38 = load i16, i16* %size29, align 2
  %conv30 = zext i16 %38 to i32
  %cmp31 = icmp sge i32 %36, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.28
  store i32 -15, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.28
  %39 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %39, i32 0, i32 3
  %40 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %CharStrings35 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %40, i32 0, i32 3
  %41 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %Encoding36 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %41, i32 0, i32 2
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Encoding36, i32 0, i32 0
  %refs = bitcast %union.v* %value37 to %struct.ref_s**
  %42 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %43 = load i32, i32* %code, align 4
  %idx.ext = sext i32 %43 to i64
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %idx.ext
  %call39 = call i32 @dict_lookup(%struct.ref_s* %CharStrings, %struct.ref_s* %CharStrings35, %struct.ref_s* %add.ptr38, %struct.ref_s** %pcstr)
  %cmp40 = icmp sle i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.34
  store i32 -21, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.34
  %44 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8
  %type_attrs44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %45 = load i16, i16* %type_attrs44, align 2
  %conv45 = zext i16 %45 to i32
  %and46 = and i32 %conv45, 255
  %shr47 = ashr i32 %and46, 2
  %cmp48 = icmp ne i32 %shr47, 13
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.43
  store i32 -10, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.43
  %46 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %bytes53 = bitcast %union.v* %value52 to i8**
  %47 = load i8*, i8** %bytes53, align 8
  store i8* %47, i8** %charstring, align 8
  br label %more

if.else:                                          ; preds = %if.then.26
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 7
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8
  store %struct.gx_path_s* %49, %struct.gx_path_s** %ppath, align 8
  %50 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %call54 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* %50, i64* %discard)
  %51 = load i32, i32* %code, align 4
  %shr55 = ashr i32 %51, 1
  %sub = sub nsw i32 %shr55, 1
  switch i32 %sub, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.75
    i32 3, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.else
  %52 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call56 = call i32 @gx_path_current_point(%struct.gx_path_s* %52, %struct.gs_fixed_point_s* %ept)
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %spt, i32 0, i32 0
  %54 = load i64, i64* %x, align 8
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %spt, i32 0, i32 1
  %55 = load i64, i64* %y, align 8
  %call57 = call i32 @gx_path_add_point(%struct.gx_path_s* %53, i64 %54, i64 %55)
  %56 = load i32, i32* %flex_path_was_open, align 4
  %conv58 = trunc i32 %56 to i8
  %57 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %57, i32 0, i32 11
  store i8 %conv58, i8* %subpath_open, align 1
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %x59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ept, i32 0, i32 0
  %59 = load i64, i64* %x59, align 8
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %ept, i32 0, i32 1
  %60 = load i64, i64* %y60, align 8
  %call61 = call i32 @gx_path_add_line(%struct.gx_path_s* %58, i64 %59, i64 %60)
  %61 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %ostack62 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ostack62, i32 0, i64 0
  %call63 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* %61, i64* %arrayidx)
  %62 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %ostack64 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [2 x i64], [2 x i64]* %ostack64, i32 0, i64 1
  %call66 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* %62, i64* %arrayidx65)
  %63 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %call67 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* %63, i64* %discard)
  %ostack68 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [2 x i64], [2 x i64]* %ostack68, i32 0, i64 2
  %osptr70 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 1
  store i64* %arrayidx69, i64** %osptr70, align 8
  br label %more

sw.bb.71:                                         ; preds = %if.else
  %64 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %call72 = call i32 @gx_path_current_point(%struct.gx_path_s* %64, %struct.gs_fixed_point_s* %spt)
  %65 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8
  %subpath_open73 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %65, i32 0, i32 11
  %66 = load i8, i8* %subpath_open73, align 1
  %conv74 = sext i8 %66 to i32
  store i32 %conv74, i32* %flex_path_was_open, align 4
  br label %more

sw.bb.75:                                         ; preds = %if.else
  br label %more

sw.bb.76:                                         ; preds = %if.else
  %67 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %call77 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* %67, i64* %discard)
  %ostack78 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [2 x i64], [2 x i64]* %ostack78, i32 0, i64 0
  store i64 12288, i64* %arrayidx79, align 8
  %ostack80 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [2 x i64], [2 x i64]* %ostack80, i32 0, i64 1
  %osptr82 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %zdata, i32 0, i32 1
  store i64* %arrayidx81, i64** %osptr82, align 8
  br label %more

sw.epilog:                                        ; preds = %if.else
  store i32 -15, i32* %code, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %sw.epilog
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %more
  %68 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %pis, align 8
  %69 = bitcast %struct.gs_type1_state_s* %68 to i8*
  %70 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* %69, i32 1, i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %71 = load i32, i32* %code, align 4
  %cmp85 = icmp sge i32 %71, 0
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.84
  %72 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  store %struct.ref_s* %add.ptr88, %struct.ref_s** @osp, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.84
  %73 = load i32, i32* %code, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.50, %if.then.42, %if.then.33, %if.then.21, %if.then.15, %if.then.10, %if.then.4, %if.then
  %74 = load i32, i32* %retval
  ret i32 %74
}

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #1

declare i8* @alloc(i32, i32, i8*) #1

declare i32 @gs_type1_init(%struct.gs_type1_state_s*, %struct.gs_show_enum_s*, i32, i32, i8*, %struct.gs_type1_data_s*) #1

declare i32 @gs_show_in_charpath(%struct.gs_show_enum_s*) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

declare i32 @gs_type1_interpret(%struct.gs_type1_state_s*, i8*) #1

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #1

declare i32 @gs_type1_pop(%struct.gs_type1_state_s*, i64*) #1

declare i32 @gx_path_current_point(%struct.gx_path_s*, %struct.gs_fixed_point_s*) #1

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #1

declare i32 @gx_path_add_line(%struct.gx_path_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @ztype1imagepath(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %woxy = alloca [4 x float], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -7
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -6
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %3 to i32
  %and5 = and i32 %conv4, 252
  %cmp6 = icmp eq i32 %and5, 20
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -5
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 1
  %5 = load i16, i16* %type_attrs11, align 2
  %conv12 = zext i16 %5 to i32
  %and13 = and i32 %conv12, 252
  %cmp14 = icmp eq i32 %and13, 20
  br i1 %cmp14, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.9
  store i32 -20, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %woxy, i32 0, i32 0
  %call = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* %add.ptr, i32 4, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %9 = load i16, i16* %type_attrs22, align 2
  %conv23 = zext i16 %9 to i32
  %and24 = and i32 %conv23, 252
  %cmp25 = icmp eq i32 %and24, 52
  br i1 %cmp25, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.21
  store i32 -20, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.21
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %11 = load i16, i16* %type_attrs29, align 2
  %conv30 = zext i16 %11 to i32
  %neg = xor i32 %conv30, -1
  %and31 = and i32 %neg, 256
  %tobool = icmp ne i32 %and31, 0
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  store i32 -7, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -7
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %14 = load i8*, i8** %bytes, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -6
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx35, i32 0, i32 0
  %intval = bitcast %union.v* %value36 to i64*
  %16 = load i64, i64* %intval, align 8
  %conv37 = trunc i64 %16 to i32
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -5
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx38, i32 0, i32 0
  %intval40 = bitcast %union.v* %value39 to i64*
  %18 = load i64, i64* %intval40, align 8
  %conv41 = trunc i64 %18 to i32
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %woxy, i32 0, i64 0
  %19 = load float, float* %arrayidx42, align 4
  %conv43 = fpext float %19 to double
  %arrayidx44 = getelementptr inbounds [4 x float], [4 x float]* %woxy, i32 0, i64 1
  %20 = load float, float* %arrayidx44, align 4
  %conv45 = fpext float %20 to double
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %woxy, i32 0, i64 2
  %21 = load float, float* %arrayidx46, align 4
  %conv47 = fpext float %21 to double
  %arrayidx48 = getelementptr inbounds [4 x float], [4 x float]* %woxy, i32 0, i64 3
  %22 = load float, float* %arrayidx48, align 4
  %conv49 = fpext float %22 to double
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %bytes51 = bitcast %union.v* %value50 to i8**
  %24 = load i8*, i8** %bytes51, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 2
  %26 = load i16, i16* %size, align 2
  %conv52 = zext i16 %26 to i32
  %call53 = call i32 @gs_type1imagepath(%struct.gs_state_s* %12, i8* %14, i32 %conv37, i32 %conv41, double %conv43, double %conv45, double %conv47, double %conv49, i8* %24, i32 %conv52)
  store i32 %call53, i32* %code, align 4
  %27 = load i32, i32* %code, align 4
  %cmp54 = icmp slt i32 %27, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.33
  %28 = load i32, i32* %code, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.33
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -7
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %31 = bitcast %struct.ref_s* %arrayidx58 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %33 = load i32, i32* %code, align 4
  %conv59 = trunc i32 %33 to i16
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -7
  %size61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx60, i32 0, i32 2
  store i16 %conv59, i16* %size61, align 2
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -7
  store %struct.ref_s* %add.ptr62, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.56, %if.then.32, %if.then.27, %if.then.20, %if.then.16, %if.then.8, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gs_type1imagepath(%struct.gs_state_s*, i8*, i32, i32, double, double, double, double, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @z1_subr_proc(%struct.gs_type1_data_s* %pdata, i32 %index, i8** %pstr) #0 {
entry:
  %retval = alloca i32, align 4
  %pdata.addr = alloca %struct.gs_type1_data_s*, align 8
  %index.addr = alloca i32, align 4
  %pstr.addr = alloca i8**, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %psubr = alloca %struct.ref_s*, align 8
  store %struct.gs_type1_data_s* %pdata, %struct.gs_type1_data_s** %pdata.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8** %pstr, i8*** %pstr.addr, align 8
  %0 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata.addr, align 8
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %proc_data, align 8
  %2 = bitcast i8* %1 to %struct.z1_data*
  %pfdata1 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %2, i32 0, i32 0
  %3 = load %struct.font_data_s*, %struct.font_data_s** %pfdata1, align 8
  store %struct.font_data_s* %3, %struct.font_data_s** %pfdata, align 8
  %4 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %index.addr, align 4
  %6 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %Subrs = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %6, i32 0, i32 4
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Subrs, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv = zext i16 %7 to i32
  %cmp2 = icmp sge i32 %5, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8
  %Subrs4 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %8, i32 0, i32 4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Subrs4, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %10 = load i32, i32* %index.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %psubr, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %psubr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs, align 2
  %conv5 = zext i16 %12 to i32
  %and = and i32 %conv5, 252
  %cmp6 = icmp eq i32 %and, 52
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %psubr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %bytes = bitcast %union.v* %value10 to i8**
  %14 = load i8*, i8** %bytes, align 8
  %15 = load i8**, i8*** %pstr.addr, align 8
  store i8* %14, i8** %15, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @z1_pop_proc(%struct.gs_type1_data_s* %pdata, i64* %pf) #0 {
entry:
  %pdata.addr = alloca %struct.gs_type1_data_s*, align 8
  %pf.addr = alloca i64*, align 8
  store %struct.gs_type1_data_s* %pdata, %struct.gs_type1_data_s** %pdata.addr, align 8
  store i64* %pf, i64** %pf.addr, align 8
  %0 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata.addr, align 8
  %proc_data = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %proc_data, align 8
  %2 = bitcast i8* %1 to %struct.z1_data*
  %osptr = getelementptr inbounds %struct.z1_data, %struct.z1_data* %2, i32 0, i32 1
  %3 = load i64*, i64** %osptr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %3, i32 -1
  store i64* %incdec.ptr, i64** %osptr, align 8
  %4 = load i64, i64* %incdec.ptr, align 8
  %5 = load i64*, i64** %pf.addr, align 8
  store i64 %4, i64* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @zchar_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zchar_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

declare i32 @gs_show_next(%struct.gs_show_enum_s*) #1

declare zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s*) #1

declare zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s*) #1

declare zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s*) #1

; Function Attrs: nounwind uwtable
define %struct.gs_show_enum_s* @find_show() #0 {
entry:
  %retval = alloca %struct.gs_show_enum_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %0, %struct.ref_s** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp eq i32 %shr, 8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %4 = load i16, i16* %index, align 2
  %conv2 = zext i16 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  %lnot = xor i1 %5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8
  %cmp5 = icmp ult %struct.ref_s* %incdec.ptr, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0)
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store %struct.gs_show_enum_s* null, %struct.gs_show_enum_s** %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 3
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %bytes = bitcast %union.v* %value7 to i8**
  %8 = load i8*, i8** %bytes, align 8
  %9 = bitcast i8* %8 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %9, %struct.gs_show_enum_s** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %retval
  ret %struct.gs_show_enum_s* %10
}

; Function Attrs: nounwind uwtable
define void @free_show() #0 {
entry:
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_show_enum_s*
  %3 = bitcast %struct.gs_show_enum_s* %2 to i8*
  %4 = load i32, i32* @gs_show_enum_sizeof, align 4
  call void @alloc_free(i8* %3, i32 1, i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
