; ModuleID = './app/gegl/gimpoperationbrightnesscontrast.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationBrightnessContrastClass = type { %struct._GimpOperationPointFilterClass }
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
%struct._GimpOperationBrightnessContrast = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpBrightnessContrastConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque

@gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"GimpOperationBrightnessContrast\00", align 1
@gimp_operation_brightness_contrast_parent_class = internal global i8* null, align 8
@GimpOperationBrightnessContrast_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"gimp:brightness-contrast\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"GIMP Brightness-Contrast operation\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_brightness_contrast_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_operation_point_filter_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_brightness_contrast_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationBrightnessContrast*)* @gimp_operation_brightness_contrast_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_brightness_contrast_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_brightness_contrast_parent_class, align 8
  %1 = load i32, i32* @GimpOperationBrightnessContrast_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationBrightnessContrast_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationBrightnessContrastClass*
  call void @gimp_operation_brightness_contrast_class_init(%struct._GimpOperationBrightnessContrastClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_brightness_contrast_init(%struct._GimpOperationBrightnessContrast* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationBrightnessContrast*, align 8
  store %struct._GimpOperationBrightnessContrast* %self, %struct._GimpOperationBrightnessContrast** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_brightness_contrast_class_init(%struct._GimpOperationBrightnessContrastClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationBrightnessContrastClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationBrightnessContrastClass* %klass, %struct._GimpOperationBrightnessContrastClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationBrightnessContrastClass*, %struct._GimpOperationBrightnessContrastClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationBrightnessContrastClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationBrightnessContrastClass*, %struct._GimpOperationBrightnessContrastClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationBrightnessContrastClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationBrightnessContrastClass*, %struct._GimpOperationBrightnessContrastClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationBrightnessContrastClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_filter_get_type() #6
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
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_brightness_contrast_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_brightness_contrast_config_get_type() #6
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
define internal i32 @gimp_operation_brightness_contrast_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %brightness = alloca double, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_filter_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointFilter*
  store %struct._GimpOperationPointFilter* %2, %struct._GimpOperationPointFilter** %point, align 8
  %3 = load %struct._GimpOperationPointFilter*, %struct._GimpOperationPointFilter** %point, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationPointFilter, %struct._GimpOperationPointFilter* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_brightness_contrast_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %6, %struct._GimpBrightnessContrastConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %tobool = icmp ne %struct._GimpBrightnessContrastConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %brightness5 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %12, i32 0, i32 1
  %13 = load double, double* %brightness5, align 8
  %div = fdiv double %13, 2.000000e+00
  store double %div, double* %brightness, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool6 = icmp ne i64 %14, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %15, i64 0
  %16 = load float, float* %arrayidx, align 4
  %17 = load double, double* %brightness, align 8
  %18 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %18, i32 0, i32 2
  %19 = load double, double* %contrast, align 8
  %call7 = call float @gimp_operation_brightness_contrast_map(float %16, double %17, double %19)
  %20 = load float*, float** %dest, align 8
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 0
  store float %call7, float* %arrayidx8, align 4
  %21 = load float*, float** %src, align 8
  %arrayidx9 = getelementptr inbounds float, float* %21, i64 1
  %22 = load float, float* %arrayidx9, align 4
  %23 = load double, double* %brightness, align 8
  %24 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast10 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %24, i32 0, i32 2
  %25 = load double, double* %contrast10, align 8
  %call11 = call float @gimp_operation_brightness_contrast_map(float %22, double %23, double %25)
  %26 = load float*, float** %dest, align 8
  %arrayidx12 = getelementptr inbounds float, float* %26, i64 1
  store float %call11, float* %arrayidx12, align 4
  %27 = load float*, float** %src, align 8
  %arrayidx13 = getelementptr inbounds float, float* %27, i64 2
  %28 = load float, float* %arrayidx13, align 4
  %29 = load double, double* %brightness, align 8
  %30 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config, align 8
  %contrast14 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %30, i32 0, i32 2
  %31 = load double, double* %contrast14, align 8
  %call15 = call float @gimp_operation_brightness_contrast_map(float %28, double %29, double %31)
  %32 = load float*, float** %dest, align 8
  %arrayidx16 = getelementptr inbounds float, float* %32, i64 2
  store float %call15, float* %arrayidx16, align 4
  %33 = load float*, float** %src, align 8
  %arrayidx17 = getelementptr inbounds float, float* %33, i64 3
  %34 = load float, float* %arrayidx17, align 4
  %35 = load float*, float** %dest, align 8
  %arrayidx18 = getelementptr inbounds float, float* %35, i64 3
  store float %34, float* %arrayidx18, align 4
  %36 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %36, i64 4
  store float* %add.ptr, float** %src, align 8
  %37 = load float*, float** %dest, align 8
  %add.ptr19 = getelementptr inbounds float, float* %37, i64 4
  store float* %add.ptr19, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brightness_contrast_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @gimp_operation_brightness_contrast_map(float %value, double %brightness, double %contrast) #4 {
entry:
  %value.addr = alloca float, align 4
  %brightness.addr = alloca double, align 8
  %contrast.addr = alloca double, align 8
  %slant = alloca double, align 8
  store float %value, float* %value.addr, align 4
  store double %brightness, double* %brightness.addr, align 8
  store double %contrast, double* %contrast.addr, align 8
  %0 = load double, double* %brightness.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, float* %value.addr, align 4
  %conv = fpext float %1 to double
  %2 = load double, double* %brightness.addr, align 8
  %add = fadd double 1.000000e+00, %2
  %mul = fmul double %conv, %add
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %value.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load float, float* %value.addr, align 4
  %conv2 = fpext float %3 to double
  %4 = load float, float* %value.addr, align 4
  %conv3 = fpext float %4 to double
  %sub = fsub double 1.000000e+00, %conv3
  %5 = load double, double* %brightness.addr, align 8
  %mul4 = fmul double %sub, %5
  %add5 = fadd double %conv2, %mul4
  %conv6 = fptrunc double %add5 to float
  store float %conv6, float* %value.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load double, double* %contrast.addr, align 8
  %add7 = fadd double %6, 1.000000e+00
  %mul8 = fmul double %add7, 0x3FE921FB54442D18
  %call = call double @tan(double %mul8) #7
  store double %call, double* %slant, align 8
  %7 = load float, float* %value.addr, align 4
  %conv9 = fpext float %7 to double
  %sub10 = fsub double %conv9, 5.000000e-01
  %8 = load double, double* %slant, align 8
  %mul11 = fmul double %sub10, %8
  %add12 = fadd double %mul11, 5.000000e-01
  %conv13 = fptrunc double %add12 to float
  store float %conv13, float* %value.addr, align 4
  %9 = load float, float* %value.addr, align 4
  ret float %9
}

; Function Attrs: nounwind
declare double @tan(double) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
