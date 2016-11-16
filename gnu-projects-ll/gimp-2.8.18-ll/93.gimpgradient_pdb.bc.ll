; ModuleID = './libgimp/gimpgradient_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [18 x i8] c"gimp-gradient-new\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-gradient-duplicate\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gimp-gradient-is-editable\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-gradient-rename\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"gimp-gradient-delete\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"gimp-gradient-get-number-of-segments\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"gimp-gradient-get-uniform-samples\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"gimp-gradient-get-custom-samples\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-get-left-color\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-set-left-color\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-get-right-color\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-set-right-color\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-get-left-pos\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-set-left-pos\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-get-middle-pos\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"gimp-gradient-segment-set-middle-pos\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"gimp-gradient-segment-get-right-pos\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"gimp-gradient-segment-set-right-pos\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"gimp-gradient-segment-get-blending-function\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"gimp-gradient-segment-get-coloring-type\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"gimp-gradient-segment-range-set-blending-function\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"gimp-gradient-segment-range-set-coloring-type\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"gimp-gradient-segment-range-flip\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"gimp-gradient-segment-range-replicate\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"gimp-gradient-segment-range-split-midpoint\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"gimp-gradient-segment-range-split-uniform\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"gimp-gradient-segment-range-delete\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"gimp-gradient-segment-range-redistribute-handles\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"gimp-gradient-segment-range-blend-colors\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"gimp-gradient-segment-range-blend-opacity\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"gimp-gradient-segment-range-move\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_gradient_new(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* null, i8** %actual_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %actual_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %actual_name, align 8
  ret i8* %7
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_gradient_duplicate(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %copy_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* null, i8** %copy_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call3, i8** %copy_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %copy_name, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_is_editable(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %editable = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %editable, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %editable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %editable, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_gradient_rename(i8* %name, i8* %new_name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %new_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* null, i8** %actual_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %new_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %5 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call3, i8** %actual_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %actual_name, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_delete(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_gradient_get_number_of_segments(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %num_segments = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %num_segments, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_int32, align 4
  store i32 %4, i32* %num_segments, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %num_segments, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_get_uniform_samples(i8* %name, i32 %num_samples, i32 %reverse, i32* %num_color_samples, double** %color_samples) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num_samples.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %num_color_samples.addr = alloca i32*, align 8
  %color_samples.addr = alloca double**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %num_samples, i32* %num_samples.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32* %num_color_samples, i32** %num_color_samples.addr, align 8
  store double** %color_samples, double*** %color_samples.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %num_samples.addr, align 4
  %2 = load i32, i32* %reverse.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %num_color_samples.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load double**, double*** %color_samples.addr, align 8
  store double* null, double** %4, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %7 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_int32, align 4
  %10 = load i32*, i32** %num_color_samples.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %num_color_samples.addr, align 8
  %12 = load i32, i32* %11, align 4
  %conv3 = sext i32 %12 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %13 = bitcast i8* %call4 to double*
  %14 = load double**, double*** %color_samples.addr, align 8
  store double* %13, double** %14, align 8
  %15 = load double**, double*** %color_samples.addr, align 8
  %16 = load double*, double** %15, align 8
  %17 = bitcast double* %16 to i8*
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data6 to double**
  %19 = load double*, double** %d_floatarray, align 8
  %20 = bitcast double* %19 to i8*
  %21 = load i32*, i32** %num_color_samples.addr, align 8
  %22 = load i32, i32* %21, align 4
  %conv7 = sext i32 %22 to i64
  %mul = mul i64 %conv7, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %20, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %24 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %23, i32 %24)
  %25 = load i32, i32* %success, align 4
  ret i32 %25
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_get_custom_samples(i8* %name, i32 %num_samples, double* %positions, i32 %reverse, i32* %num_color_samples, double** %color_samples) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num_samples.addr = alloca i32, align 4
  %positions.addr = alloca double*, align 8
  %reverse.addr = alloca i32, align 4
  %num_color_samples.addr = alloca i32*, align 8
  %color_samples.addr = alloca double**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %num_samples, i32* %num_samples.addr, align 4
  store double* %positions, double** %positions.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32* %num_color_samples, i32** %num_color_samples.addr, align 8
  store double** %color_samples, double*** %color_samples.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %num_samples.addr, align 4
  %2 = load double*, double** %positions.addr, align 8
  %3 = load i32, i32* %reverse.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 8, double* %2, i32 0, i32 %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load i32*, i32** %num_color_samples.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load double**, double*** %color_samples.addr, align 8
  store double* null, double** %5, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %10 = load i32, i32* %d_int32, align 4
  %11 = load i32*, i32** %num_color_samples.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %num_color_samples.addr, align 8
  %13 = load i32, i32* %12, align 4
  %conv3 = sext i32 %13 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 8)
  %14 = bitcast i8* %call4 to double*
  %15 = load double**, double*** %color_samples.addr, align 8
  store double* %14, double** %15, align 8
  %16 = load double**, double*** %color_samples.addr, align 8
  %17 = load double*, double** %16, align 8
  %18 = bitcast double* %17 to i8*
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data6 to double**
  %20 = load double*, double** %d_floatarray, align 8
  %21 = bitcast double* %20 to i8*
  %22 = load i32*, i32** %num_color_samples.addr, align 8
  %23 = load i32, i32* %22, align 4
  %conv7 = sext i32 %23 to i64
  %mul = mul i64 %conv7, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %21, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %25 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %24, i32 %25)
  %26 = load i32, i32* %success, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_left_color(i8* %name, i32 %segment, %struct._GimpRGB* %color, double* %opacity) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %opacity.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store double* %opacity, double** %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load double*, double** %opacity.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %8 = bitcast %struct._GimpRGB* %6 to i8*
  %9 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data4 to double*
  %11 = load double, double* %d_float, align 8
  %12 = load double*, double** %opacity.addr, align 8
  store double %11, double* %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %14 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %13, i32 %14)
  %15 = load i32, i32* %success, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_set_left_color(i8* %name, i32 %segment, %struct._GimpRGB* %color, double %opacity) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %opacity.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %3 = load double, double* %opacity.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 10, %struct._GimpRGB* %2, i32 3, double %3, i32 22)
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
define i32 @gimp_gradient_segment_get_right_color(i8* %name, i32 %segment, %struct._GimpRGB* %color, double* %opacity) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %opacity.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store double* %opacity, double** %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load double*, double** %opacity.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %8 = bitcast %struct._GimpRGB* %6 to i8*
  %9 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data4 to double*
  %11 = load double, double* %d_float, align 8
  %12 = load double*, double** %opacity.addr, align 8
  store double %11, double* %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %14 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %13, i32 %14)
  %15 = load i32, i32* %success, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_set_right_color(i8* %name, i32 %segment, %struct._GimpRGB* %color, double %opacity) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %opacity.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %3 = load double, double* %opacity.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 10, %struct._GimpRGB* %2, i32 3, double %3, i32 22)
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
define i32 @gimp_gradient_segment_get_left_pos(i8* %name, i32 %segment, double* %pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double* %pos, double** %pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load double*, double** %pos.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %7 = load double, double* %d_float, align 8
  %8 = load double*, double** %pos.addr, align 8
  store double %7, double* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_set_left_pos(i8* %name, i32 %segment, double %pos, double* %final_pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double, align 8
  %final_pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double %pos, double* %pos.addr, align 8
  store double* %final_pos, double** %final_pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %2 = load double, double* %pos.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 3, double %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load double*, double** %final_pos.addr, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %8 = load double, double* %d_float, align 8
  %9 = load double*, double** %final_pos.addr, align 8
  store double %8, double* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_middle_pos(i8* %name, i32 %segment, double* %pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double* %pos, double** %pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load double*, double** %pos.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %7 = load double, double* %d_float, align 8
  %8 = load double*, double** %pos.addr, align 8
  store double %7, double* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_set_middle_pos(i8* %name, i32 %segment, double %pos, double* %final_pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double, align 8
  %final_pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double %pos, double* %pos.addr, align 8
  store double* %final_pos, double** %final_pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %2 = load double, double* %pos.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 3, double %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load double*, double** %final_pos.addr, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %8 = load double, double* %d_float, align 8
  %9 = load double*, double** %final_pos.addr, align 8
  store double %8, double* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_right_pos(i8* %name, i32 %segment, double* %pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double* %pos, double** %pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load double*, double** %pos.addr, align 8
  store double 0.000000e+00, double* %2, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %7 = load double, double* %d_float, align 8
  %8 = load double*, double** %pos.addr, align 8
  store double %7, double* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_set_right_pos(i8* %name, i32 %segment, double %pos, double* %final_pos) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %pos.addr = alloca double, align 8
  %final_pos.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store double %pos, double* %pos.addr, align 8
  store double* %final_pos, double** %final_pos.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %2 = load double, double* %pos.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 3, double %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load double*, double** %final_pos.addr, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %8 = load double, double* %d_float, align 8
  %9 = load double*, double** %final_pos.addr, align 8
  store double %8, double* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_blending_function(i8* %name, i32 %segment, i32* %blend_func) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %blend_func.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store i32* %blend_func, i32** %blend_func.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %blend_func.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %7 = load i32, i32* %d_int32, align 4
  %8 = load i32*, i32** %blend_func.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_coloring_type(i8* %name, i32 %segment, i32* %coloring_type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %segment.addr = alloca i32, align 4
  %coloring_type.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %segment, i32* %segment.addr, align 4
  store i32* %coloring_type, i32** %coloring_type.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %coloring_type.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %5 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %7 = load i32, i32* %d_int32, align 4
  %8 = load i32*, i32** %coloring_type.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_range_set_blending_function(i8* %name, i32 %start_segment, i32 %end_segment, i32 %blending_function) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %blending_function.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 %blending_function, i32* %blending_function.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %3 = load i32, i32* %blending_function.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_gradient_segment_range_set_coloring_type(i8* %name, i32 %start_segment, i32 %end_segment, i32 %coloring_type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %coloring_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 %coloring_type, i32* %coloring_type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %3 = load i32, i32* %coloring_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_gradient_segment_range_flip(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_gradient_segment_range_replicate(i8* %name, i32 %start_segment, i32 %end_segment, i32 %replicate_times) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %replicate_times.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 %replicate_times, i32* %replicate_times.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %3 = load i32, i32* %replicate_times.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_gradient_segment_range_split_midpoint(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_gradient_segment_range_split_uniform(i8* %name, i32 %start_segment, i32 %end_segment, i32 %split_parts) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %split_parts.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 %split_parts, i32* %split_parts.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %3 = load i32, i32* %split_parts.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_gradient_segment_range_delete(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_gradient_segment_range_redistribute_handles(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_gradient_segment_range_blend_colors(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_gradient_segment_range_blend_opacity(i8* %name, i32 %start_segment, i32 %end_segment) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define double @gimp_gradient_segment_range_move(i8* %name, i32 %start_segment, i32 %end_segment, double %delta, i32 %control_compress) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %start_segment.addr = alloca i32, align 4
  %end_segment.addr = alloca i32, align 4
  %delta.addr = alloca double, align 8
  %control_compress.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %final_delta = alloca double, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %start_segment, i32* %start_segment.addr, align 4
  store i32 %end_segment, i32* %end_segment.addr, align 4
  store double %delta, double* %delta.addr, align 8
  store i32 %control_compress, i32* %control_compress.addr, align 4
  store double 0.000000e+00, double* %final_delta, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %start_segment.addr, align 4
  %2 = load i32, i32* %end_segment.addr, align 4
  %3 = load double, double* %delta.addr, align 8
  %4 = load i32, i32* %control_compress.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 0, i32 %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %8 = load double, double* %d_float, align 8
  store double %8, double* %final_delta, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load double, double* %final_delta, align 8
  ret double %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
