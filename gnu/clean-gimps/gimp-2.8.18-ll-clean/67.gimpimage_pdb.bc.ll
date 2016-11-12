; ModuleID = './libgimp/gimpimage_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"gimp-image-is-valid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-image-list\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp-image-new\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-image-duplicate\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"gimp-image-delete\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimp-image-base-type\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gimp-image-width\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-image-height\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"gimp-image-free-shadow\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"gimp-image-resize\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"gimp-image-resize-to-layers\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"gimp-image-scale\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"gimp-image-scale-full\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"gimp-image-crop\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimp-image-flip\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"gimp-image-rotate\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gimp-image-get-layers\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"gimp-image-get-channels\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"gimp-image-get-vectors\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"gimp-image-get-active-drawable\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"gimp-image-unset-active-channel\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"gimp-image-get-floating-sel\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"gimp-image-floating-sel-attached-to\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"gimp-image-pick-color\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"gimp-image-pick-correlate-layer\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"gimp-image-add-layer\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"gimp-image-insert-layer\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"gimp-image-remove-layer\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"gimp-image-add-channel\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"gimp-image-insert-channel\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"gimp-image-remove-channel\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"gimp-image-add-vectors\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"gimp-image-insert-vectors\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"gimp-image-remove-vectors\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"gimp-image-get-item-position\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"gimp-image-raise-item\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"gimp-image-lower-item\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"gimp-image-raise-item-to-top\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"gimp-image-lower-item-to-bottom\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"gimp-image-reorder-item\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"gimp-image-flatten\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"gimp-image-merge-visible-layers\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"gimp-image-merge-down\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"gimp-image-get-colormap\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"gimp-image-set-colormap\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"gimp-image-clean-all\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"gimp-image-is-dirty\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"gimp-image-thumbnail\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"gimp-image-get-active-layer\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"gimp-image-set-active-layer\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"gimp-image-get-active-channel\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"gimp-image-set-active-channel\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"gimp-image-get-active-vectors\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"gimp-image-set-active-vectors\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"gimp-image-get-selection\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"gimp-image-get-component-active\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"gimp-image-set-component-active\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"gimp-image-get-component-visible\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"gimp-image-set-component-visible\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"gimp-image-get-filename\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"gimp-image-set-filename\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"gimp-image-get-uri\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"gimp-image-get-xcf-uri\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"gimp-image-get-imported-uri\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"gimp-image-get-exported-uri\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"gimp-image-get-name\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"gimp-image-get-resolution\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"gimp-image-set-resolution\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"gimp-image-get-unit\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"gimp-image-set-unit\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"gimp-image-get-tattoo-state\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"gimp-image-set-tattoo-state\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"gimp-image-get-layer-by-tattoo\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"gimp-image-get-channel-by-tattoo\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"gimp-image-get-vectors-by-tattoo\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"gimp-image-get-layer-by-name\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"gimp-image-get-channel-by-name\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"gimp-image-get-vectors-by-name\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"gimp-image-attach-parasite\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"gimp-image-detach-parasite\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"gimp-image-get-parasite\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"gimp-image-get-parasite-list\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_is_valid(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %valid = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %valid, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i32 %4, i32* %valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %valid, align 4
  ret i32 %7
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32* @gimp_image_list(i32* %num_images) #0 {
entry:
  %num_images.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %image_ids = alloca i32*, align 8
  store i32* %num_images, i32** %num_images.addr, align 8
  store i32* null, i32** %image_ids, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load i32*, i32** %num_images.addr, align 8
  store i32 0, i32* %0, align 4
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
  %5 = load i32*, i32** %num_images.addr, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32*, i32** %num_images.addr, align 8
  %7 = load i32, i32* %6, align 4
  %conv = sext i32 %7 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %8 = bitcast i8* %call3 to i32*
  store i32* %8, i32** %image_ids, align 8
  %9 = load i32*, i32** %image_ids, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %12 = load i32*, i32** %d_int32array, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32*, i32** %num_images.addr, align 8
  %15 = load i32, i32* %14, align 4
  %conv6 = sext i32 %15 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %13, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %17 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %16, i32 %17)
  %18 = load i32*, i32** %image_ids, align 8
  ret i32* %18
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_image_new(i32 %width, i32 %height, i32 %type) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %image_ID = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 -1, i32* %image_ID, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %2 = load i32, i32* %type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
  %d_image = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* %image_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %image_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_duplicate(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %new_image_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %new_image_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_image = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_image, align 4
  store i32 %4, i32* %new_image_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %new_image_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_delete(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_base_type(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %base_type = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %base_type, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i32 %4, i32* %base_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %base_type, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_width(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %width = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %width, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_height(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %height = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %height, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_free_shadow(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_resize(i32 %image_ID, i32 %new_width, i32 %new_height, i32 %offx, i32 %offy) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offx.addr = alloca i32, align 4
  %offy.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offx, i32* %offx.addr, align 4
  store i32 %offy, i32* %offy.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %new_width.addr, align 4
  %2 = load i32, i32* %new_height.addr, align 4
  %3 = load i32, i32* %offx.addr, align 4
  %4 = load i32, i32* %offy.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
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
define i32 @gimp_image_resize_to_layers(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_scale(i32 %image_ID, i32 %new_width, i32 %new_height) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %new_width.addr, align 4
  %2 = load i32, i32* %new_height.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_scale_full(i32 %image_ID, i32 %new_width, i32 %new_height, i32 %interpolation) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %new_width.addr, align 4
  %2 = load i32, i32* %new_height.addr, align 4
  %3 = load i32, i32* %interpolation.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_image_crop(i32 %image_ID, i32 %new_width, i32 %new_height, i32 %offx, i32 %offy) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offx.addr = alloca i32, align 4
  %offy.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offx, i32* %offx.addr, align 4
  store i32 %offy, i32* %offy.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %new_width.addr, align 4
  %2 = load i32, i32* %new_height.addr, align 4
  %3 = load i32, i32* %offx.addr, align 4
  %4 = load i32, i32* %offy.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
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
define i32 @gimp_image_flip(i32 %image_ID, i32 %flip_type) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %flip_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %flip_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_image_rotate(i32 %image_ID, i32 %rotate_type) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %rotate_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %rotate_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
define i32* @gimp_image_get_layers(i32 %image_ID, i32* %num_layers) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_layers.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ids = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_layers, i32** %num_layers.addr, align 8
  store i32* null, i32** %layer_ids, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_layers.addr, align 8
  store i32 0, i32* %1, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_layers.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_layers.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %9 = bitcast i8* %call3 to i32*
  store i32* %9, i32** %layer_ids, align 8
  %10 = load i32*, i32** %layer_ids, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %13 = load i32*, i32** %d_int32array, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %num_layers.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = sext i32 %16 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32*, i32** %layer_ids, align 8
  ret i32* %19
}

; Function Attrs: nounwind uwtable
define i32* @gimp_image_get_channels(i32 %image_ID, i32* %num_channels) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_channels.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_ids = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_channels, i32** %num_channels.addr, align 8
  store i32* null, i32** %channel_ids, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_channels.addr, align 8
  store i32 0, i32* %1, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_channels.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_channels.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %9 = bitcast i8* %call3 to i32*
  store i32* %9, i32** %channel_ids, align 8
  %10 = load i32*, i32** %channel_ids, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %13 = load i32*, i32** %d_int32array, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %num_channels.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = sext i32 %16 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32*, i32** %channel_ids, align 8
  ret i32* %19
}

; Function Attrs: nounwind uwtable
define i32* @gimp_image_get_vectors(i32 %image_ID, i32* %num_vectors) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_vectors.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %vector_ids = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_vectors, i32** %num_vectors.addr, align 8
  store i32* null, i32** %vector_ids, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_vectors.addr, align 8
  store i32 0, i32* %1, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_vectors.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_vectors.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %9 = bitcast i8* %call3 to i32*
  store i32* %9, i32** %vector_ids, align 8
  %10 = load i32*, i32** %vector_ids, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %13 = load i32*, i32** %d_int32array, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %num_vectors.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = sext i32 %16 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32*, i32** %vector_ids, align 8
  ret i32* %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_active_drawable(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %drawable_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_drawable, align 4
  store i32 %4, i32* %drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %drawable_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_unset_active_channel(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_get_floating_sel(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %floating_sel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %floating_sel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_layer, align 4
  store i32 %4, i32* %floating_sel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %floating_sel_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_floating_sel_attached_to(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %drawable_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_drawable, align 4
  store i32 %4, i32* %drawable_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %drawable_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_pick_color(i32 %image_ID, i32 %drawable_ID, double %x, double %y, i32 %sample_merged, i32 %sample_average, double %average_radius, %struct._GimpRGB* %color) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %sample_merged.addr = alloca i32, align 4
  %sample_average.addr = alloca i32, align 4
  %average_radius.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %sample_average, i32* %sample_average.addr, align 4
  store double %average_radius, double* %average_radius.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %4 = load i32, i32* %sample_merged.addr, align 4
  %5 = load i32, i32* %sample_average.addr, align 4
  %6 = load double, double* %average_radius.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 16, i32 %1, i32 3, double %2, i32 3, double %3, i32 0, i32 %4, i32 0, i32 %5, i32 3, double %6, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %8 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %8, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %11 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %12 = bitcast %struct._GimpRGB* %10 to i8*
  %13 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %15 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %14, i32 %15)
  %16 = load i32, i32* %success, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_pick_correlate_layer(i32 %image_ID, i32 %x, i32 %y) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_layer, align 4
  store i32 %6, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %layer_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_add_layer(i32 %image_ID, i32 %layer_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %2 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_insert_layer(i32 %image_ID, i32 %layer_ID, i32 %parent_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  %parent_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %parent_ID, i32* %parent_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %2 = load i32, i32* %parent_ID.addr, align 4
  %3 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 14, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_image_remove_layer(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 22)
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
define i32 @gimp_image_add_channel(i32 %image_ID, i32 %channel_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %2 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 15, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_insert_channel(i32 %image_ID, i32 %channel_ID, i32 %parent_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  %parent_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 %parent_ID, i32* %parent_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %2 = load i32, i32* %parent_ID.addr, align 4
  %3 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 15, i32 %1, i32 15, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_image_remove_channel(i32 %image_ID, i32 %channel_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 15, i32 %1, i32 22)
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
define i32 @gimp_image_add_vectors(i32 %image_ID, i32 %vectors_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %2 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 19, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_insert_vectors(i32 %image_ID, i32 %vectors_ID, i32 %parent_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  %parent_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %parent_ID, i32* %parent_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %2 = load i32, i32* %parent_ID.addr, align 4
  %3 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 19, i32 %1, i32 19, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_image_remove_vectors(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 19, i32 %1, i32 22)
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
define i32 @gimp_image_get_item_position(i32 %image_ID, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %position = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 0, i32* %position, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  store i32 %5, i32* %position, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %position, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_item(i32 %image_ID, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 22)
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
define i32 @gimp_image_lower_item(i32 %image_ID, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 22)
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
define i32 @gimp_image_raise_item_to_top(i32 %image_ID, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 22)
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
define i32 @gimp_image_lower_item_to_bottom(i32 %image_ID, i32 %item_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 22)
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
define i32 @gimp_image_reorder_item(i32 %image_ID, i32 %item_ID, i32 %parent_ID, i32 %position) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %item_ID.addr = alloca i32, align 4
  %parent_ID.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %item_ID, i32* %item_ID.addr, align 4
  store i32 %parent_ID, i32* %parent_ID.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %item_ID.addr, align 4
  %2 = load i32, i32* %parent_ID.addr, align 4
  %3 = load i32, i32* %position.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 11, i32 %1, i32 11, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_image_flatten(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_layer, align 4
  store i32 %4, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %layer_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_merge_visible_layers(i32 %image_ID, i32 %merge_type) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %merge_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %merge_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_layer, align 4
  store i32 %5, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %layer_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_merge_down(i32 %image_ID, i32 %merge_layer_ID, i32 %merge_type) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %merge_layer_ID.addr = alloca i32, align 4
  %merge_type.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %merge_layer_ID, i32* %merge_layer_ID.addr, align 4
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %merge_layer_ID.addr, align 4
  %2 = load i32, i32* %merge_type.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 0, i32 %2, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_layer, align 4
  store i32 %6, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %layer_ID, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_image_get_colormap(i32 %image_ID, i32* %num_bytes) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_bytes.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %colormap = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_bytes, i32** %num_bytes.addr, align 8
  store i8* null, i8** %colormap, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_bytes.addr, align 8
  store i32 0, i32* %1, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_bytes.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_bytes.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call3, i8** %colormap, align 8
  %9 = load i8*, i8** %colormap, align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data5 to i8**
  %11 = load i8*, i8** %d_int8array, align 8
  %12 = load i32*, i32** %num_bytes.addr, align 8
  %13 = load i32, i32* %12, align 4
  %conv6 = sext i32 %13 to i64
  %mul = mul i64 %conv6, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %11, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %15 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %14, i32 %15)
  %16 = load i8*, i8** %colormap, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_image_set_colormap(i32 %image_ID, i32 %num_bytes, i8* %colormap) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_bytes.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %num_bytes.addr, align 4
  %2 = load i8*, i8** %colormap.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 7, i8* %2, i32 22)
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
define i32 @gimp_image_clean_all(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_image_is_dirty(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %dirty = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %dirty, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i32 %4, i32* %dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %dirty, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_image_thumbnail(i32 %image_ID, i32 %width, i32 %height, i32* %actual_width, i32* %actual_height, i32* %bpp, i32* %thumbnail_data_count, i8** %thumbnail_data) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
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
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32* %actual_width, i32** %actual_width.addr, align 8
  store i32* %actual_height, i32** %actual_height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  store i32* %thumbnail_data_count, i32** %thumbnail_data_count.addr, align 8
  store i8** %thumbnail_data, i8*** %thumbnail_data.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_get_active_layer(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %active_layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %active_layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_layer, align 4
  store i32 %4, i32* %active_layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %active_layer_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_active_layer(i32 %image_ID, i32 %active_layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %active_layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %active_layer_ID, i32* %active_layer_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %active_layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 22)
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
define i32 @gimp_image_get_active_channel(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %active_channel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %active_channel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i32 %4, i32* %active_channel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %active_channel_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_active_channel(i32 %image_ID, i32 %active_channel_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %active_channel_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %active_channel_ID, i32* %active_channel_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %active_channel_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 15, i32 %1, i32 22)
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
define i32 @gimp_image_get_active_vectors(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %active_vectors_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %active_vectors_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_vectors = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_vectors, align 4
  store i32 %4, i32* %active_vectors_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %active_vectors_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_active_vectors(i32 %image_ID, i32 %active_vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %active_vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %active_vectors_ID, i32* %active_vectors_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %active_vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 19, i32 %1, i32 22)
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
define i32 @gimp_image_get_selection(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %selection_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 -1, i32* %selection_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_selection = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_selection, align 4
  store i32 %4, i32* %selection_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %selection_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_component_active(i32 %image_ID, i32 %component) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %active = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  store i32 0, i32* %active, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %component.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  store i32 %5, i32* %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %active, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_component_active(i32 %image_ID, i32 %component, i32 %active) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %active.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  store i32 %active, i32* %active.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %component.addr, align 4
  %2 = load i32, i32* %active.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_image_get_component_visible(i32 %image_ID, i32 %component) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %visible = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  store i32 0, i32* %visible, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %component.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  store i32 %5, i32* %visible, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %visible, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_component_visible(i32 %image_ID, i32 %component, i32 %visible) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %component.addr = alloca i32, align 4
  %visible.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %component, i32* %component.addr, align 4
  store i32 %visible, i32* %visible.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %component.addr, align 4
  %2 = load i32, i32* %visible.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 22)
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
define i8* @gimp_image_get_filename(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %filename, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %filename, align 8
  ret i8* %7
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_filename(i32 %image_ID, i8* %filename) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
define i8* @gimp_image_get_uri(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %uri = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %uri, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %uri, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_xcf_uri(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %uri = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %uri, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %uri, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_imported_uri(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %uri = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %uri, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %uri, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_exported_uri(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %uri = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %uri, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %uri, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_name(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %name, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i8*, i8** %name, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_resolution(i32 %image_ID, double* %xresolution, double* %yresolution) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %xresolution.addr = alloca double*, align 8
  %yresolution.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store double* %xresolution, double** %xresolution.addr, align 8
  store double* %yresolution, double** %yresolution.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load double*, double** %xresolution.addr, align 8
  store double 0.000000e+00, double* %1, align 8
  %2 = load double*, double** %yresolution.addr, align 8
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
  %8 = load double*, double** %xresolution.addr, align 8
  store double %7, double* %8, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float5 = bitcast %union._GimpParamData* %data4 to double*
  %10 = load double, double* %d_float5, align 8
  %11 = load double*, double** %yresolution.addr, align 8
  store double %10, double* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %13 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %12, i32 %13)
  %14 = load i32, i32* %success, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_resolution(i32 %image_ID, double %xresolution, double %yresolution) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load double, double* %xresolution.addr, align 8
  %2 = load double, double* %yresolution.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 3, double %1, i32 3, double %2, i32 22)
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
define i32 @gimp_image_get_unit(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %unit = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %unit, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_unit = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_unit, align 4
  store i32 %4, i32* %unit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %unit, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_unit(i32 %image_ID, i32 %unit) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %unit.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %unit.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_image_get_tattoo_state(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %tattoo_state = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %tattoo_state, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
  %d_tattoo = bitcast %union._GimpParamData* %data2 to i32*
  %4 = load i32, i32* %d_tattoo, align 4
  store i32 %4, i32* %tattoo_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %tattoo_state, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_tattoo_state(i32 %image_ID, i32 %tattoo_state) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %tattoo_state.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %tattoo_state, i32* %tattoo_state.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %tattoo_state.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_image_get_layer_by_tattoo(i32 %image_ID, i32 %tattoo) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_layer, align 4
  store i32 %5, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %layer_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_channel_by_tattoo(i32 %image_ID, i32 %tattoo) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  store i32 -1, i32* %channel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_channel = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_channel, align 4
  store i32 %5, i32* %channel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %channel_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_vectors_by_tattoo(i32 %image_ID, i32 %tattoo) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %vectors_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  store i32 -1, i32* %vectors_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  %d_vectors = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_vectors, align 4
  store i32 %5, i32* %vectors_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %vectors_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_layer_by_name(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.75, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_layer = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_layer, align 4
  store i32 %5, i32* %layer_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %layer_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_channel_by_name(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %channel_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 -1, i32* %channel_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_channel = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_channel, align 4
  store i32 %5, i32* %channel_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %channel_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_vectors_by_name(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %vectors_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 -1, i32* %vectors_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_vectors = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_vectors, align 4
  store i32 %5, i32* %vectors_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %vectors_ID, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_attach_parasite(i32 %image_ID, %struct._GimpParasite* %parasite) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 20, %struct._GimpParasite* %1, i32 22)
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
define i32 @gimp_image_detach_parasite(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
define %struct._GimpParasite* @gimp_image_get_parasite(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  %d_parasite = bitcast %union._GimpParamData* %data2 to %struct._GimpParasite*
  %call3 = call %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite* %d_parasite)
  store %struct._GimpParasite* %call3, %struct._GimpParasite** %parasite, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  ret %struct._GimpParasite* %7
}

declare %struct._GimpParasite* @gimp_parasite_copy(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_image_get_parasite_list(i32 %image_ID, i32* %num_parasites) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_parasites.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %parasites = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_parasites, i32** %num_parasites.addr, align 8
  store i8** null, i8*** %parasites, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_parasites.addr, align 8
  store i32 0, i32* %1, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %num_parasites.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_parasites.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call3 to i8**
  store i8** %9, i8*** %parasites, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %num_parasites.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_stringarray = bitcast %union._GimpParamData* %data7 to i8***
  %15 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx8, align 8
  %call9 = call noalias i8* @g_strdup(i8* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i8**, i8*** %parasites, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %18, i64 %idxprom10
  store i8* %call9, i8** %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %21 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %20, i32 %21)
  %22 = load i8**, i8*** %parasites, align 8
  ret i8** %22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
