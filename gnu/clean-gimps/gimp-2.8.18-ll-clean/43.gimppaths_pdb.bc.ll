; ModuleID = './libgimp/gimppaths_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [15 x i8] c"gimp-path-list\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gimp-path-get-current\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp-path-set-current\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gimp-path-delete\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"gimp-path-get-points\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimp-path-set-points\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"gimp-path-stroke-current\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp-path-get-point-at-dist\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"gimp-path-get-tattoo\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"gimp-path-set-tattoo\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gimp-get-path-by-tattoo\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gimp-path-get-locked\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"gimp-path-set-locked\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"gimp-path-to-selection\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"gimp-path-import\00", align 1

; Function Attrs: nounwind uwtable
define i8** @gimp_path_list(i32 %image_ID, i32* %num_paths) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_paths.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %path_list = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_paths, i32** %num_paths.addr, align 8
  store i8** null, i8*** %path_list, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_paths.addr, align 8
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
  %6 = load i32*, i32** %num_paths.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_paths.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %9 = bitcast i8* %call3 to i8**
  store i8** %9, i8*** %path_list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %num_paths.addr, align 8
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
  %18 = load i8**, i8*** %path_list, align 8
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
  %22 = load i8**, i8*** %path_list, align 8
  ret i8** %22
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_path_get_current(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* null, i8** %name, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_path_set_current(i32 %image_ID, i8* %name) #0 {
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
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
define i32 @gimp_path_delete(i32 %image_ID, i8* %name) #0 {
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
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
define i32 @gimp_path_get_points(i32 %image_ID, i8* %name, i32* %path_closed, i32* %num_path_point_details, double** %points_pairs) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %path_closed.addr = alloca i32*, align 8
  %num_path_point_details.addr = alloca i32*, align 8
  %points_pairs.addr = alloca double**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %path_type = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32* %path_closed, i32** %path_closed.addr, align 8
  store i32* %num_path_point_details, i32** %num_path_point_details.addr, align 8
  store double** %points_pairs, double*** %points_pairs.addr, align 8
  store i32 0, i32* %path_type, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %num_path_point_details.addr, align 8
  store i32 0, i32* %2, align 4
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_int32, align 4
  store i32 %6, i32* %path_type, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %8 = load i32, i32* %d_int325, align 4
  %9 = load i32*, i32** %path_closed.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %11 = load i32, i32* %d_int328, align 4
  %12 = load i32*, i32** %num_path_point_details.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %num_path_point_details.addr, align 8
  %14 = load i32, i32* %13, align 4
  %conv = sext i32 %14 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %15 = bitcast i8* %call9 to double*
  %16 = load double**, double*** %points_pairs.addr, align 8
  store double* %15, double** %16, align 8
  %17 = load double**, double*** %points_pairs.addr, align 8
  %18 = load double*, double** %17, align 8
  %19 = bitcast double* %18 to i8*
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data11 to double**
  %21 = load double*, double** %d_floatarray, align 8
  %22 = bitcast double* %21 to i8*
  %23 = load i32*, i32** %num_path_point_details.addr, align 8
  %24 = load i32, i32* %23, align 4
  %conv12 = sext i32 %24 to i64
  %mul = mul i64 %conv12, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %22, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %26 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %25, i32 %26)
  %27 = load i32, i32* %path_type, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_path_set_points(i32 %image_ID, i8* %name, i32 %ptype, i32 %num_path_points, double* %points_pairs) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %ptype.addr = alloca i32, align 4
  %num_path_points.addr = alloca i32, align 4
  %points_pairs.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %ptype, i32* %ptype.addr, align 4
  store i32 %num_path_points, i32* %num_path_points.addr, align 4
  store double* %points_pairs, double** %points_pairs.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %ptype.addr, align 4
  %3 = load i32, i32* %num_path_points.addr, align 4
  %4 = load double*, double** %points_pairs.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 0, i32 %3, i32 8, double* %4, i32 22)
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
define i32 @gimp_path_stroke_current(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 22)
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
define i32 @gimp_path_get_point_at_dist(i32 %image_ID, double %distance, i32* %y_point, double* %slope) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %distance.addr = alloca double, align 8
  %y_point.addr = alloca i32*, align 8
  %slope.addr = alloca double*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %x_point = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store double %distance, double* %distance.addr, align 8
  store i32* %y_point, i32** %y_point.addr, align 8
  store double* %slope, double** %slope.addr, align 8
  store i32 0, i32* %x_point, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load double, double* %distance.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 3, double %1, i32 22)
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
  store i32 %5, i32* %x_point, align 4
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %7 = load i32, i32* %d_int325, align 4
  %8 = load i32*, i32** %y_point.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data7 to double*
  %10 = load double, double* %d_float, align 8
  %11 = load double*, double** %slope.addr, align 8
  store double %10, double* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %13 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %12, i32 %13)
  %14 = load i32, i32* %x_point, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_path_get_tattoo(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %tattoo = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %tattoo, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  store i32 %5, i32* %tattoo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %tattoo, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_path_set_tattoo(i32 %image_ID, i8* %name, i32 %tattovalue) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %tattovalue.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %tattovalue, i32* %tattovalue.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %tattovalue.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 22)
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
define i8* @gimp_get_path_by_tattoo(i32 %image_ID, i32 %tattoo) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %name = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  store i8* null, i8** %name, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 0, i32 %1, i32 22)
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
  store i8* %call3, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %name, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_path_get_locked(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %locked = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %locked, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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
  store i32 %5, i32* %locked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i32, i32* %locked, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_path_set_locked(i32 %image_ID, i8* %name, i32 %locked) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %locked.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %locked, i32* %locked.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %locked.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 22)
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
define i32 @gimp_path_to_selection(i32 %image_ID, i8* %name, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %op.addr, align 4
  %3 = load i32, i32* %antialias.addr, align 4
  %4 = load i32, i32* %feather.addr, align 4
  %5 = load double, double* %feather_radius_x.addr, align 8
  %6 = load double, double* %feather_radius_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 3, double %5, i32 3, double %6, i32 22)
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
define i32 @gimp_path_import(i32 %image_ID, i8* %filename, i32 %merge, i32 %scale) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %merge.addr, align 4
  %3 = load i32, i32* %scale.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
