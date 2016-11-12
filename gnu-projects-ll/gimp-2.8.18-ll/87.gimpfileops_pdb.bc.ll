; ModuleID = './libgimp/gimpfileops_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [15 x i8] c"gimp-file-load\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gimp-file-load-layer\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp-file-load-layers\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp-file-save\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gimp-file-save-thumbnail\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp-temp-name\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"gimp-register-magic-load-handler\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"gimp-register-load-handler\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"gimp-register-save-handler\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"gimp-register-file-handler-mime\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"gimp-register-thumbnail-loader\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_file_load(i32 %run_mode, i8* %filename, i8* %raw_filename) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %raw_filename.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %image_ID = alloca i32, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %raw_filename, i8** %raw_filename.addr, align 8
  store i32 -1, i32* %image_ID, align 4
  %0 = load i32, i32* %run_mode.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8*, i8** %raw_filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 4, i8* %1, i32 4, i8* %2, i32 22)
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

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_file_load_layer(i32 %run_mode, i32 %image_ID, i8* %filename) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 -1, i32* %layer_ID, align 4
  %0 = load i32, i32* %run_mode.addr, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 13, i32 %1, i32 4, i8* %2, i32 22)
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
define i32* @gimp_file_load_layers(i32 %run_mode, i32 %image_ID, i8* %filename, i32* %num_layers) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %num_layers.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %layer_ids = alloca i32*, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32* %num_layers, i32** %num_layers.addr, align 8
  store i32* null, i32** %layer_ids, align 8
  %0 = load i32, i32* %run_mode.addr, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 13, i32 %1, i32 4, i8* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %num_layers.addr, align 8
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
  %8 = load i32*, i32** %num_layers.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %num_layers.addr, align 8
  %10 = load i32, i32* %9, align 4
  %conv = sext i32 %10 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %11 = bitcast i8* %call3 to i32*
  store i32* %11, i32** %layer_ids, align 8
  %12 = load i32*, i32** %layer_ids, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %15 = load i32*, i32** %d_int32array, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i32*, i32** %num_layers.addr, align 8
  %18 = load i32, i32* %17, align 4
  %conv6 = sext i32 %18 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %16, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %20 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %19, i32 %20)
  %21 = load i32*, i32** %layer_ids, align 8
  ret i32* %21
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_file_save(i32 %run_mode, i32 %image_ID, i32 %drawable_ID, i8* %filename, i8* %raw_filename) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %raw_filename.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %raw_filename, i8** %raw_filename.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %run_mode.addr, align 4
  %1 = load i32, i32* %image_ID.addr, align 4
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i8*, i8** %raw_filename.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 13, i32 %1, i32 16, i32 %2, i32 4, i8* %3, i32 4, i8* %4, i32 22)
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
define i32 @gimp_file_save_thumbnail(i32 %image_ID, i8* %filename) #0 {
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
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
define i8* @gimp_temp_name(i8* %extension) #0 {
entry:
  %extension.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* %extension, i8** %extension.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load i8*, i8** %extension.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_register_magic_load_handler(i8* %procedure_name, i8* %extensions, i8* %prefixes, i8* %magics) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %magics.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
  store i8* %magics, i8** %magics.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i8*, i8** %extensions.addr, align 8
  %2 = load i8*, i8** %prefixes.addr, align 8
  %3 = load i8*, i8** %magics.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 4, i8* %2, i32 4, i8* %3, i32 22)
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
define i32 @gimp_register_load_handler(i8* %procedure_name, i8* %extensions, i8* %prefixes) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i8*, i8** %extensions.addr, align 8
  %2 = load i8*, i8** %prefixes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 4, i8* %2, i32 22)
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
define i32 @gimp_register_save_handler(i8* %procedure_name, i8* %extensions, i8* %prefixes) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %extensions.addr = alloca i8*, align 8
  %prefixes.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8* %extensions, i8** %extensions.addr, align 8
  store i8* %prefixes, i8** %prefixes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i8*, i8** %extensions.addr, align 8
  %2 = load i8*, i8** %prefixes.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 4, i8* %2, i32 22)
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
define i32 @gimp_register_file_handler_mime(i8* %procedure_name, i8* %mime_type) #0 {
entry:
  %procedure_name.addr = alloca i8*, align 8
  %mime_type.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %1 = load i8*, i8** %mime_type.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 22)
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
define i32 @gimp_register_thumbnail_loader(i8* %load_proc, i8* %thumb_proc) #0 {
entry:
  %load_proc.addr = alloca i8*, align 8
  %thumb_proc.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %load_proc, i8** %load_proc.addr, align 8
  store i8* %thumb_proc, i8** %thumb_proc.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %load_proc.addr, align 8
  %1 = load i8*, i8** %thumb_proc.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 22)
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
