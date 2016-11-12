; ModuleID = './libgimp/gimpchannel_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }

@.str = private unnamed_addr constant [17 x i8] c"gimp-channel-new\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"gimp-channel-new-from-component\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gimp-channel-copy\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gimp-channel-combine-masks\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gimp-channel-get-show-masked\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"gimp-channel-set-show-masked\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"gimp-channel-get-opacity\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gimp-channel-set-opacity\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"gimp-channel-get-color\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gimp-channel-set-color\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_channel_new(i32 %image_ID, i32 %width, i32 %height, i8* %name, double %opacity, %struct._GimpRGB* %color) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 -1, i32* %channel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load double, double* %opacity.addr, align 8
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 4, i8* %3, i32 3, double %4, i32 10, %struct._GimpRGB* %5, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_channel = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_channel, align 4
  store i32 %9, i32* %channel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %channel_ID, align 4
  ret i32 %12
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_new_from_component(i32 %image_ID, i32 %component, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 -1, i32* %channel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %component.addr, align 4
  %2 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 4, i8* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %4 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_channel = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_channel, align 4
  store i32 %6, i32* %channel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %channel_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_copy(i32 %channel_ID) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_copy_ID = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 -1, i32* %channel_copy_ID, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 22)
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
  %d_channel = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_channel, align 4
  store i32 %4, i32* %channel_copy_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %channel_copy_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_combine_masks(i32 %channel1_ID, i32 %channel2_ID, i32 %operation, i32 %offx, i32 %offy) #0 {
entry:
  %channel1_ID.addr = alloca i32, align 4
  %channel2_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %offx.addr = alloca i32, align 4
  %offy.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %channel1_ID, i32* %channel1_ID.addr, align 4
  store i32 %channel2_ID, i32* %channel2_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %offx, i32* %offx.addr, align 4
  store i32 %offy, i32* %offy.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %channel1_ID.addr, align 4
  %1 = load i32, i32* %channel2_ID.addr, align 4
  %2 = load i32, i32* %operation.addr, align 4
  %3 = load i32, i32* %offx.addr, align 4
  %4 = load i32, i32* %offy.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 15, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
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
define i32 @gimp_channel_get_show_masked(i32 %channel_ID) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %show_masked = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 0, i32* %show_masked, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 22)
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
  store i32 %4, i32* %show_masked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %show_masked, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_set_show_masked(i32 %channel_ID, i32 %show_masked) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %show_masked.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 %show_masked, i32* %show_masked.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %1 = load i32, i32* %show_masked.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 0, i32 %1, i32 22)
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
define double @gimp_channel_get_opacity(i32 %channel_ID) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %opacity = alloca double, align 8
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store double 0.000000e+00, double* %opacity, align 8
  %0 = load i32, i32* %channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %4 = load double, double* %d_float, align 8
  store double %4, double* %opacity, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load double, double* %opacity, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_set_opacity(i32 %channel_ID, double %opacity) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %1 = load double, double* %opacity.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 3, double %1, i32 22)
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
define i32 @gimp_channel_get_color(i32 %channel_ID, %struct._GimpRGB* %color) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %1, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %2 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %2, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %3 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  %7 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_set_color(i32 %channel_ID, %struct._GimpRGB* %color) #0 {
entry:
  %channel_ID.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %channel_ID.addr, align 4
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 15, i32 %0, i32 10, %struct._GimpRGB* %1, i32 22)
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
