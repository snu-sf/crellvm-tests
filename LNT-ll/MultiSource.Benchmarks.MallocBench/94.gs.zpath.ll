; ModuleID = './MultiSource.Benchmarks.MallocBench/94.gs.zpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_point_s = type { float, float }

@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@zpath_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zarc }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcn }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zarct }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcto }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zclosepath }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentpoint }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurveto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zlineto }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmoveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @znewpath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zrcurveto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zrlineto }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zrmoveto }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"5arc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"5arcn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5arct\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5arcto\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0closepath\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"0currentpoint\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"6curveto\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"2lineto\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"2moveto\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0newpath\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"6rcurveto\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"2rlineto\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"2rmoveto\00", align 1

; Function Attrs: nounwind uwtable
define i32 @znewpath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_newpath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_newpath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentpoint(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_currentpoint(%struct.gs_state_s* %0, %struct.gs_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %4
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %6 = load float, float* %x, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %6, float* %realval, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %9 = load float, float* %y, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval8 = bitcast %union.v* %value7 to float*
  store float %9, float* %realval8, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 44, i16* %type_attrs9, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_currentpoint(%struct.gs_state_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zmoveto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_to(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_moveto)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @common_to(%struct.ref_s* %op, i32 (%struct.gs_state_s*, double, double)* %add_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %add_proc.addr = alloca i32 (%struct.gs_state_s*, double, double)*, align 8
  %opxy = alloca [2 x float], align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.gs_state_s*, double, double)* %add_proc, i32 (%struct.gs_state_s*, double, double)** %add_proc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32 (%struct.gs_state_s*, double, double)*, i32 (%struct.gs_state_s*, double, double)** %add_proc.addr, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 1
  %4 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %4 to double
  %call3 = call i32 %1(%struct.gs_state_s* %2, double %conv, double %conv2)
  store i32 %call3, i32* %code, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrmoveto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_to(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_rmoveto)
  ret i32 %call
}

declare i32 @gs_rmoveto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zlineto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_to(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_lineto)
  ret i32 %call
}

declare i32 @gs_lineto(%struct.gs_state_s*, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrlineto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_to(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double)* @gs_rlineto)
  ret i32 %call
}

declare i32 @gs_rlineto(%struct.gs_state_s*, double, double) #1

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

; Function Attrs: nounwind uwtable
define i32 @zarc(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_arc(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* @gs_arc)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @common_arc(%struct.ref_s* %op, i32 (%struct.gs_state_s*, double, double, double, double, double)* %aproc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %aproc.addr = alloca i32 (%struct.gs_state_s*, double, double, double, double, double)*, align 8
  %xyra = alloca [5 x float], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.gs_state_s*, double, double, double, double, double)* %aproc, i32 (%struct.gs_state_s*, double, double, double, double, double)** %aproc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 5, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32 (%struct.gs_state_s*, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double)** %aproc.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %arrayidx1 = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i64 1
  %5 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %5 to double
  %arrayidx3 = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i64 2
  %6 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %6 to double
  %arrayidx5 = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i64 3
  %7 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %7 to double
  %arrayidx7 = getelementptr inbounds [5 x float], [5 x float]* %xyra, i32 0, i64 4
  %8 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %8 to double
  %call9 = call i32 %2(%struct.gs_state_s* %3, double %conv, double %conv2, double %conv4, double %conv6, double %conv8)
  store i32 %call9, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  %cmp10 = icmp sge i32 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_arc(%struct.gs_state_s*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zarcn(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_arc(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double)* @gs_arcn)
  ret i32 %call
}

declare i32 @gs_arcn(%struct.gs_state_s*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zarct(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_arct(%struct.ref_s* %0, float* null)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @common_arct(%struct.ref_s* %op, float* %tanxy) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %tanxy.addr = alloca float*, align 8
  %args = alloca [5 x float], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store float* %tanxy, float** %tanxy.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 5, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %arrayidx1 = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i64 1
  %4 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %4 to double
  %arrayidx3 = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i64 2
  %5 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %5 to double
  %arrayidx5 = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i64 3
  %6 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %6 to double
  %arrayidx7 = getelementptr inbounds [5 x float], [5 x float]* %args, i32 0, i64 4
  %7 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %7 to double
  %8 = load float*, float** %tanxy.addr, align 8
  %call9 = call i32 @gs_arcto(%struct.gs_state_s* %2, double %conv, double %conv2, double %conv4, double %conv6, double %conv8, float* %8)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @zarcto(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %tanxy = alloca [4 x float], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i32 0
  %call = call i32 @common_arct(%struct.ref_s* %0, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %3, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -4
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 1
  %6 = load float, float* %arrayidx2, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 0
  %realval5 = bitcast %union.v* %value4 to float*
  store float %6, float* %realval5, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -3
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 1
  store i16 44, i16* %type_attrs7, align 2
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 2
  %9 = load float, float* %arrayidx8, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 0
  %realval11 = bitcast %union.v* %value10 to float*
  store float %9, float* %realval11, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 1
  store i16 44, i16* %type_attrs13, align 2
  %arrayidx14 = getelementptr inbounds [4 x float], [4 x float]* %tanxy, i32 0, i64 3
  %12 = load float, float* %arrayidx14, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 0
  %realval17 = bitcast %union.v* %value16 to float*
  store float %12, float* %realval17, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 1
  store i16 44, i16* %type_attrs19, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr20, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gs_arcto(%struct.gs_state_s*, double, double, double, double, double, float*) #1

; Function Attrs: nounwind uwtable
define i32 @zcurveto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_curve(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* @gs_curveto)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @common_curve(%struct.ref_s* %op, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* %add_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %add_proc.addr = alloca i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, align 8
  %opxy = alloca [6 x float], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.gs_state_s*, double, double, double, double, double, double)* %add_proc, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %add_proc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 6, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %code, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32 (%struct.gs_state_s*, double, double, double, double, double, double)*, i32 (%struct.gs_state_s*, double, double, double, double, double, double)** %add_proc.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %arrayidx1 = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 1
  %5 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %5 to double
  %arrayidx3 = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 2
  %6 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %6 to double
  %arrayidx5 = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 3
  %7 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %7 to double
  %arrayidx7 = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 4
  %8 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %8 to double
  %arrayidx9 = getelementptr inbounds [6 x float], [6 x float]* %opxy, i32 0, i64 5
  %9 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %9 to double
  %call11 = call i32 %2(%struct.gs_state_s* %3, double %conv, double %conv2, double %conv4, double %conv6, double %conv8, double %conv10)
  store i32 %call11, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  %cmp12 = icmp sge i32 %10, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_curveto(%struct.gs_state_s*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zrcurveto(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_curve(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, double, double, double, double)* @gs_rcurveto)
  ret i32 %call
}

declare i32 @gs_rcurveto(%struct.gs_state_s*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zclosepath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_closepath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_closepath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define void @zpath_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zpath_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
