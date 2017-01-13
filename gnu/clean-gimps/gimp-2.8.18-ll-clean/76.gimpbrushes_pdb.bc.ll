; ModuleID = './libgimp/gimpbrushes_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [21 x i8] c"gimp-brushes-refresh\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-brushes-get-list\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gimp-brushes-get-brush\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gimp-brushes-get-spacing\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gimp-brushes-set-spacing\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-brushes-get-brush-data\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_refresh() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 1, i32* %success, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %3 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %2, i32 %3)
  %4 = load i32, i32* %success, align 4
  ret i32 %4
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_brushes_get_list(i8* %filter, i32* %num_brushes) #0 {
entry:
  %filter.addr = alloca i8*, align 8
  %num_brushes.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %brush_list = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8* %filter, i8** %filter.addr, align 8
  store i32* %num_brushes, i32** %num_brushes.addr, align 8
  store i8** null, i8*** %brush_list, align 8
  %0 = load i8*, i8** %filter.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_brushes.addr, align 8
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
  %6 = load i32*, i32** %num_brushes.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_brushes.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call3 to i8**
  store i8** %9, i8*** %brush_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %num_brushes.addr, align 8
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
  %18 = load i8**, i8*** %brush_list, align 8
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
  %22 = load i8**, i8*** %brush_list, align 8
  ret i8** %22
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_brushes_get_brush(i32* %width, i32* %height, i32* %spacing) #0 {
entry:
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %spacing.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %spacing, i32** %spacing.addr, align 8
  store i8* null, i8** %name, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %3 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  store i8* %call3, i8** %name, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data5 to i32*
  %5 = load i32, i32* %d_int32, align 4
  %6 = load i32*, i32** %width.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_int328, align 4
  %9 = load i32*, i32** %height.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %11 = load i32, i32* %d_int3211, align 4
  %12 = load i32*, i32** %spacing.addr, align 8
  store i32 %11, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %14 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %13, i32 %14)
  %15 = load i8*, i8** %name, align 8
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_get_spacing() #0 {
entry:
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %spacing = alloca i32, align 4
  store i32 0, i32* %spacing, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %spacing, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %5 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %4, i32 %5)
  %6 = load i32, i32* %spacing, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_set_spacing(i32 %spacing) #0 {
entry:
  %spacing.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %spacing.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 0, i32 %0, i32 22)
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
define i8* @gimp_brushes_get_brush_data(i8* %name, double* %opacity, i32* %spacing, i32* %paint_mode, i32* %width, i32* %height, i32* %length, i8** %mask_data) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double*, align 8
  %spacing.addr = alloca i32*, align 8
  %paint_mode.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %length.addr = alloca i32*, align 8
  %mask_data.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %actual_name = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store double* %opacity, double** %opacity.addr, align 8
  store i32* %spacing, i32** %spacing.addr, align 8
  store i32* %paint_mode, i32** %paint_mode.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  store i8** %mask_data, i8*** %mask_data.addr, align 8
  store i8* null, i8** %actual_name, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %length.addr, align 8
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
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %5 = load i8*, i8** %d_string, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call3, i8** %actual_name, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data5 to double*
  %7 = load double, double* %d_float, align 8
  %8 = load double*, double** %opacity.addr, align 8
  store double %7, double* %8, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data7 to i32*
  %10 = load i32, i32* %d_int32, align 4
  %11 = load i32*, i32** %spacing.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 4
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %13 = load i32, i32* %d_int3210, align 4
  %14 = load i32*, i32** %paint_mode.addr, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 5
  %data12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx11, i32 0, i32 1
  %d_int3213 = bitcast %union._GimpParamData* %data12 to i32*
  %16 = load i32, i32* %d_int3213, align 4
  %17 = load i32*, i32** %width.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 6
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %19 = load i32, i32* %d_int3216, align 4
  %20 = load i32*, i32** %height.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 7
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %22 = load i32, i32* %d_int3219, align 4
  %23 = load i32*, i32** %length.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %length.addr, align 8
  %25 = load i32, i32* %24, align 4
  %conv = sext i32 %25 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %26 = load i8**, i8*** %mask_data.addr, align 8
  store i8* %call20, i8** %26, align 8
  %27 = load i8**, i8*** %mask_data.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 8
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data22 to i8**
  %30 = load i8*, i8** %d_int8array, align 8
  %31 = load i32*, i32** %length.addr, align 8
  %32 = load i32, i32* %31, align 4
  %conv23 = sext i32 %32 to i64
  %mul = mul i64 %conv23, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %34 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %33, i32 %34)
  %35 = load i8*, i8** %actual_name, align 8
  ret i8* %35
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
