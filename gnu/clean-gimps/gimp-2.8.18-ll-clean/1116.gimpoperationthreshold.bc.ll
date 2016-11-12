; ModuleID = './app/gegl/gimpoperationthreshold.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationThresholdClass = type { %struct._GimpOperationPointFilterClass }
%struct._GimpOperationPointFilterClass = type { %struct._GeglOperationPointFilterClass }
%struct._GeglOperationPointFilterClass = type { %struct._GeglOperationFilterClass, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)*, i32 (%struct._GeglOperation*, %struct._cl_mem*, %struct._cl_mem*, i64, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationFilterClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationClass = type { %struct._GObjectClass, i8*, i8*, %struct._GHashTable*, i64, void (%struct._GeglOperation*)*, void (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)*, i32 (%struct._GeglOperation*, %struct._GeglOperationContext*, i8*, %struct._GeglRectangle*, i32)*, %struct._GeglNode* (%struct._GeglOperation*, i32, i32)*, [10 x i8*] }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GHashTable = type opaque
%struct._GeglOperation = type { %struct._GObject, %struct._GeglNode* }
%struct._GeglNode = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GeglOperationContext = type opaque
%struct._GeglBuffer = type opaque
%struct._cl_mem = type opaque
%struct._GimpOperationThreshold = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpThresholdConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque

@gimp_operation_threshold_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GimpOperationThreshold\00", align 1
@gimp_operation_threshold_parent_class = internal global i8* null, align 8
@GimpOperationThreshold_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gimp:threshold\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GIMP Threshold operation\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_threshold_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_threshold_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_threshold_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_operation_point_filter_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_threshold_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationThreshold*)* @gimp_operation_threshold_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_threshold_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_threshold_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_threshold_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_threshold_parent_class, align 8
  %1 = load i32, i32* @GimpOperationThreshold_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationThreshold_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationThresholdClass*
  call void @gimp_operation_threshold_class_init(%struct._GimpOperationThresholdClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_threshold_init(%struct._GimpOperationThreshold* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationThreshold*, align 8
  store %struct._GimpOperationThreshold* %self, %struct._GimpOperationThreshold** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_threshold_class_init(%struct._GimpOperationThresholdClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationThresholdClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationThresholdClass* %klass, %struct._GimpOperationThresholdClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationThresholdClass*, %struct._GimpOperationThresholdClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationThresholdClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationThresholdClass*, %struct._GimpOperationThresholdClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationThresholdClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #4
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationThresholdClass*, %struct._GimpOperationThresholdClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationThresholdClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_filter_get_type() #4
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationPointFilterClass*
  store %struct._GeglOperationPointFilterClass* %8, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_filter_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_filter_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_threshold_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_threshold_config_get_type() #4
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 %call5, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_point_filter_get_type() #2

declare void @gimp_operation_point_filter_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_operation_point_filter_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_threshold_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpThresholdConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %value = alloca float, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_filter_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointFilter*
  store %struct._GimpOperationPointFilter* %2, %struct._GimpOperationPointFilter** %point, align 8
  %3 = load %struct._GimpOperationPointFilter*, %struct._GimpOperationPointFilter** %point, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationPointFilter, %struct._GimpOperationPointFilter* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_threshold_config_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpThresholdConfig*
  store %struct._GimpThresholdConfig* %6, %struct._GimpThresholdConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %tobool = icmp ne %struct._GimpThresholdConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %land.end, %if.end
  %12 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool5 = icmp ne i64 %12, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %13, i64 0
  %14 = load float, float* %arrayidx, align 4
  %15 = load float*, float** %src, align 8
  %arrayidx6 = getelementptr inbounds float, float* %15, i64 1
  %16 = load float, float* %arrayidx6, align 4
  %cmp = fcmp ogt float %14, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %17 = load float*, float** %src, align 8
  %arrayidx7 = getelementptr inbounds float, float* %17, i64 0
  %18 = load float, float* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %19 = load float*, float** %src, align 8
  %arrayidx8 = getelementptr inbounds float, float* %19, i64 1
  %20 = load float, float* %arrayidx8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %18, %cond.true ], [ %20, %cond.false ]
  store float %cond, float* %value, align 4
  %21 = load float, float* %value, align 4
  %22 = load float*, float** %src, align 8
  %arrayidx9 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx9, align 4
  %cmp10 = fcmp ogt float %21, %23
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %24 = load float, float* %value, align 4
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end
  %25 = load float*, float** %src, align 8
  %arrayidx13 = getelementptr inbounds float, float* %25, i64 2
  %26 = load float, float* %arrayidx13, align 4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi float [ %24, %cond.true.11 ], [ %26, %cond.false.12 ]
  store float %cond15, float* %value, align 4
  %27 = load float, float* %value, align 4
  %conv = fpext float %27 to double
  %28 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %low = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %28, i32 0, i32 1
  %29 = load double, double* %low, align 8
  %cmp16 = fcmp oge double %conv, %29
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.14
  %30 = load float, float* %value, align 4
  %conv18 = fpext float %30 to double
  %31 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %high = getelementptr inbounds %struct._GimpThresholdConfig, %struct._GimpThresholdConfig* %31, i32 0, i32 2
  %32 = load double, double* %high, align 8
  %cmp19 = fcmp ole double %conv18, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.14
  %33 = phi i1 [ false, %cond.end.14 ], [ %cmp19, %land.rhs ]
  %cond21 = select i1 %33, double 1.000000e+00, double 0.000000e+00
  %conv22 = fptrunc double %cond21 to float
  store float %conv22, float* %value, align 4
  %34 = load float, float* %value, align 4
  %35 = load float*, float** %dest, align 8
  %arrayidx23 = getelementptr inbounds float, float* %35, i64 0
  store float %34, float* %arrayidx23, align 4
  %36 = load float, float* %value, align 4
  %37 = load float*, float** %dest, align 8
  %arrayidx24 = getelementptr inbounds float, float* %37, i64 1
  store float %36, float* %arrayidx24, align 4
  %38 = load float, float* %value, align 4
  %39 = load float*, float** %dest, align 8
  %arrayidx25 = getelementptr inbounds float, float* %39, i64 2
  store float %38, float* %arrayidx25, align 4
  %40 = load float*, float** %src, align 8
  %arrayidx26 = getelementptr inbounds float, float* %40, i64 3
  %41 = load float, float* %arrayidx26, align 4
  %42 = load float*, float** %dest, align 8
  %arrayidx27 = getelementptr inbounds float, float* %42, i64 3
  store float %41, float* %arrayidx27, align 4
  %43 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %43, i64 4
  store float* %add.ptr, float** %src, align 8
  %44 = load float*, float** %dest, align 8
  %add.ptr28 = getelementptr inbounds float, float* %44, i64 4
  store float* %add.ptr28, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_threshold_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
