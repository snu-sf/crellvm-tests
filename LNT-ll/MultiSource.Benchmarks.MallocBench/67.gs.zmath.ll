; ModuleID = './MultiSource.Benchmarks.MallocBench/67.gs.zmath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@degrees_to_radians = global double 0x3F91DF46A2529D39, align 8
@radians_to_degrees = global double 0x404CA5DC1A63C1F8, align 8
@rand_state = common global i64 0, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@zmath_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zarccos }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zarcsin }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zatan }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcos }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zexp }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zln }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zlog }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zrand }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zrrand }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsin }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zsqrt }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zsrand }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"1arccos\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1arcsin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"2atan\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1cos\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2exp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1ln\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1log\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0rand\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"0rrand\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1sin\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1sqrt\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"1srand\00", align 1

; Function Attrs: nounwind uwtable
define void @zmath_init() #0 {
entry:
  store i64 1, i64* @rand_state, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @zsqrt(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %num = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %num)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %num, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load float, float* %num, align 4
  %conv5 = fpext float %4 to double
  %call6 = call double @sqrt(double %conv5) #3
  %conv7 = fptrunc double %call6 to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv7, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i32 @zarccos(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %num = alloca float, align 4
  %result = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %num)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %num, align 4
  %conv = fpext float %3 to double
  %call1 = call double @acos(double %conv) #3
  %4 = load double, double* @radians_to_degrees, align 8
  %mul = fmul double %call1, %4
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %result, align 4
  %5 = load float, float* %result, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %5, float* %realval, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare double @acos(double) #2

; Function Attrs: nounwind uwtable
define i32 @zarcsin(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %num = alloca float, align 4
  %result = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %num)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %num, align 4
  %conv = fpext float %3 to double
  %call1 = call double @asin(double %conv) #3
  %4 = load double, double* @radians_to_degrees, align 8
  %mul = fmul double %call1, %4
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %result, align 4
  %5 = load float, float* %result, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %5, float* %realval, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind uwtable
define i32 @zatan(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %args = alloca [2 x float], align 4
  %result = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4
  %cmp1 = fcmp oeq float %3, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %4 = load float, float* %arrayidx3, align 4
  %cmp4 = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -23, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %5 = load float, float* %arrayidx7, align 4
  %cmp8 = fcmp olt float %5, 0.000000e+00
  %cond = select i1 %cmp8, i32 180, i32 0
  %conv = sitofp i32 %cond to float
  store float %conv, float* %result, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %6 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %6 to double
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %7 = load float, float* %arrayidx11, align 4
  %conv12 = fpext float %7 to double
  %call13 = call double @atan2(double %conv10, double %conv12) #3
  %8 = load double, double* @radians_to_degrees, align 8
  %mul = fmul double %call13, %8
  %conv14 = fptrunc double %mul to float
  store float %conv14, float* %result, align 4
  %9 = load float, float* %result, align 4
  %cmp15 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.17
  %10 = load float, float* %result, align 4
  %add = fadd float %10, 1.800000e+02
  store float %add, float* %result, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load float, float* %result, align 4
  %cmp18 = fcmp olt float %11, 0.000000e+00
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.23

if.else.20:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.20
  %12 = load float, float* %result, align 4
  %cmp21 = fcmp oge float %12, 1.800000e+02
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load float, float* %result, align 4
  %sub = fsub float %13, 1.800000e+02
  store float %sub, float* %result, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.23

if.end.23:                                        ; preds = %while.end, %do.end
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %14 = load float, float* %arrayidx24, align 4
  %cmp25 = fcmp olt float %14, 0.000000e+00
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %15 = load float, float* %result, align 4
  %add28 = fadd float %15, 1.800000e+02
  store float %add28, float* %result, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.6
  %16 = load float, float* %result, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %16, float* %realval, align 4
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr32, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.5, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define i32 @zcos(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %angle = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %angle)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %angle, align 4
  %conv = fpext float %3 to double
  %4 = load double, double* @degrees_to_radians, align 8
  %mul = fmul double %conv, %4
  %call1 = call double @cos(double %mul) #3
  %conv2 = fptrunc double %call1 to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv2, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define i32 @zsin(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %angle = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %angle)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %angle, align 4
  %conv = fpext float %3 to double
  %4 = load double, double* @degrees_to_radians, align 8
  %mul = fmul double %conv, %4
  %call1 = call double @sin(double %mul) #3
  %conv2 = fptrunc double %call1 to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv2, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define i32 @zexp(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %args = alloca [2 x float], align 4
  %result = alloca float, align 4
  %ipart = alloca double, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %0, i32 2, float* %arraydecay)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %4 = load float, float* %arrayidx3, align 4
  %conv4 = fpext float %4 to double
  %cmp5 = fcmp oeq double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 -23, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %5 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %5 to double
  %cmp11 = fcmp olt double %conv10, 0.000000e+00
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.20

land.lhs.true.13:                                 ; preds = %if.end.8
  %arrayidx14 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %6 = load float, float* %arrayidx14, align 4
  %conv15 = fpext float %6 to double
  %call16 = call double @modf(double %conv15, double* %ipart) #3
  %cmp17 = fcmp une double %call16, 0.000000e+00
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.13
  store i32 -23, i32* %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.13, %if.end.8
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 0
  %7 = load float, float* %arrayidx21, align 4
  %conv22 = fpext float %7 to double
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %args, i32 0, i64 1
  %8 = load float, float* %arrayidx23, align 4
  %conv24 = fpext float %8 to double
  %call25 = call double @pow(double %conv22, double %conv24) #3
  %conv26 = fptrunc double %call25 to float
  store float %conv26, float* %result, align 4
  %9 = load float, float* %result, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %9, float* %realval, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr28, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.7, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare double @modf(double, double*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define i32 @zln(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %num = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %num)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %num, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load float, float* %num, align 4
  %conv5 = fpext float %4 to double
  %call6 = call double @log(double %conv5) #3
  %conv7 = fptrunc double %call6 to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv7, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define i32 @zlog(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %num = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %num)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %num, align 4
  %conv = fpext float %3 to double
  %cmp1 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load float, float* %num, align 4
  %conv5 = fpext float %4 to double
  %call6 = call double @log10(double %conv5) #3
  %conv7 = fptrunc double %call6 to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv7, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: nounwind uwtable
define i32 @zrand(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %value = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load i64, i64* @rand_state, align 8
  %mul = mul i64 %0, 1103515245
  %add = add i64 %mul, 12345
  store i64 %add, i64* @rand_state, align 8
  %shl = shl i64 %add, 21
  store i64 %shl, i64* %value, align 8
  %1 = load i64, i64* @rand_state, align 8
  %mul1 = mul i64 %1, 1103515245
  %add2 = add i64 %mul1, 12345
  store i64 %add2, i64* @rand_state, align 8
  %shl3 = shl i64 %add2, 10
  %2 = load i64, i64* %value, align 8
  %add4 = add i64 %2, %shl3
  store i64 %add4, i64* %value, align 8
  %3 = load i64, i64* @rand_state, align 8
  %mul5 = mul i64 %3, 1103515245
  %add6 = add i64 %mul5, 12345
  store i64 %add6, i64* @rand_state, align 8
  %shr = lshr i64 %add6, 3
  %4 = load i64, i64* %value, align 8
  %add7 = add i64 %4, %shr
  store i64 %add7, i64* %value, align 8
  %5 = load i64, i64* %value, align 8
  %and = and i64 %5, 2147483647
  store i64 %and, i64* %value, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr8, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %value, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value9 to i64*
  store i64 %9, i64* %intval, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @zsrand(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
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
  store i64 %3, i64* @rand_state, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zrrand(%struct.ref_s* %op) #0 {
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
  %3 = load i64, i64* @rand_state, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %3, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @zmath_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmath_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
