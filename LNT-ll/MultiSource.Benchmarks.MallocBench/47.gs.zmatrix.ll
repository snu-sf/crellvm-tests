; ModuleID = './MultiSource.Benchmarks.MallocBench/47.gs.zmatrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_point_s = type { float, float }

@gs_identity_matrix = external global %struct.gs_matrix_s, align 8
@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@zmatrix_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zconcat }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zdtransform }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zconcatmatrix }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentmatrix }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zidtransform }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zinvertmatrix }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zitransform }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zrotate }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zscale }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmatrix }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztransform }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @ztranslate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"1concat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"2dtransform\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3concatmatrix\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1currentmatrix\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2idtransform\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"2invertmatrix\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"2itransform\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1rotate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"2scale\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"1setmatrix\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2transform\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"2translate\00", align 1

; Function Attrs: nounwind uwtable
define void @zmatrix_init() #0 {
entry:
  %mp = alloca %struct.ref_s*, align 8
  %i = alloca i32, align 4
  store %struct.ref_s* bitcast (%struct.gs_matrix_s* @gs_identity_matrix to %struct.ref_s*), %struct.ref_s** %mp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %2 = load float, float* %realval, align 4
  %3 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %realval2 = bitcast %union.v* %value1 to float*
  store float %2, float* %realval2, align 4
  %4 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %mp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %mp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @zcurrentmatrix(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %6 = bitcast %struct.ref_s* %5 to %struct.gs_matrix_s*
  %call1 = call i32 @gs_currentmatrix(%struct.gs_state_s* %3, %struct.gs_matrix_s* %6)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @write_matrix(...) #1

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetmatrix(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %0, %struct.gs_matrix_s* %mat)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call1 = call i32 @gs_setmatrix(%struct.gs_state_s* %3, %struct.gs_matrix_s* %mat)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @read_matrix(...) #1

declare i32 @gs_setmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @ztranslate(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %trans = alloca [2 x float], align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %2, i32 2, float* %arraydecay)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i64 1
  %6 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %6 to double
  %call6 = call i32 @gs_translate(%struct.gs_state_s* %4, double %conv, double %conv5)
  store i32 %call6, i32* %code, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %9 = bitcast %struct.ref_s* %8 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %9, %struct.gs_matrix_s** %pmat, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %arraydecay7 = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i32 0
  %call8 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay7)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i64 0
  %12 = load float, float* %arrayidx13, align 4
  %conv14 = fpext float %12 to double
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %trans, i32 0, i64 1
  %13 = load float, float* %arrayidx15, align 4
  %conv16 = fpext float %13 to double
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8
  %call17 = call i32 @gs_make_translation(double %conv14, double %conv16, %struct.gs_matrix_s* %14)
  store i32 %call17, i32* %code, align 4
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %17 = bitcast %struct.ref_s* %arrayidx18 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.12, %if.end
  %19 = load i32, i32* %code, align 4
  %cmp20 = icmp sge i32 %19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr23, %struct.ref_s** @osp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.11, %if.then.3
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

declare i32 @gs_translate(%struct.gs_state_s*, double, double) #1

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zscale(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %scale = alloca [2 x float], align 4
  %code = alloca i32, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i32 0
  %call1 = call i32 @num_params(%struct.ref_s* %2, i32 2, float* %arraydecay)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i64 1
  %6 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %6 to double
  %call6 = call i32 @gs_scale(%struct.gs_state_s* %4, double %conv, double %conv5)
  store i32 %call6, i32* %code, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %9 = bitcast %struct.ref_s* %8 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %9, %struct.gs_matrix_s** %pmat, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %arraydecay7 = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i32 0
  %call8 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay7)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i64 0
  %12 = load float, float* %arrayidx13, align 4
  %conv14 = fpext float %12 to double
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %scale, i32 0, i64 1
  %13 = load float, float* %arrayidx15, align 4
  %conv16 = fpext float %13 to double
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8
  %call17 = call i32 @gs_make_scaling(double %conv14, double %conv16, %struct.gs_matrix_s* %14)
  store i32 %call17, i32* %code, align 4
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %17 = bitcast %struct.ref_s* %arrayidx18 to i8*
  %18 = bitcast %struct.ref_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.12, %if.end
  %19 = load i32, i32* %code, align 4
  %cmp20 = icmp sge i32 %19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  store %struct.ref_s* %add.ptr23, %struct.ref_s** @osp, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %21 = load i32, i32* %code, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.11, %if.then.3
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gs_scale(%struct.gs_state_s*, double, double) #1

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zrotate(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ang = alloca float, align 4
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call1 = call i32 @num_params(%struct.ref_s* %2, i32 1, float* %ang)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %code, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %5 = load float, float* %ang, align 4
  %conv = fpext float %5 to double
  %call4 = call i32 @gs_rotate(%struct.gs_state_s* %4, double %conv)
  store i32 %call4, i32* %code, align 4
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %7 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %8 = bitcast %struct.ref_s* %7 to %struct.gs_matrix_s*
  store %struct.gs_matrix_s* %8, %struct.gs_matrix_s** %pmat, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %call5 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 1, float* %ang)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.else
  %11 = load float, float* %ang, align 4
  %conv10 = fpext float %11 to double
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8
  %call11 = call i32 @gs_make_rotation(double %conv10, %struct.gs_matrix_s* %12)
  store i32 %call11, i32* %code, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %15 = bitcast %struct.ref_s* %arrayidx to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end
  %17 = load i32, i32* %code, align 4
  %cmp13 = icmp sge i32 %17, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %19 = load i32, i32* %code, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.8, %if.then.3
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gs_rotate(%struct.gs_state_s*, double) #1

declare i32 @gs_make_rotation(double, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zconcat(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %0, %struct.gs_matrix_s* %mat)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call1 = call i32 @gs_concat(%struct.gs_state_s* %3, %struct.gs_matrix_s* %mat)
  store i32 %call1, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_concat(%struct.gs_state_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zconcatmatrix(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %m1 = alloca %struct.gs_matrix_s, align 8
  %m2 = alloca %struct.gs_matrix_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr, %struct.gs_matrix_s* %m1)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -1
  %call2 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr1, %struct.gs_matrix_s* %m2)
  store i32 %call2, i32* %code, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call5 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %2)
  store i32 %call5, i32* %code, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %4 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %5 = bitcast %struct.ref_s* %4 to %struct.gs_matrix_s*
  %call8 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %m1, %struct.gs_matrix_s* %m2, %struct.gs_matrix_s* %5)
  store i32 %call8, i32* %code, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %6 = load i32, i32* %code, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %9 = bitcast %struct.ref_s* %arrayidx to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  store %struct.ref_s* %add.ptr10, %struct.ref_s** @osp, align 8
  %12 = load i32, i32* %code, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define i32 @ztransform(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_transform(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_transform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @common_transform(%struct.ref_s* %op, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* %ptproc, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %matproc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ptproc.addr = alloca i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, align 8
  %matproc.addr = alloca i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, align 8
  %opxy = alloca [2 x float], align 4
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 8
  %pmat = alloca %struct.gs_matrix_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* %ptproc, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %ptproc.addr, align 8
  store i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* %matproc, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %matproc.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 11, label %sw.bb
    i32 5, label %sw.bb.1
    i32 0, label %sw.bb.5
    i32 10, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %3 = load float, float* %realval, align 4
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 1
  store float %3, float* %arrayidx, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value2 to i64*
  %5 = load i64, i64* %intval, align 8
  %conv3 = sitofp i64 %5 to float
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 1
  store float %conv3, float* %arrayidx4, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry, %entry
  store %struct.gs_matrix_s* %mat, %struct.gs_matrix_s** %pmat, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %6, %struct.gs_matrix_s* %7)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.5
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i32 0
  %call7 = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay)
  store i32 %call7, i32* %code, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %9 = load i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)*, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)** %matproc.addr, align 8
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 0
  %10 = load float, float* %arrayidx11, align 4
  %conv12 = fpext float %10 to double
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 1
  %11 = load float, float* %arrayidx13, align 4
  %conv14 = fpext float %11 to double
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8
  %call15 = call i32 %9(double %conv12, double %conv14, %struct.gs_matrix_s* %12, %struct.gs_point_s* %pt)
  store i32 %call15, i32* %code, align 4
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %sw.bb.5
  %13 = load i32, i32* %code, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr18, %struct.ref_s** @osp, align 8
  br label %out

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %type_attrs20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr19, i32 0, i32 1
  %17 = load i16, i16* %type_attrs20, align 2
  %conv21 = zext i16 %17 to i32
  %and22 = and i32 %conv21, 255
  %shr23 = ashr i32 %and22, 2
  switch i32 %shr23, label %sw.default.35 [
    i32 11, label %sw.bb.24
    i32 5, label %sw.bb.29
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 0
  %realval27 = bitcast %union.v* %value26 to float*
  %19 = load float, float* %realval27, align 4
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 0
  store float %19, float* %arrayidx28, align 4
  br label %sw.epilog.36

sw.bb.29:                                         ; preds = %sw.epilog
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 0
  %intval32 = bitcast %union.v* %value31 to i64*
  %21 = load i64, i64* %intval32, align 8
  %conv33 = sitofp i64 %21 to float
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 0
  store float %conv33, float* %arrayidx34, align 4
  br label %sw.epilog.36

sw.default.35:                                    ; preds = %sw.epilog
  store i32 -20, i32* %retval
  br label %return

sw.epilog.36:                                     ; preds = %sw.bb.29, %sw.bb.24
  %22 = load i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)*, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)** %ptproc.addr, align 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx37 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 0
  %24 = load float, float* %arrayidx37, align 4
  %conv38 = fpext float %24 to double
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %opxy, i32 0, i64 1
  %25 = load float, float* %arrayidx39, align 4
  %conv40 = fpext float %25 to double
  %call41 = call i32 %22(%struct.gs_state_s* %23, double %conv38, double %conv40, %struct.gs_point_s* %pt)
  store i32 %call41, i32* %code, align 4
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.epilog.36
  %26 = load i32, i32* %code, align 4
  store i32 %26, i32* %retval
  br label %return

if.end.45:                                        ; preds = %sw.epilog.36
  br label %out

out:                                              ; preds = %if.end.45, %if.end
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %27 = load float, float* %x, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %realval48 = bitcast %union.v* %value47 to float*
  store float %27, float* %realval48, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %type_attrs50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr49, i32 0, i32 1
  store i16 44, i16* %type_attrs50, align 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %30 = load float, float* %y, align 4
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %realval52 = bitcast %union.v* %value51 to float*
  store float %30, float* %realval52, align 4
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 44, i16* %type_attrs53, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then.44, %sw.default.35, %sw.default, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @gs_transform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

declare i32 @gs_point_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zdtransform(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_transform(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_dtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_distance_transform)
  ret i32 %call
}

declare i32 @gs_dtransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

declare i32 @gs_distance_transform(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zitransform(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_transform(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_itransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_point_transform_inverse)
  ret i32 %call
}

declare i32 @gs_itransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

declare i32 @gs_point_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zidtransform(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @common_transform(%struct.ref_s* %0, i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*)* @gs_idtransform, i32 (double, double, %struct.gs_matrix_s*, %struct.gs_point_s*)* @gs_distance_transform_inverse)
  ret i32 %call
}

declare i32 @gs_idtransform(%struct.gs_state_s*, double, double, %struct.gs_point_s*) #1

declare i32 @gs_distance_transform_inverse(double, double, %struct.gs_matrix_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zinvertmatrix(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %m = alloca %struct.gs_matrix_s, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr, %struct.gs_matrix_s* %m)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call1 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %1)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %3 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %4 = bitcast %struct.ref_s* %3 to %struct.gs_matrix_s*
  %call4 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* %m, %struct.gs_matrix_s* %4)
  store i32 %call4, i32* %code, align 4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %8 = bitcast %struct.ref_s* %arrayidx to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_matrix_invert(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind uwtable
define void @zmatrix_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zmatrix_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
