; ModuleID = './MultiSource.Benchmarks.MallocBench/52.gs.zgstate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@igs = common global %struct.gs_state_s* null, align 8
@istate = common global %struct.int_state_s zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"gsave\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"grestore\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"restoreall\00", align 1
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"setdash\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"currentdash\00", align 1
@zgstate_op_init.my_defs = internal global [26 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdash }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentflat }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentgray }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenthsbcolor }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinecap }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinejoin }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinewidth }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentmiterlimit }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentrgbcolor }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentscreen }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenttransfer }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zgrestore }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @zgrestoreall }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zgsave }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zinitgraphics }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdash }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetflat }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetgray }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.ref_s*)* @zsethsbcolor }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinecap }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinejoin }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinewidth }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmiterlimit }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetrgbcolor }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.ref_s*)* @zsettransfer }, %struct.op_def zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"0currentdash\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"0currentflat\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"0currentgray\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0currenthsbcolor\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"0currentlinecap\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0currentlinejoin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"0currentlinewidth\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"0currentmiterlimit\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"0currentrgbcolor\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"0currentscreen\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"0currenttransfer\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"0initgraphics\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"2setdash\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"1setflat\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1.setgray\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"3sethsbcolor\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"1setlinecap\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"1setlinejoin\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"1setlinewidth\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"1setmiterlimit\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"3setrgbcolor\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"1settransfer\00", align 1

; Function Attrs: nounwind uwtable
define void @gs_init() #0 {
entry:
  %call = call %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* @alloc, void (i8*, i32, i32, i8*)* @alloc_free)
  store %struct.gs_state_s* %call, %struct.gs_state_s** @igs, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1, i32 1), align 2
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2, i32 1), align 2
  ret void
}

declare %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*) #1

declare i8* @alloc(i32, i32, i8*) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @zgsave(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pis = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %call = call i8* @alloc(i32 1, i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %0 = bitcast i8* %call to %struct.int_state_s*
  store %struct.int_state_s* %0, %struct.int_state_s** %pis, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call1 = call i32 @gs_gsave(%struct.gs_state_s* %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %cmp2 = icmp eq %struct.int_state_s* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %4 = bitcast %struct.int_state_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.int_state_s* @istate to i8*), i64 72, i32 8, i1 false)
  %5 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  store %struct.int_state_s* %5, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_gsave(%struct.gs_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zgrestore(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pis = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_grestore(%struct.gs_state_s* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store %struct.int_state_s* %1, %struct.int_state_s** %pis, align 8
  %2 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %3 = bitcast %struct.int_state_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.int_state_s* @istate to i8*), i8* %3, i64 72, i32 8, i1 false)
  %4 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %5 = bitcast %struct.int_state_s* %4 to i8*
  call void @alloc_free(i8* %5, i32 1, i32 72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @gs_grestore(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zgrestoreall(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pis = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_grestoreall(%struct.gs_state_s* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %cmp = icmp ne %struct.int_state_s* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store %struct.int_state_s* %2, %struct.int_state_s** %pis, align 8
  %3 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %4 = bitcast %struct.int_state_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.int_state_s* @istate to i8*), i8* %4, i64 72, i32 8, i1 false)
  %5 = load %struct.int_state_s*, %struct.int_state_s** %pis, align 8
  %6 = bitcast %struct.int_state_s* %5 to i8*
  call void @alloc_free(i8* %6, i32 1, i32 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @gs_grestoreall(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zinitgraphics(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_initgraphics(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_initgraphics(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetlinewidth(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_param(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setlinewidth)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @num_param(%struct.ref_s* %op, i32 (%struct.gs_state_s*, double)* %pproc) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pproc.addr = alloca i32 (%struct.gs_state_s*, double)*, align 8
  %param = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.gs_state_s*, double)* %pproc, i32 (%struct.gs_state_s*, double)** %pproc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @real_param(%struct.ref_s* %0, float* %param, i32 0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32 (%struct.gs_state_s*, double)*, i32 (%struct.gs_state_s*, double)** %pproc.addr, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = load float, float* %param, align 4
  %conv = fpext float %4 to double
  %call1 = call i32 %2(%struct.gs_state_s* %3, double %conv)
  store i32 %call1, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* %code, align 4
  ret i32 %7
}

declare i32 @gs_setlinewidth(%struct.gs_state_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentlinewidth(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call float @gs_currentlinewidth(%struct.gs_state_s* %3)
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare float @gs_currentlinewidth(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetlinecap(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %param = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @line_param(%struct.ref_s* %0, i32* %param)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = load i32, i32* %param, align 4
  %call1 = call i32 @gs_setlinecap(%struct.gs_state_s* %2, i32 %3)
  store i32 %call1, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %code, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @line_param(%struct.ref_s* %op, i32* %pparam) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pparam.addr = alloca i32*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32* %pparam, i32** %pparam.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
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
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval5 = bitcast %union.v* %value4 to i64*
  %5 = load i64, i64* %intval5, align 8
  %cmp6 = icmp sgt i64 %5, 2
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval11 = bitcast %union.v* %value10 to i64*
  %7 = load i64, i64* %intval11, align 8
  %conv12 = trunc i64 %7 to i32
  %8 = load i32*, i32** %pparam.addr, align 8
  store i32 %conv12, i32* %8, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @gs_setlinecap(%struct.gs_state_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentlinecap(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_currentlinecap(%struct.gs_state_s* %3)
  %conv = sext i32 %call to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_currentlinecap(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetlinejoin(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %param = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @line_param(%struct.ref_s* %0, i32* %param)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = load i32, i32* %param, align 4
  %call1 = call i32 @gs_setlinejoin(%struct.gs_state_s* %2, i32 %3)
  store i32 %call1, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %code, align 4
  ret i32 %4
}

declare i32 @gs_setlinejoin(%struct.gs_state_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentlinejoin(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_currentlinejoin(%struct.gs_state_s* %3)
  %conv = sext i32 %call to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_currentlinejoin(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetmiterlimit(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_param(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setmiterlimit)
  ret i32 %call
}

declare i32 @gs_setmiterlimit(%struct.gs_state_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentmiterlimit(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call float @gs_currentmiterlimit(%struct.gs_state_s* %3)
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare float @gs_currentmiterlimit(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetdash(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %offset = alloca float, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %dfrom = alloca %struct.ref_s*, align 8
  %pattern = alloca float*, align 8
  %dto = alloca float*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @real_param(%struct.ref_s* %0, float* %offset, i32 0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 1
  %6 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %6 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %sw.epilog
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %8, %struct.ref_s** %dfrom, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 2
  %10 = load i16, i16* %size, align 2
  %conv10 = zext i16 %10 to i32
  store i32 %conv10, i32* %n, align 4
  store i32 %conv10, i32* %i, align 4
  %11 = load i32, i32* %n, align 4
  %call11 = call i8* @alloc(i32 %11, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %12 = bitcast i8* %call11 to float*
  store float* %12, float** %dto, align 8
  store float* %12, float** %pattern, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.24, %if.end.7
  %13 = load i32, i32* %i, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %i, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %dfrom, align 8
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %15 = load i16, i16* %type_attrs13, align 2
  %conv14 = zext i16 %15 to i32
  %and15 = and i32 %conv14, 255
  %shr16 = ashr i32 %and15, 2
  switch i32 %shr16, label %sw.default.23 [
    i32 5, label %sw.bb.17
    i32 11, label %sw.bb.20
  ]

sw.bb.17:                                         ; preds = %while.body
  %16 = load %struct.ref_s*, %struct.ref_s** %dfrom, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval = bitcast %union.v* %value18 to i64*
  %17 = load i64, i64* %intval, align 8
  %conv19 = sitofp i64 %17 to float
  %18 = load float*, float** %dto, align 8
  %incdec.ptr = getelementptr inbounds float, float* %18, i32 1
  store float* %incdec.ptr, float** %dto, align 8
  store float %conv19, float* %18, align 4
  br label %sw.epilog.24

sw.bb.20:                                         ; preds = %while.body
  %19 = load %struct.ref_s*, %struct.ref_s** %dfrom, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %realval = bitcast %union.v* %value21 to float*
  %20 = load float, float* %realval, align 4
  %21 = load float*, float** %dto, align 8
  %incdec.ptr22 = getelementptr inbounds float, float* %21, i32 1
  store float* %incdec.ptr22, float** %dto, align 8
  store float %20, float* %21, align 4
  br label %sw.epilog.24

sw.default.23:                                    ; preds = %while.body
  %22 = load float*, float** %dto, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load i32, i32* %n, align 4
  call void @alloc_free(i8* %23, i32 %24, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  store i32 -20, i32* %retval
  br label %return

sw.epilog.24:                                     ; preds = %sw.bb.20, %sw.bb.17
  %25 = load %struct.ref_s*, %struct.ref_s** %dfrom, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr25, %struct.ref_s** %dfrom, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %27 = load float*, float** %pattern, align 8
  %28 = load i32, i32* %n, align 4
  %29 = load float, float* %offset, align 4
  %conv26 = fpext float %29 to double
  %call27 = call i32 @gs_setdash(%struct.gs_state_s* %26, float* %27, i32 %28, double %conv26)
  store i32 %call27, i32* %code, align 4
  %30 = load i32, i32* %code, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %while.end
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %while.end
  %32 = load i32, i32* %code, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %sw.default.23, %if.then.6, %sw.default, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @real_param(%struct.ref_s*, float*, i32) #1

declare i32 @gs_setdash(%struct.gs_state_s*, float*, i32, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentdash(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %pattern = alloca %struct.ref_s*, align 8
  %dto = alloca %struct.ref_s*, align 8
  %dfrom = alloca float*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_currentdash_length(%struct.gs_state_s* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  store i32 %1, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %call1 = call i8* @alloc(i32 %2, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct.ref_s*
  store %struct.ref_s* %3, %struct.ref_s** %pattern, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %pattern, align 8
  store %struct.ref_s* %4, %struct.ref_s** %dto, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %pattern, align 8
  %6 = bitcast %struct.ref_s* %5 to i8*
  %7 = load i32, i32* %n, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 12
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %mul
  %8 = bitcast i8* %add.ptr to float*
  store float* %8, float** %dfrom, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = load float*, float** %dfrom, align 8
  %call2 = call i32 @gs_currentdash_pattern(%struct.gs_state_s* %9, float* %10)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load float*, float** %dfrom, align 8
  %13 = load float, float* %12, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %dto, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %13, float* %realval, align 4
  %15 = load %struct.ref_s*, %struct.ref_s** %dto, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** %dto, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %dto, align 8
  %17 = load float*, float** %dfrom, align 8
  %incdec.ptr3 = getelementptr inbounds float, float* %17, i32 1
  store float* %incdec.ptr3, float** %dfrom, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 2
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr4, %struct.ref_s** @osp, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr4, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %21 = load %struct.ref_s*, %struct.ref_s** %pattern, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 0
  %refs = bitcast %union.v* %value8 to %struct.ref_s**
  store %struct.ref_s* %21, %struct.ref_s** %refs, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 1
  store i16 770, i16* %type_attrs10, align 2
  %24 = load i32, i32* %n, align 4
  %conv11 = trunc i32 %24 to i16
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr12, i32 0, i32 2
  store i16 %conv11, i16* %size, align 2
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call13 = call float @gs_currentdash_offset(%struct.gs_state_s* %26)
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %realval15 = bitcast %union.v* %value14 to float*
  store float %call13, float* %realval15, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  store i16 44, i16* %type_attrs16, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @gs_currentdash_length(%struct.gs_state_s*) #1

declare i32 @gs_currentdash_pattern(%struct.gs_state_s*, float*) #1

declare float @gs_currentdash_offset(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetflat(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_param(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setflat)
  ret i32 %call
}

declare i32 @gs_setflat(%struct.gs_state_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentflat(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call float @gs_currentflat(%struct.gs_state_s* %3)
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare float @gs_currentflat(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetgray(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_param(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double)* @gs_setgray)
  ret i32 %call
}

declare i32 @gs_setgray(%struct.gs_state_s*, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentgray(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call float @gs_currentgray(%struct.gs_state_s* %3)
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare float @gs_currentgray(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsethsbcolor(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %par = alloca [3 x float], align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 3, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4
  %conv = fpext float %2 to double
  %arrayidx1 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 1
  %3 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %3 to double
  %arrayidx3 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 2
  %4 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %4 to double
  %call5 = call i32 @gs_sethsbcolor(%struct.gs_state_s* %1, double %conv, double %conv2, double %conv4)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %code, align 4
  ret i32 %6
}

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

declare i32 @gs_sethsbcolor(%struct.gs_state_s*, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrenthsbcolor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %par = alloca [3 x float], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  %call = call i32 @gs_currenthsbcolor(%struct.gs_state_s* %0, float* %arraydecay)
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -3
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay2 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  call void @tri_put(%struct.ref_s* %4, float* %arraydecay2)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gs_currenthsbcolor(%struct.gs_state_s*, float*) #1

; Function Attrs: nounwind uwtable
define void @tri_put(%struct.ref_s* %op, float* %pf3) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %pf3.addr = alloca float*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store float* %pf3, float** %pf3.addr, align 8
  %0 = load float*, float** %pf3.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %1, float* %realval, align 4
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %4 = load float*, float** %pf3.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 1
  %5 = load float, float* %arrayidx2, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 0
  %realval5 = bitcast %union.v* %value4 to float*
  store float %5, float* %realval5, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 1
  store i16 44, i16* %type_attrs7, align 2
  %8 = load float*, float** %pf3.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %8, i64 2
  %9 = load float, float* %arrayidx8, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval10 = bitcast %union.v* %value9 to float*
  store float %9, float* %realval10, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 44, i16* %type_attrs11, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @zsetrgbcolor(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %par = alloca [3 x float], align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 3, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4
  %conv = fpext float %2 to double
  %arrayidx1 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 1
  %3 = load float, float* %arrayidx1, align 4
  %conv2 = fpext float %3 to double
  %arrayidx3 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i64 2
  %4 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %4 to double
  %call5 = call i32 @gs_setrgbcolor(%struct.gs_state_s* %1, double %conv, double %conv2, double %conv4)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* %code, align 4
  ret i32 %6
}

declare i32 @gs_setrgbcolor(%struct.gs_state_s*, double, double, double) #1

; Function Attrs: nounwind uwtable
define i32 @zcurrentrgbcolor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %par = alloca [3 x float], align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  %call = call i32 @gs_currentrgbcolor(%struct.gs_state_s* %0, float* %arraydecay)
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -3
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay2 = getelementptr inbounds [3 x float], [3 x float]* %par, i32 0, i32 0
  call void @tri_put(%struct.ref_s* %4, float* %arraydecay2)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gs_currentrgbcolor(%struct.gs_state_s*, float*) #1

; Function Attrs: nounwind uwtable
define i32 @zsettransfer(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
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
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 3
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2) to i8*), i8* %5, i64 16, i32 8, i1 false)
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.default
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zcurrenttransfer(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %4 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2) to i8*), i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zcurrentscreen(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %freq = alloca float, align 4
  %angle = alloca float, align 4
  %proc = alloca float (double, double)*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_currentscreen(%struct.gs_state_s* %0, float* %freq, float* %angle, float (double, double)** %proc)
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 3
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -3
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load float, float* %freq, align 4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %4, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %7 = load float, float* %angle, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr4, i32 0, i32 0
  %realval6 = bitcast %union.v* %value5 to float*
  store float %7, float* %realval6, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr7, i32 0, i32 1
  store i16 44, i16* %type_attrs8, align 2
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %11 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1) to i8*), i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_currentscreen(%struct.gs_state_s*, float*, float*, float (double, double)**) #1

; Function Attrs: nounwind uwtable
define void @zgstate_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([26 x %struct.op_def], [26 x %struct.op_def]* @zgstate_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
