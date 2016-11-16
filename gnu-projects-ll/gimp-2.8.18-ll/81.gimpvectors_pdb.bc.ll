; ModuleID = './libgimp/gimpvectors_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [17 x i8] c"gimp-vectors-new\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"gimp-vectors-new-from-text-layer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gimp-vectors-copy\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gimp-vectors-get-strokes\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gimp-vectors-stroke-get-length\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"gimp-vectors-stroke-get-point-at-dist\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gimp-vectors-remove-stroke\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"gimp-vectors-stroke-close\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gimp-vectors-stroke-translate\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"gimp-vectors-stroke-scale\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"gimp-vectors-stroke-rotate\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"gimp-vectors-stroke-flip\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"gimp-vectors-stroke-flip-free\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"gimp-vectors-stroke-get-points\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"gimp-vectors-stroke-new-from-points\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"gimp-vectors-stroke-interpolate\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"gimp-vectors-bezier-stroke-new-moveto\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"gimp-vectors-bezier-stroke-lineto\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"gimp-vectors-bezier-stroke-conicto\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"gimp-vectors-bezier-stroke-cubicto\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"gimp-vectors-bezier-stroke-new-ellipse\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"gimp-vectors-to-selection\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"gimp-vectors-import-from-file\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"gimp-vectors-import-from-string\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"gimp-vectors-export-to-file\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"gimp-vectors-export-to-string\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_new(i32 %image_ID, i8* %name) #0 {
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
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 22)
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

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_new_from_text_layer(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %vectors_ID = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 -1, i32* %vectors_ID, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 14, i32 %1, i32 22)
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
define i32 @gimp_vectors_copy(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %vectors_copy_ID = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 -1, i32* %vectors_copy_ID, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 22)
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
  store i32 %4, i32* %vectors_copy_ID, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %6 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %5, i32 %6)
  %7 = load i32, i32* %vectors_copy_ID, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32* @gimp_vectors_get_strokes(i32 %vectors_ID, i32* %num_strokes) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %num_strokes.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %stroke_ids = alloca i32*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32* %num_strokes, i32** %num_strokes.addr, align 8
  store i32* null, i32** %stroke_ids, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %num_strokes.addr, align 8
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
  %6 = load i32*, i32** %num_strokes.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %num_strokes.addr, align 8
  %8 = load i32, i32* %7, align 4
  %conv = sext i32 %8 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %9 = bitcast i8* %call3 to i32*
  store i32* %9, i32** %stroke_ids, align 8
  %10 = load i32*, i32** %stroke_ids, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data5 to i32**
  %13 = load i32*, i32** %d_int32array, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %num_strokes.addr, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = sext i32 %16 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %18 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %17, i32 %18)
  %19 = load i32*, i32** %stroke_ids, align 8
  ret i32* %19
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define double @gimp_vectors_stroke_get_length(i32 %vectors_ID, i32 %stroke_id, double %precision) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %precision.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %length = alloca double, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %precision, double* %precision.addr, align 8
  store double 0.000000e+00, double* %length, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %precision.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 22)
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %6 = load double, double* %d_float, align 8
  store double %6, double* %length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load double, double* %length, align 8
  ret double %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_stroke_get_point_at_dist(i32 %vectors_ID, i32 %stroke_id, double %dist, double %precision, double* %x_point, double* %y_point, double* %slope, i32* %valid) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %dist.addr = alloca double, align 8
  %precision.addr = alloca double, align 8
  %x_point.addr = alloca double*, align 8
  %y_point.addr = alloca double*, align 8
  %slope.addr = alloca double*, align 8
  %valid.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %dist, double* %dist.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store double* %x_point, double** %x_point.addr, align 8
  store double* %y_point, double** %y_point.addr, align 8
  store double* %slope, double** %slope.addr, align 8
  store i32* %valid, i32** %valid.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %dist.addr, align 8
  %3 = load double, double* %precision.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load double*, double** %x_point.addr, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %y_point.addr, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = load double*, double** %slope.addr, align 8
  store double 0.000000e+00, double* %6, align 8
  %7 = load i32*, i32** %valid.addr, align 8
  store i32 0, i32* %7, align 4
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
  %d_float = bitcast %union._GimpParamData* %data2 to double*
  %12 = load double, double* %d_float, align 8
  %13 = load double*, double** %x_point.addr, align 8
  store double %12, double* %13, align 8
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_float5 = bitcast %union._GimpParamData* %data4 to double*
  %15 = load double, double* %d_float5, align 8
  %16 = load double*, double** %y_point.addr, align 8
  store double %15, double* %16, align 8
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_float8 = bitcast %union._GimpParamData* %data7 to double*
  %18 = load double, double* %d_float8, align 8
  %19 = load double*, double** %slope.addr, align 8
  store double %18, double* %19, align 8
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data10 to i32*
  %21 = load i32, i32* %d_int32, align 4
  %22 = load i32*, i32** %valid.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %24 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %23, i32 %24)
  %25 = load i32, i32* %success, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_remove_stroke(i32 %vectors_ID, i32 %stroke_id) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_vectors_stroke_close(i32 %vectors_ID, i32 %stroke_id) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 22)
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
define i32 @gimp_vectors_stroke_translate(i32 %vectors_ID, i32 %stroke_id, i32 %off_x, i32 %off_y) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load i32, i32* %off_x.addr, align 4
  %3 = load i32, i32* %off_y.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
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
define i32 @gimp_vectors_stroke_scale(i32 %vectors_ID, i32 %stroke_id, double %scale_x, double %scale_y) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %scale_x.addr, align 8
  %3 = load double, double* %scale_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 22)
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
define i32 @gimp_vectors_stroke_rotate(i32 %vectors_ID, i32 %stroke_id, double %center_x, double %center_y, double %angle) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %center_x.addr, align 8
  %3 = load double, double* %center_y.addr, align 8
  %4 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 22)
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
define i32 @gimp_vectors_stroke_flip(i32 %vectors_ID, i32 %stroke_id, i32 %flip_type, double %axis) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load i32, i32* %flip_type.addr, align 4
  %3 = load double, double* %axis.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 3, double %3, i32 22)
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
define i32 @gimp_vectors_stroke_flip_free(i32 %vectors_ID, i32 %stroke_id, double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %x1.addr, align 8
  %3 = load double, double* %y1.addr, align 8
  %4 = load double, double* %x2.addr, align 8
  %5 = load double, double* %y2.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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
define i32 @gimp_vectors_stroke_get_points(i32 %vectors_ID, i32 %stroke_id, i32* %num_points, double** %controlpoints, i32* %closed) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %num_points.addr = alloca i32*, align 8
  %controlpoints.addr = alloca double**, align 8
  %closed.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store i32* %num_points, i32** %num_points.addr, align 8
  store double** %controlpoints, double*** %controlpoints.addr, align 8
  store i32* %closed, i32** %closed.addr, align 8
  store i32 0, i32* %type, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %2 = load i32*, i32** %num_points.addr, align 8
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
  store i32 %6, i32* %type, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %8 = load i32, i32* %d_int325, align 4
  %9 = load i32*, i32** %num_points.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %num_points.addr, align 8
  %11 = load i32, i32* %10, align 4
  %conv = sext i32 %11 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %12 = bitcast i8* %call6 to double*
  %13 = load double**, double*** %controlpoints.addr, align 8
  store double* %12, double** %13, align 8
  %14 = load double**, double*** %controlpoints.addr, align 8
  %15 = load double*, double** %14, align 8
  %16 = bitcast double* %15 to i8*
  %17 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 3
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data8 to double**
  %18 = load double*, double** %d_floatarray, align 8
  %19 = bitcast double* %18 to i8*
  %20 = load i32*, i32** %num_points.addr, align 8
  %21 = load i32, i32* %20, align 4
  %conv9 = sext i32 %21 to i64
  %mul = mul i64 %conv9, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %19, i64 %mul, i32 8, i1 false)
  %22 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 4
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_int3212 = bitcast %union._GimpParamData* %data11 to i32*
  %23 = load i32, i32* %d_int3212, align 4
  %24 = load i32*, i32** %closed.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %26 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %25, i32 %26)
  %27 = load i32, i32* %type, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_stroke_new_from_points(i32 %vectors_ID, i32 %type, i32 %num_points, double* %controlpoints, i32 %closed) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %num_points.addr = alloca i32, align 4
  %controlpoints.addr = alloca double*, align 8
  %closed.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %stroke_id = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %num_points, i32* %num_points.addr, align 4
  store double* %controlpoints, double** %controlpoints.addr, align 8
  store i32 %closed, i32* %closed.addr, align 4
  store i32 0, i32* %stroke_id, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i32, i32* %num_points.addr, align 4
  %3 = load double*, double** %controlpoints.addr, align 8
  %4 = load i32, i32* %closed.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 8, double* %3, i32 0, i32 %4, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %8 = load i32, i32* %d_int32, align 4
  store i32 %8, i32* %stroke_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %10 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %9, i32 %10)
  %11 = load i32, i32* %stroke_id, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define double* @gimp_vectors_stroke_interpolate(i32 %vectors_ID, i32 %stroke_id, double %precision, i32* %num_coords, i32* %closed) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %precision.addr = alloca double, align 8
  %num_coords.addr = alloca i32*, align 8
  %closed.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %coords = alloca double*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %precision, double* %precision.addr, align 8
  store i32* %num_coords, i32** %num_coords.addr, align 8
  store i32* %closed, i32** %closed.addr, align 8
  store double* null, double** %coords, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %precision.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %3 = load i32*, i32** %num_coords.addr, align 8
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
  %8 = load i32*, i32** %num_coords.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %num_coords.addr, align 8
  %10 = load i32, i32* %9, align 4
  %conv = sext i32 %10 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %11 = bitcast i8* %call3 to double*
  store double* %11, double** %coords, align 8
  %12 = load double*, double** %coords, align 8
  %13 = bitcast double* %12 to i8*
  %14 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_floatarray = bitcast %union._GimpParamData* %data5 to double**
  %15 = load double*, double** %d_floatarray, align 8
  %16 = bitcast double* %15 to i8*
  %17 = load i32*, i32** %num_coords.addr, align 8
  %18 = load i32, i32* %17, align 4
  %conv6 = sext i32 %18 to i64
  %mul = mul i64 %conv6, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %16, i64 %mul, i32 8, i1 false)
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 3
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_int329 = bitcast %union._GimpParamData* %data8 to i32*
  %20 = load i32, i32* %d_int329, align 4
  %21 = load i32*, i32** %closed.addr, align 8
  store i32 %20, i32* %21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %23 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %22, i32 %23)
  %24 = load double*, double** %coords, align 8
  ret double* %24
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_bezier_stroke_new_moveto(i32 %vectors_ID, double %x0, double %y0) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %stroke_id = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store i32 0, i32* %stroke_id, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load double, double* %x0.addr, align 8
  %2 = load double, double* %y0.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 3, double %1, i32 3, double %2, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %6 = load i32, i32* %d_int32, align 4
  store i32 %6, i32* %stroke_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %8 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %7, i32 %8)
  %9 = load i32, i32* %stroke_id, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_bezier_stroke_lineto(i32 %vectors_ID, i32 %stroke_id, double %x0, double %y0) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %x0.addr, align 8
  %3 = load double, double* %y0.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 22)
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
define i32 @gimp_vectors_bezier_stroke_conicto(i32 %vectors_ID, i32 %stroke_id, double %x0, double %y0, double %x1, double %y1) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %x0.addr, align 8
  %3 = load double, double* %y0.addr, align 8
  %4 = load double, double* %x1.addr, align 8
  %5 = load double, double* %y1.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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
define i32 @gimp_vectors_bezier_stroke_cubicto(i32 %vectors_ID, i32 %stroke_id, double %x0, double %y0, double %x1, double %y1, double %x2, double %y2) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %stroke_id.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %stroke_id, i32* %stroke_id.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %stroke_id.addr, align 4
  %2 = load double, double* %x0.addr, align 8
  %3 = load double, double* %y0.addr, align 8
  %4 = load double, double* %x1.addr, align 8
  %5 = load double, double* %y1.addr, align 8
  %6 = load double, double* %x2.addr, align 8
  %7 = load double, double* %y2.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 3, double %6, i32 3, double %7, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %9 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %9, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %success, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_bezier_stroke_new_ellipse(i32 %vectors_ID, double %x0, double %y0, double %radius_x, double %radius_y, double %angle) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %stroke_id = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store double %x0, double* %x0.addr, align 8
  store double %y0, double* %y0.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store i32 0, i32* %stroke_id, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load double, double* %x0.addr, align 8
  %2 = load double, double* %y0.addr, align 8
  %3 = load double, double* %radius_x.addr, align 8
  %4 = load double, double* %radius_y.addr, align 8
  %5 = load double, double* %angle.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 3, double %1, i32 3, double %2, i32 3, double %3, i32 3, double %4, i32 3, double %5, i32 22)
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
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %9 = load i32, i32* %d_int32, align 4
  store i32 %9, i32* %stroke_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %11 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %10, i32 %11)
  %12 = load i32, i32* %stroke_id, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_to_selection(i32 %vectors_ID, i32 %operation, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %operation.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %operation, i32* %operation.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %operation.addr, align 4
  %2 = load i32, i32* %antialias.addr, align 4
  %3 = load i32, i32* %feather.addr, align 4
  %4 = load double, double* %feather_radius_x.addr, align 8
  %5 = load double, double* %feather_radius_y.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32* %nreturn_vals, i32 19, i32 %0, i32 0, i32 %1, i32 0, i32 %2, i32 0, i32 %3, i32 3, double %4, i32 3, double %5, i32 22)
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
define i32 @gimp_vectors_import_from_file(i32 %image_ID, i8* %filename, i32 %merge, i32 %scale, i32* %num_vectors, i32** %vectors_ids) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %num_vectors.addr = alloca i32*, align 8
  %vectors_ids.addr = alloca i32**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store i32* %num_vectors, i32** %num_vectors.addr, align 8
  store i32** %vectors_ids, i32*** %vectors_ids.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %merge.addr, align 4
  %3 = load i32, i32* %scale.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 0, i32 %3, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %4 = load i32*, i32** %num_vectors.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32**, i32*** %vectors_ids.addr, align 8
  store i32* null, i32** %5, align 8
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
  %11 = load i32*, i32** %num_vectors.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %num_vectors.addr, align 8
  %13 = load i32, i32* %12, align 4
  %conv3 = sext i32 %13 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 4)
  %14 = bitcast i8* %call4 to i32*
  %15 = load i32**, i32*** %vectors_ids.addr, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32**, i32*** %vectors_ids.addr, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data6 to i32**
  %20 = load i32*, i32** %d_int32array, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32*, i32** %num_vectors.addr, align 8
  %23 = load i32, i32* %22, align 4
  %conv7 = sext i32 %23 to i64
  %mul = mul i64 %conv7, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %21, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %25 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %24, i32 %25)
  %26 = load i32, i32* %success, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_import_from_string(i32 %image_ID, i8* %string, i32 %length, i32 %merge, i32 %scale, i32* %num_vectors, i32** %vectors_ids) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %merge.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %num_vectors.addr = alloca i32*, align 8
  %vectors_ids.addr = alloca i32**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %merge, i32* %merge.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  store i32* %num_vectors, i32** %num_vectors.addr, align 8
  store i32** %vectors_ids, i32*** %vectors_ids.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i32, i32* %length.addr, align 4
  %3 = load i32, i32* %merge.addr, align 4
  %4 = load i32, i32* %scale.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 0, i32 %2, i32 0, i32 %3, i32 0, i32 %4, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %5 = load i32*, i32** %num_vectors.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32**, i32*** %vectors_ids.addr, align 8
  store i32* null, i32** %6, align 8
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
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %11 = load i32, i32* %d_int32, align 4
  %12 = load i32*, i32** %num_vectors.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %num_vectors.addr, align 8
  %14 = load i32, i32* %13, align 4
  %conv3 = sext i32 %14 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 4)
  %15 = bitcast i8* %call4 to i32*
  %16 = load i32**, i32*** %vectors_ids.addr, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %vectors_ids.addr, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int32array = bitcast %union._GimpParamData* %data6 to i32**
  %21 = load i32*, i32** %d_int32array, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32*, i32** %num_vectors.addr, align 8
  %24 = load i32, i32* %23, align 4
  %conv7 = sext i32 %24 to i64
  %mul = mul i64 %conv7, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %22, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %26 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %25, i32 %26)
  %27 = load i32, i32* %success, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_export_to_file(i32 %image_ID, i8* %filename, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 1, i32* %success, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 4, i8* %1, i32 19, i32 %2, i32 22)
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
define i8* @gimp_vectors_export_to_string(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %string = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i8* null, i8** %string, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i32* %nreturn_vals, i32 13, i32 %0, i32 19, i32 %1, i32 22)
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
  store i8* %call3, i8** %string, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %7 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %6, i32 %7)
  %8 = load i8*, i8** %string, align 8
  ret i8* %8
}

declare noalias i8* @g_strdup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
