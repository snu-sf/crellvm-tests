; ModuleID = './libgimp/gimpdrawable_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [19 x i8] c"gimp-drawable-type\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"gimp-drawable-type-with-alpha\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gimp-drawable-has-alpha\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-drawable-is-rgb\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"gimp-drawable-is-gray\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"gimp-drawable-is-indexed\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gimp-drawable-bpp\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"gimp-drawable-width\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"gimp-drawable-height\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"gimp-drawable-offsets\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gimp-drawable-set-image\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"gimp-drawable-mask-bounds\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"gimp-drawable-mask-intersect\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"gimp-drawable-merge-shadow\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"gimp-drawable-free-shadow\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"gimp-drawable-update\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gimp-drawable-get-pixel\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"gimp-drawable-set-pixel\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"gimp-drawable-fill\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"gimp-drawable-offset\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"gimp-drawable-thumbnail\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"gimp-drawable-sub-thumbnail\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"gimp-drawable-foreground-extract\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_type(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %type, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %type, align 4
  ret i32 %7
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_type_with_alpha(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %type_with_alpha = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %type_with_alpha, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %type_with_alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %type_with_alpha, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_has_alpha(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %has_alpha, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %has_alpha, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %has_alpha, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_rgb(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %is_rgb = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %is_rgb, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %is_rgb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %is_rgb, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_gray(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %is_gray = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %is_gray, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %is_gray, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %is_gray, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_indexed(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %is_indexed = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %is_indexed, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %is_indexed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %is_indexed, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_bpp(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %bpp = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %bpp, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %bpp, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_width(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %width = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %width, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %width, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_height(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %height = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 0, i32* %height, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %height, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_offsets(i32 %drawable_ID, i32* %offset_x, i32* %offset_y) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %offset_x.addr = alloca i32*, align 8
  %offset_y.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32* %offset_x, i32** %offset_x.addr, align 8
  store i32* %offset_y, i32** %offset_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %offset_x.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** %offset_y.addr, align 8
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
  %8 = load i32*, i32** %offset_x.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %10 = load i32, i32* %d_int325, align 4
  %11 = load i32*, i32** %offset_y.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %13 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %12, i32 %13)
  %14 = load i32, i32* %success, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_image(i32 %drawable_ID, i32 %image_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 13, i32 %1, i32 22)
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
define i32 @gimp_drawable_mask_bounds(i32 %drawable_ID, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %non_empty, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %6 = load i32, i32* %d_int325, align 4
  %7 = load i32*, i32** %x1.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %9 = load i32, i32* %d_int328, align 4
  %10 = load i32*, i32** %y1.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %12 = load i32, i32* %d_int3211, align 4
  %13 = load i32*, i32** %x2.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %15 = load i32, i32* %d_int3214, align 4
  %16 = load i32*, i32** %y2.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32, i32* %non_empty, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_mask_intersect(i32 %drawable_ID, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %non_empty = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32 0, i32* %non_empty, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
  store i32 %4, i32* %non_empty, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %6 = load i32, i32* %d_int325, align 4
  %7 = load i32*, i32** %x.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %9 = load i32, i32* %d_int328, align 4
  %10 = load i32*, i32** %y.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %12 = load i32, i32* %d_int3211, align 4
  %13 = load i32*, i32** %width.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 5
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %15 = load i32, i32* %d_int3214, align 4
  %16 = load i32*, i32** %height.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32, i32* %non_empty, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_merge_shadow(i32 %drawable_ID, i32 %undo) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %undo.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %undo, i32* %undo.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %undo.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_drawable_free_shadow(i32 %drawable_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 22)
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
define i32 @gimp_drawable_update(i32 %drawable_ID, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
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
define i8* @gimp_drawable_get_pixel(i32 %drawable_ID, i32 %x_coord, i32 %y_coord, i32* %num_channels) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %x_coord.addr = alloca i32, align 4
  %y_coord.addr = alloca i32, align 4
  %num_channels.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %pixel = alloca i8*, align 8
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %x_coord, i32* %x_coord.addr, align 4
  store i32 %y_coord, i32* %y_coord.addr, align 4
  store i32* %num_channels, i32** %num_channels.addr, align 8
  store i8* null, i8** %pixel, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %x_coord.addr, align 4
  %2 = load i32, i32* %y_coord.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %num_channels.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %7 = load i32, i32* %d_int32, align 4
  %8 = load i32*, i32** %num_channels.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %num_channels.addr, align 8
  %10 = load i32, i32* %9, align 4
  %conv = sext i32 %10 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %pixel, align 8
  %11 = load i8*, i8** %pixel, align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data5 to i8**
  %13 = load i8*, i8** %d_int8array, align 8
  %14 = load i32*, i32** %num_channels.addr, align 8
  %15 = load i32, i32* %14, align 4
  %conv6 = sext i32 %15 to i64
  %mul = mul i64 %conv6, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %13, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %17 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %16, i32 %17)
  %18 = load i8*, i8** %pixel, align 8
  ret i8* %18
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_set_pixel(i32 %drawable_ID, i32 %x_coord, i32 %y_coord, i32 %num_channels, i8* %pixel) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %x_coord.addr = alloca i32, align 4
  %y_coord.addr = alloca i32, align 4
  %num_channels.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %x_coord, i32* %x_coord.addr, align 4
  store i32 %y_coord, i32* %y_coord.addr, align 4
  store i32 %num_channels, i32* %num_channels.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %x_coord.addr, align 4
  %2 = load i32, i32* %y_coord.addr, align 4
  %3 = load i32, i32* %num_channels.addr, align 4
  %4 = load i8*, i8** %pixel.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 7, i8* %4, i32 22)
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
define i32 @gimp_drawable_fill(i32 %drawable_ID, i32 %fill_type) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %fill_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %fill_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_drawable_offset(i32 %drawable_ID, i32 %wrap_around, i32 %fill_type, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %wrap_around.addr = alloca i32, align 4
  %fill_type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %wrap_around, i32* %wrap_around.addr, align 4
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %wrap_around.addr, align 4
  %2 = load i32, i32* %fill_type.addr, align 4
  %3 = load i32, i32* %offset_x.addr, align 4
  %4 = load i32, i32* %offset_y.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
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
define hidden i32 @_gimp_drawable_thumbnail(i32 %drawable_ID, i32 %width, i32 %height, i32* %actual_width, i32* %actual_height, i32* %bpp, i32* %thumbnail_data_count, i8** %thumbnail_data) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %actual_width.addr = alloca i32*, align 8
  %actual_height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %thumbnail_data_count.addr = alloca i32*, align 8
  %thumbnail_data.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32* %actual_width, i32** %actual_width.addr, align 8
  store i32* %actual_height, i32** %actual_height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  store i32* %thumbnail_data_count, i32** %thumbnail_data_count.addr, align 8
  store i8** %thumbnail_data, i8*** %thumbnail_data.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %actual_width.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %actual_height.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %bpp.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %thumbnail_data_count.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %thumbnail_data.addr, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %9 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %10 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %12 = load i32, i32* %d_int32, align 4
  %13 = load i32*, i32** %actual_width.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %15 = load i32, i32* %d_int325, align 4
  %16 = load i32*, i32** %actual_height.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %18 = load i32, i32* %d_int328, align 4
  %19 = load i32*, i32** %bpp.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %21 = load i32, i32* %d_int3211, align 4
  %22 = load i32*, i32** %thumbnail_data_count.addr, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %thumbnail_data_count.addr, align 8
  %24 = load i32, i32* %23, align 4
  %conv12 = sext i32 %24 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  %25 = load i8**, i8*** %thumbnail_data.addr, align 8
  store i8* %call13, i8** %25, align 8
  %26 = load i8**, i8*** %thumbnail_data.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 5
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data15 to i8**
  %29 = load i8*, i8** %d_int8array, align 8
  %30 = load i32*, i32** %thumbnail_data_count.addr, align 8
  %31 = load i32, i32* %30, align 4
  %conv16 = sext i32 %31 to i64
  %mul = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %29, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %33 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %32, i32 %33)
  %34 = load i32, i32* %success, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_drawable_sub_thumbnail(i32 %drawable_ID, i32 %src_x, i32 %src_y, i32 %src_width, i32 %src_height, i32 %dest_width, i32 %dest_height, i32* %width, i32* %height, i32* %bpp, i32* %thumbnail_data_count, i8** %thumbnail_data) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %src_x.addr = alloca i32, align 4
  %src_y.addr = alloca i32, align 4
  %src_width.addr = alloca i32, align 4
  %src_height.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %thumbnail_data_count.addr = alloca i32*, align 8
  %thumbnail_data.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %src_x, i32* %src_x.addr, align 4
  store i32 %src_y, i32* %src_y.addr, align 4
  store i32 %src_width, i32* %src_width.addr, align 4
  store i32 %src_height, i32* %src_height.addr, align 4
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store i32 %dest_height, i32* %dest_height.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  store i32* %thumbnail_data_count, i32** %thumbnail_data_count.addr, align 8
  store i8** %thumbnail_data, i8*** %thumbnail_data.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %src_x.addr, align 4
  %2 = load i32, i32* %src_y.addr, align 4
  %3 = load i32, i32* %src_width.addr, align 4
  %4 = load i32, i32* %src_height.addr, align 4
  %5 = load i32, i32* %dest_width.addr, align 4
  %6 = load i32, i32* %dest_height.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 0, i32 %5, i32 0, i32 %6, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %7 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %bpp.addr, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %thumbnail_data_count.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** %thumbnail_data.addr, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %13 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %13, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %14 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %16 = load i32, i32* %d_int32, align 4
  %17 = load i32*, i32** %width.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %19 = load i32, i32* %d_int325, align 4
  %20 = load i32*, i32** %height.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %22 = load i32, i32* %d_int328, align 4
  %23 = load i32*, i32** %bpp.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %25 = load i32, i32* %d_int3211, align 4
  %26 = load i32*, i32** %thumbnail_data_count.addr, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %thumbnail_data_count.addr, align 8
  %28 = load i32, i32* %27, align 4
  %conv12 = sext i32 %28 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  %29 = load i8**, i8*** %thumbnail_data.addr, align 8
  store i8* %call13, i8** %29, align 8
  %30 = load i8**, i8*** %thumbnail_data.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 5
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data15 to i8**
  %33 = load i8*, i8** %d_int8array, align 8
  %34 = load i32*, i32** %thumbnail_data_count.addr, align 8
  %35 = load i32, i32* %34, align 4
  %conv16 = sext i32 %35 to i64
  %mul = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %33, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %37 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %36, i32 %37)
  %38 = load i32, i32* %success, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_foreground_extract(i32 %drawable_ID, i32 %mode, i32 %mask_ID) #0 {
entry:
  %drawable_ID.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %mask_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %mask_ID, i32* %mask_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %mask_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 16, i32 %0, i32 0, i32 %1, i32 16, i32 %2, i32 22)
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
