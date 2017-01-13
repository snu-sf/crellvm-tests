; ModuleID = './libgimp/gimpcolor_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [25 x i8] c"gimp-brightness-contrast\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gimp-levels\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"gimp-levels-auto\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gimp-levels-stretch\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp-posterize\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gimp-desaturate\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gimp-desaturate-full\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"gimp-equalize\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gimp-invert\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"gimp-curves-spline\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"gimp-curves-explicit\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"gimp-color-balance\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"gimp-colorize\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp-hue-saturation\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"gimp-threshold\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_brightness_contrast(i32 %drawable_ID, i32 %brightness, i32 %contrast) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %brightness.addr = alloca i32, align 4
  %contrast.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %brightness, i32* %brightness.addr, align 4
  store i32 %contrast, i32* %contrast.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %brightness.addr, align 4
  %2 = load i32, i32* %contrast.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_levels(i32 %drawable_ID, i32 %channel, i32 %low_input, i32 %high_input, double %gamma, i32 %low_output, i32 %high_output) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %low_input.addr = alloca i32, align 4
  %high_input.addr = alloca i32, align 4
  %gamma.addr = alloca double, align 8
  %low_output.addr = alloca i32, align 4
  %high_output.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %low_input, i32* %low_input.addr, align 4
  store i32 %high_input, i32* %high_input.addr, align 4
  store double %gamma, double* %gamma.addr, align 8
  store i32 %low_output, i32* %low_output.addr, align 4
  store i32 %high_output, i32* %high_output.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %channel.addr, align 4
  %2 = load i32, i32* %low_input.addr, align 4
  %3 = load i32, i32* %high_input.addr, align 4
  %4 = load double, double* %gamma.addr, align 8
  %5 = load i32, i32* %low_output.addr, align 4
  %6 = load i32, i32* %high_output.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 3, double %4, i32 0, i32 %5, i32 0, i32 %6, i32 22)
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
define i32 @gimp_levels_auto(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_levels_stretch(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_posterize(i32 %drawable_ID, i32 %levels) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %levels.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %levels, i32* %levels.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %levels.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_desaturate(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_desaturate_full(i32 %drawable_ID, i32 %desaturate_mode) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %desaturate_mode.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %desaturate_mode, i32* %desaturate_mode.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %desaturate_mode.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_equalize(i32 %drawable_ID, i32 %mask_only) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %mask_only.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %mask_only, i32* %mask_only.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %mask_only.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_invert(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %4 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %3, i32 %4)
  %5 = load i32, i32* %success, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curves_spline(i32 %drawable_ID, i32 %channel, i32 %num_points, i8* %control_pts) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %num_points.addr = alloca i32, align 4
  %control_pts.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %num_points, i32* %num_points.addr, align 4
  store i8* %control_pts, i8** %control_pts.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %channel.addr, align 4
  %2 = load i32, i32* %num_points.addr, align 4
  %3 = load i8*, i8** %control_pts.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 7, i8* %3, i32 22)
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
define i32 @gimp_curves_explicit(i32 %drawable_ID, i32 %channel, i32 %num_bytes, i8* %curve) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %num_bytes.addr = alloca i32, align 4
  %curve.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  store i8* %curve, i8** %curve.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %channel.addr, align 4
  %2 = load i32, i32* %num_bytes.addr, align 4
  %3 = load i8*, i8** %curve.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 7, i8* %3, i32 22)
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
define i32 @gimp_color_balance(i32 %drawable_ID, i32 %transfer_mode, i32 %preserve_lum, double %cyan_red, double %magenta_green, double %yellow_blue) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %transfer_mode.addr = alloca i32, align 4
  %preserve_lum.addr = alloca i32, align 4
  %cyan_red.addr = alloca double, align 8
  %magenta_green.addr = alloca double, align 8
  %yellow_blue.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %transfer_mode, i32* %transfer_mode.addr, align 4
  store i32 %preserve_lum, i32* %preserve_lum.addr, align 4
  store double %cyan_red, double* %cyan_red.addr, align 8
  store double %magenta_green, double* %magenta_green.addr, align 8
  store double %yellow_blue, double* %yellow_blue.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %transfer_mode.addr, align 4
  %2 = load i32, i32* %preserve_lum.addr, align 4
  %3 = load double, double* %cyan_red.addr, align 8
  %4 = load double, double* %magenta_green.addr, align 8
  %5 = load double, double* %yellow_blue.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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
define i32 @gimp_colorize(i32 %drawable_ID, double %hue, double %saturation, double %lightness) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %hue.addr = alloca double, align 8
  %saturation.addr = alloca double, align 8
  %lightness.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %hue, double* %hue.addr, align 8
  store double %saturation, double* %saturation.addr, align 8
  store double %lightness, double* %lightness.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load double, double* %hue.addr, align 8
  %2 = load double, double* %saturation.addr, align 8
  %3 = load double, double* %lightness.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 3, double %1, i32 3, double %2, i32 3, double %3, i32 22)
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
define i32 @gimp_histogram(i32 %drawable_ID, i32 %channel, i32 %start_range, i32 %end_range, double* %mean, double* %std_dev, double* %median, double* %pixels, double* %count, double* %percentile) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %start_range.addr = alloca i32, align 4
  %end_range.addr = alloca i32, align 4
  %mean.addr = alloca double*, align 8
  %std_dev.addr = alloca double*, align 8
  %median.addr = alloca double*, align 8
  %pixels.addr = alloca double*, align 8
  %count.addr = alloca double*, align 8
  %percentile.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %start_range, i32* %start_range.addr, align 4
  store i32 %end_range, i32* %end_range.addr, align 4
  store double* %mean, double** %mean.addr, align 8
  store double* %std_dev, double** %std_dev.addr, align 8
  store double* %median, double** %median.addr, align 8
  store double* %pixels, double** %pixels.addr, align 8
  store double* %count, double** %count.addr, align 8
  store double* %percentile, double** %percentile.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %channel.addr, align 4
  %2 = load i32, i32* %start_range.addr, align 4
  %3 = load i32, i32* %end_range.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load double*, double** %mean.addr, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %std_dev.addr, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = load double*, double** %median.addr, align 8
  store double 0.000000e+00, double* %6, align 8
  %7 = load double*, double** %pixels.addr, align 8
  store double 0.000000e+00, double* %7, align 8
  %8 = load double*, double** %count.addr, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load double*, double** %percentile.addr, align 8
  store double 0.000000e+00, double* %9, align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %11 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %11, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %12 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %14 = load double, double* %d_float, align 8
  %15 = load double*, double** %mean.addr, align 8
  store double %14, double* %15, align 8
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float5 = bitcast %union._GimpParamData* %data4 to double*
  %17 = load double, double* %d_float5, align 8
  %18 = load double*, double** %std_dev.addr, align 8
  store double %17, double* %18, align 8
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_float8 = bitcast %union._GimpParamData* %data7 to double*
  %20 = load double, double* %d_float8, align 8
  %21 = load double*, double** %median.addr, align 8
  store double %20, double* %21, align 8
  %22 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_float11 = bitcast %union._GimpParamData* %data10 to double*
  %23 = load double, double* %d_float11, align 8
  %24 = load double*, double** %pixels.addr, align 8
  store double %23, double* %24, align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 5
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_float14 = bitcast %union._GimpParamData* %data13 to double*
  %26 = load double, double* %d_float14, align 8
  %27 = load double*, double** %count.addr, align 8
  store double %26, double* %27, align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 6
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_float17 = bitcast %union._GimpParamData* %data16 to double*
  %29 = load double, double* %d_float17, align 8
  %30 = load double*, double** %percentile.addr, align 8
  store double %29, double* %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %32 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %31, i32 %32)
  %33 = load i32, i32* %success, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @gimp_hue_saturation(i32 %drawable_ID, i32 %hue_range, double %hue_offset, double %lightness, double %saturation) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %hue_range.addr = alloca i32, align 4
  %hue_offset.addr = alloca double, align 8
  %lightness.addr = alloca double, align 8
  %saturation.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %hue_range, i32* %hue_range.addr, align 4
  store double %hue_offset, double* %hue_offset.addr, align 8
  store double %lightness, double* %lightness.addr, align 8
  store double %saturation, double* %saturation.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %hue_range.addr, align 4
  %2 = load double, double* %hue_offset.addr, align 8
  %3 = load double, double* %lightness.addr, align 8
  %4 = load double, double* %saturation.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 22)
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
define i32 @gimp_threshold(i32 %drawable_ID, i32 %low_threshold, i32 %high_threshold) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %low_threshold.addr = alloca i32, align 4
  %high_threshold.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %low_threshold, i32* %low_threshold.addr, align 4
  store i32 %high_threshold, i32* %high_threshold.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %low_threshold.addr, align 4
  %2 = load i32, i32* %high_threshold.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
