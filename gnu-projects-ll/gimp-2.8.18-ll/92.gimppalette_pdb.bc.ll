; ModuleID = './libgimp/gimppalette_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [17 x i8] c"gimp-palette-new\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-palette-duplicate\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gimp-palette-rename\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gimp-palette-delete\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gimp-palette-is-editable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gimp-palette-get-info\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"gimp-palette-get-colors\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gimp-palette-get-columns\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"gimp-palette-set-columns\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"gimp-palette-add-entry\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"gimp-palette-delete-entry\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"gimp-palette-entry-get-color\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"gimp-palette-entry-set-color\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gimp-palette-entry-get-name\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"gimp-palette-entry-set-name\00", align 1

; Function Attrs: nounwind uwtable
define i8* @gimp_palette_new(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* null, i8** %actual_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_palette_duplicate(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %copy_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* null, i8** %copy_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i8* @gimp_palette_rename(i8* %name, i8* %new_name) #0 {
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
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 22)
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
define i32 @gimp_palette_delete(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_palette_is_editable(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %editable = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %editable, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
define i32 @gimp_palette_get_info(i8* %name, i32* %num_colors) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32* %num_colors, i32** %num_colors.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_colors.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_int32, align 4
  %7 = load i32*, i32** %num_colors.addr, align 8
  store i32 %6, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %9 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %8, i32 %9)
  %10 = load i32, i32* %success, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define %struct._GimpRGB* @gimp_palette_get_colors(i8* %name, i32* %num_colors) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %colors = alloca %struct._GimpRGB*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %num_colors, i32** %num_colors.addr, align 8
  store %struct._GimpRGB* null, %struct._GimpRGB** %colors, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_colors.addr, align 8
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
  %6 = load i32*, i32** %num_colors.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_colors.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 32)
  %9 = bitcast i8* %call3 to %struct._GimpRGB*
  store %struct._GimpRGB* %9, %struct._GimpRGB** %colors, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  %11 = bitcast %struct._GimpRGB* %10 to i8*
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_colorarray = bitcast %union._GimpParamData* %data5 to %struct._GimpRGB**
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray, align 8
  %14 = bitcast %struct._GimpRGB* %13 to i8*
  %15 = load i32*, i32** %num_colors.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = sext i32 %16 to i64
  %mul = mul i64 %conv6, 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %colors, align 8
  ret %struct._GimpRGB* %19
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_get_columns(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %num_columns = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %num_columns, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
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
  store i32 %4, i32* %num_columns, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %num_columns, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_columns(i8* %name, i32 %columns) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %columns.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %columns, i32* %columns.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %columns.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_palette_add_entry(i8* %name, i8* %entry_name, %struct._GimpRGB* %color, i32* %entry_num) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %entry_num.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %entry_name, i8** %entry_name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32* %entry_num, i32** %entry_num.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %entry_name.addr, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 4, i8* %1, i32 10, %struct._GimpRGB* %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %entry_num.addr, align 8
  store i32 0, i32* %3, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %8 = load i32, i32* %d_int32, align 4
  %9 = load i32*, i32** %entry_num.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_delete_entry(i8* %name, i32 %entry_num) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_num.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %entry_num, i32* %entry_num.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %entry_num.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_palette_entry_get_color(i8* %name, i32 %entry_num, %struct._GimpRGB* %color) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_num.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %entry_num, i32* %entry_num.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %entry_num.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %3, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %4 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data2 to %struct._GimpRGB*
  %7 = bitcast %struct._GimpRGB* %5 to i8*
  %8 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_entry_set_color(i8* %name, i32 %entry_num, %struct._GimpRGB* %color) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_num.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %entry_num, i32* %entry_num.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %entry_num.addr, align 4
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 10, %struct._GimpRGB* %2, i32 22)
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
define i32 @gimp_palette_entry_get_name(i8* %name, i32 %entry_num, i8** %entry_name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_num.addr = alloca i32, align 4
  %entry_name.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %entry_num, i32* %entry_num.addr, align 4
  store i8** %entry_name, i8*** %entry_name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %entry_num.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i8**, i8*** %entry_name.addr, align 8
  store i8* null, i8** %2, align 8
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %7 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %7)
  %8 = load i8**, i8*** %entry_name.addr, align 8
  store i8* %call3, i8** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_entry_set_name(i8* %name, i32 %entry_num, i8* %entry_name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %entry_num.addr = alloca i32, align 4
  %entry_name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %entry_num, i32* %entry_num.addr, align 4
  store i8* %entry_name, i8** %entry_name.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %entry_num.addr, align 4
  %2 = load i8*, i8** %entry_name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 0, i32 %1, i32 4, i8* %2, i32 22)
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
