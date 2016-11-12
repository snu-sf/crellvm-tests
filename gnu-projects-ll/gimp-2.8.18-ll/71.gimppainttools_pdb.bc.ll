; ModuleID = './libgimp/gimppainttools_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [14 x i8] c"gimp-airbrush\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-airbrush-default\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gimp-clone\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimp-clone-default\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gimp-convolve\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gimp-convolve-default\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-dodgeburn\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"gimp-dodgeburn-default\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gimp-eraser\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"gimp-eraser-default\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"gimp-heal\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"gimp-heal-default\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"gimp-paintbrush-default\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"gimp-pencil\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gimp-smudge\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp-smudge-default\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_airbrush(i32 %drawable_ID, double %pressure, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %pressure.addr = alloca double, align 8
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %pressure, double* %pressure.addr, align 8
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %pressure.addr, align 8
  %2 = load i32, i32* %num_strokes.addr, align 4
  %3 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 8, double* %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %success, align 4
  ret i32 %8
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_airbrush_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_clone(i32 %drawable_ID, i32 %src_drawable_ID, i32 %clone_type, double %src_x, double %src_y, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %src_drawable_ID.addr = alloca i32, align 4
  %clone_type.addr = alloca i32, align 4
  %src_x.addr = alloca double, align 8
  %src_y.addr = alloca double, align 8
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %src_drawable_ID, i32* %src_drawable_ID.addr, align 4
  store i32 %clone_type, i32* %clone_type.addr, align 4
  store double %src_x, double* %src_x.addr, align 8
  store double %src_y, double* %src_y.addr, align 8
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %src_drawable_ID.addr, align 4
  %2 = load i32, i32* %clone_type.addr, align 4
  %3 = load double, double* %src_x.addr, align 8
  %4 = load double, double* %src_y.addr, align 8
  %5 = load i32, i32* %num_strokes.addr, align 4
  %6 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 16, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 3, double %4, i32 0, i32 %5, i32 8, double* %6, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %8 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %8, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_clone_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_convolve(i32 %drawable_ID, double %pressure, i32 %convolve_type, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %pressure.addr = alloca double, align 8
  %convolve_type.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %pressure, double* %pressure.addr, align 8
  store i32 %convolve_type, i32* %convolve_type.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %pressure.addr, align 8
  %2 = load i32, i32* %convolve_type.addr, align 4
  %3 = load i32, i32* %num_strokes.addr, align 4
  %4 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 0, i32 %3, i32 8, double* %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_convolve_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dodgeburn(i32 %drawable_ID, double %exposure, i32 %dodgeburn_type, i32 %dodgeburn_mode, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %exposure.addr = alloca double, align 8
  %dodgeburn_type.addr = alloca i32, align 4
  %dodgeburn_mode.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %exposure, double* %exposure.addr, align 8
  store i32 %dodgeburn_type, i32* %dodgeburn_type.addr, align 4
  store i32 %dodgeburn_mode, i32* %dodgeburn_mode.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %exposure.addr, align 8
  %2 = load i32, i32* %dodgeburn_type.addr, align 4
  %3 = load i32, i32* %dodgeburn_mode.addr, align 4
  %4 = load i32, i32* %num_strokes.addr, align 4
  %5 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 8, double* %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dodgeburn_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_eraser(i32 %drawable_ID, i32 %num_strokes, double* %strokes, i32 %hardness, i32 %method) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %hardness.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 %hardness, i32* %hardness.addr, align 4
  store i32 %method, i32* %method.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %3 = load i32, i32* %hardness.addr, align 4
  %4 = load i32, i32* %method.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %success, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_eraser_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_heal(i32 %drawable_ID, i32 %src_drawable_ID, double %src_x, double %src_y, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %src_drawable_ID.addr = alloca i32, align 4
  %src_x.addr = alloca double, align 8
  %src_y.addr = alloca double, align 8
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %src_drawable_ID, i32* %src_drawable_ID.addr, align 4
  store double %src_x, double* %src_x.addr, align 8
  store double %src_y, double* %src_y.addr, align 8
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %src_drawable_ID.addr, align 4
  %2 = load double, double* %src_x.addr, align 8
  %3 = load double, double* %src_y.addr, align 8
  %4 = load i32, i32* %num_strokes.addr, align 4
  %5 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 16, i32 %1, i32 3, double %2, i32 3, double %3, i32 0, i32 %4, i32 8, double* %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_heal_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_paintbrush(i32 %drawable_ID, double %fade_out, i32 %num_strokes, double* %strokes, i32 %method, double %gradient_length) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %fade_out.addr = alloca double, align 8
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %method.addr = alloca i32, align 4
  %gradient_length.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %fade_out, double* %fade_out.addr, align 8
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store double %gradient_length, double* %gradient_length.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %fade_out.addr, align 8
  %2 = load i32, i32* %num_strokes.addr, align 4
  %3 = load double*, double** %strokes.addr, align 8
  %4 = load i32, i32* %method.addr, align 4
  %5 = load double, double* %gradient_length.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 8, double* %3, i32 0, i32 %4, i32 3, double %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @gimp_paintbrush_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_pencil(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_smudge(i32 %drawable_ID, double %pressure, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %pressure.addr = alloca double, align 8
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %pressure, double* %pressure.addr, align 8
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %pressure.addr, align 8
  %2 = load i32, i32* %num_strokes.addr, align 4
  %3 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 0, i32 %2, i32 8, double* %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %success, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_smudge_default(i32 %drawable_ID, i32 %num_strokes, double* %strokes) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32, align 4
  %strokes.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %num_strokes, i32* %num_strokes.addr, align 4
  store double* %strokes, double** %strokes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %num_strokes.addr, align 4
  %2 = load double*, double** %strokes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 8, double* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
