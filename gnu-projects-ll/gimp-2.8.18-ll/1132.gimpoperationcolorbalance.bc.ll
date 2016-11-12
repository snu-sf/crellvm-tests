; ModuleID = './app/gegl/gimpoperationcolorbalance.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationColorBalanceClass = type { %struct._GimpOperationPointFilterClass }
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
%struct._GimpOperationColorBalance = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpColorBalanceConfig = type { %struct._GimpImageMapConfig, i32, [3 x double], [3 x double], [3 x double], i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSL = type { double, double, double, double }

@gimp_operation_color_balance_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpOperationColorBalance\00", align 1
@gimp_operation_color_balance_parent_class = internal global i8* null, align 8
@GimpOperationColorBalance_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gimp:color-balance\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GIMP Color Balance operation\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1
@gimp_operation_color_balance_map.a = internal constant double 2.500000e-01, align 8
@gimp_operation_color_balance_map.b = internal constant double 3.330000e-01, align 8
@gimp_operation_color_balance_map.scale = internal constant double 7.000000e-01, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_color_balance_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_color_balance_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_color_balance_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_operation_point_filter_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_color_balance_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationColorBalance*)* @gimp_operation_color_balance_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_color_balance_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_color_balance_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_color_balance_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_color_balance_parent_class, align 8
  %1 = load i32, i32* @GimpOperationColorBalance_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationColorBalance_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationColorBalanceClass*
  call void @gimp_operation_color_balance_class_init(%struct._GimpOperationColorBalanceClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_color_balance_init(%struct._GimpOperationColorBalance* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationColorBalance*, align 8
  store %struct._GimpOperationColorBalance* %self, %struct._GimpOperationColorBalance** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_color_balance_class_init(%struct._GimpOperationColorBalanceClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationColorBalanceClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationColorBalanceClass* %klass, %struct._GimpOperationColorBalanceClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationColorBalanceClass*, %struct._GimpOperationColorBalanceClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationColorBalanceClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationColorBalanceClass*, %struct._GimpOperationColorBalanceClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationColorBalanceClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationColorBalanceClass*, %struct._GimpOperationColorBalanceClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationColorBalanceClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_filter_get_type() #5
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
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_color_balance_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_color_balance_config_get_type() #5
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
define internal i32 @gimp_operation_color_balance_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpColorBalanceConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %r = alloca float, align 4
  %g = alloca float, align 4
  %b = alloca float, align 4
  %r_n = alloca float, align 4
  %g_n = alloca float, align 4
  %b_n = alloca float, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  %hsl2 = alloca %struct._GimpHSL, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_filter_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointFilter*
  store %struct._GimpOperationPointFilter* %2, %struct._GimpOperationPointFilter** %point, align 8
  %3 = load %struct._GimpOperationPointFilter*, %struct._GimpOperationPointFilter** %point, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationPointFilter, %struct._GimpOperationPointFilter* %3, i32 0, i32 1
  %4 = load %struct._GObject*, %struct._GObject** %config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_balance_config_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorBalanceConfig*
  store %struct._GimpColorBalanceConfig* %6, %struct._GimpColorBalanceConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %tobool = icmp ne %struct._GimpColorBalanceConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.end
  %12 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool5 = icmp ne i64 %12, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %13, i64 0
  %14 = load float, float* %arrayidx, align 4
  store float %14, float* %r, align 4
  %15 = load float*, float** %src, align 8
  %arrayidx6 = getelementptr inbounds float, float* %15, i64 1
  %16 = load float, float* %arrayidx6, align 4
  store float %16, float* %g, align 4
  %17 = load float*, float** %src, align 8
  %arrayidx7 = getelementptr inbounds float, float* %17, i64 2
  %18 = load float, float* %arrayidx7, align 4
  store float %18, float* %b, align 4
  %r8 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %19 = load float, float* %r, align 4
  %conv = fpext float %19 to double
  store double %conv, double* %r8, align 8
  %g9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %20 = load float, float* %g, align 4
  %conv10 = fpext float %20 to double
  store double %conv10, double* %g9, align 8
  %b11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %21 = load float, float* %b, align 4
  %conv12 = fpext float %21 to double
  store double %conv12, double* %b11, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 3
  store double 0.000000e+00, double* %a, align 8
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %22 = load float, float* %r, align 4
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %23 = load double, double* %l, align 8
  %24 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %cyan_red = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %24, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 0
  %25 = load double, double* %arrayidx13, align 8
  %26 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %cyan_red14 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %26, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %cyan_red14, i32 0, i64 1
  %27 = load double, double* %arrayidx15, align 8
  %28 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %cyan_red16 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %28, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %cyan_red16, i32 0, i64 2
  %29 = load double, double* %arrayidx17, align 8
  %call18 = call float @gimp_operation_color_balance_map(float %22, double %23, double %25, double %27, double %29)
  store float %call18, float* %r_n, align 4
  %30 = load float, float* %g, align 4
  %l19 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %31 = load double, double* %l19, align 8
  %32 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %magenta_green = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %32, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 0
  %33 = load double, double* %arrayidx20, align 8
  %34 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %magenta_green21 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %34, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green21, i32 0, i64 1
  %35 = load double, double* %arrayidx22, align 8
  %36 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %magenta_green23 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %36, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green23, i32 0, i64 2
  %37 = load double, double* %arrayidx24, align 8
  %call25 = call float @gimp_operation_color_balance_map(float %30, double %31, double %33, double %35, double %37)
  store float %call25, float* %g_n, align 4
  %38 = load float, float* %b, align 4
  %l26 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %39 = load double, double* %l26, align 8
  %40 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %yellow_blue = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %40, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 0
  %41 = load double, double* %arrayidx27, align 8
  %42 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %yellow_blue28 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %42, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue28, i32 0, i64 1
  %43 = load double, double* %arrayidx29, align 8
  %44 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %yellow_blue30 = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %44, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue30, i32 0, i64 2
  %45 = load double, double* %arrayidx31, align 8
  %call32 = call float @gimp_operation_color_balance_map(float %38, double %39, double %41, double %43, double %45)
  store float %call32, float* %b_n, align 4
  %46 = load %struct._GimpColorBalanceConfig*, %struct._GimpColorBalanceConfig** %config, align 8
  %preserve_luminosity = getelementptr inbounds %struct._GimpColorBalanceConfig, %struct._GimpColorBalanceConfig* %46, i32 0, i32 5
  %47 = load i32, i32* %preserve_luminosity, align 4
  %tobool33 = icmp ne i32 %47, 0
  br i1 %tobool33, label %if.then.34, label %if.end.55

if.then.34:                                       ; preds = %while.body
  %48 = load float, float* %r_n, align 4
  %conv35 = fpext float %48 to double
  %r36 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double %conv35, double* %r36, align 8
  %49 = load float, float* %g_n, align 4
  %conv37 = fpext float %49 to double
  %g38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  store double %conv37, double* %g38, align 8
  %50 = load float, float* %b_n, align 4
  %conv39 = fpext float %50 to double
  %b40 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double %conv39, double* %b40, align 8
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %51 = load float, float* %r, align 4
  %conv41 = fpext float %51 to double
  %r42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double %conv41, double* %r42, align 8
  %52 = load float, float* %g, align 4
  %conv43 = fpext float %52 to double
  %g44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  store double %conv43, double* %g44, align 8
  %53 = load float, float* %b, align 4
  %conv45 = fpext float %53 to double
  %b46 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double %conv45, double* %b46, align 8
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl2)
  %l47 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl2, i32 0, i32 2
  %54 = load double, double* %l47, align 8
  %l48 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %54, double* %l48, align 8
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb)
  %r49 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %55 = load double, double* %r49, align 8
  %conv50 = fptrunc double %55 to float
  store float %conv50, float* %r_n, align 4
  %g51 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %56 = load double, double* %g51, align 8
  %conv52 = fptrunc double %56 to float
  store float %conv52, float* %g_n, align 4
  %b53 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %57 = load double, double* %b53, align 8
  %conv54 = fptrunc double %57 to float
  store float %conv54, float* %b_n, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.34, %while.body
  %58 = load float, float* %r_n, align 4
  %59 = load float*, float** %dest, align 8
  %arrayidx56 = getelementptr inbounds float, float* %59, i64 0
  store float %58, float* %arrayidx56, align 4
  %60 = load float, float* %g_n, align 4
  %61 = load float*, float** %dest, align 8
  %arrayidx57 = getelementptr inbounds float, float* %61, i64 1
  store float %60, float* %arrayidx57, align 4
  %62 = load float, float* %b_n, align 4
  %63 = load float*, float** %dest, align 8
  %arrayidx58 = getelementptr inbounds float, float* %63, i64 2
  store float %62, float* %arrayidx58, align 4
  %64 = load float*, float** %src, align 8
  %arrayidx59 = getelementptr inbounds float, float* %64, i64 3
  %65 = load float, float* %arrayidx59, align 4
  %66 = load float*, float** %dest, align 8
  %arrayidx60 = getelementptr inbounds float, float* %66, i64 3
  store float %65, float* %arrayidx60, align 4
  %67 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %67, i64 4
  store float* %add.ptr, float** %src, align 8
  %68 = load float*, float** %dest, align 8
  %add.ptr61 = getelementptr inbounds float, float* %68, i64 4
  store float* %add.ptr61, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_balance_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_rgb_to_hsl(%struct._GimpRGB*, %struct._GimpHSL*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @gimp_operation_color_balance_map(float %value, double %lightness, double %shadows, double %midtones, double %highlights) #4 {
entry:
  %value.addr = alloca float, align 4
  %lightness.addr = alloca double, align 8
  %shadows.addr = alloca double, align 8
  %midtones.addr = alloca double, align 8
  %highlights.addr = alloca double, align 8
  store float %value, float* %value.addr, align 4
  store double %lightness, double* %lightness.addr, align 8
  store double %shadows, double* %shadows.addr, align 8
  store double %midtones, double* %midtones.addr, align 8
  store double %highlights, double* %highlights.addr, align 8
  %0 = load double, double* %lightness.addr, align 8
  %sub = fsub double %0, 3.330000e-01
  %div = fdiv double %sub, -2.500000e-01
  %add = fadd double %div, 5.000000e-01
  %cmp = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.10

cond.false:                                       ; preds = %entry
  %1 = load double, double* %lightness.addr, align 8
  %sub1 = fsub double %1, 3.330000e-01
  %div2 = fdiv double %sub1, -2.500000e-01
  %add3 = fadd double %div2, 5.000000e-01
  %cmp4 = fcmp olt double %add3, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %2 = load double, double* %lightness.addr, align 8
  %sub7 = fsub double %2, 3.330000e-01
  %div8 = fdiv double %sub7, -2.500000e-01
  %add9 = fadd double %div8, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %add9, %cond.false.6 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond11, 7.000000e-01
  %3 = load double, double* %shadows.addr, align 8
  %mul12 = fmul double %3, %mul
  store double %mul12, double* %shadows.addr, align 8
  %4 = load double, double* %lightness.addr, align 8
  %sub13 = fsub double %4, 3.330000e-01
  %div14 = fdiv double %sub13, 2.500000e-01
  %add15 = fadd double %div14, 5.000000e-01
  %cmp16 = fcmp ogt double %add15, 1.000000e+00
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end.10
  br label %cond.end.30

cond.false.18:                                    ; preds = %cond.end.10
  %5 = load double, double* %lightness.addr, align 8
  %sub19 = fsub double %5, 3.330000e-01
  %div20 = fdiv double %sub19, 2.500000e-01
  %add21 = fadd double %div20, 5.000000e-01
  %cmp22 = fcmp olt double %add21, 0.000000e+00
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.18
  br label %cond.end.28

cond.false.24:                                    ; preds = %cond.false.18
  %6 = load double, double* %lightness.addr, align 8
  %sub25 = fsub double %6, 3.330000e-01
  %div26 = fdiv double %sub25, 2.500000e-01
  %add27 = fadd double %div26, 5.000000e-01
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.24, %cond.true.23
  %cond29 = phi double [ 0.000000e+00, %cond.true.23 ], [ %add27, %cond.false.24 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.17
  %cond31 = phi double [ 1.000000e+00, %cond.true.17 ], [ %cond29, %cond.end.28 ]
  %7 = load double, double* %lightness.addr, align 8
  %add32 = fadd double %7, 3.330000e-01
  %sub33 = fsub double %add32, 1.000000e+00
  %div34 = fdiv double %sub33, -2.500000e-01
  %add35 = fadd double %div34, 5.000000e-01
  %cmp36 = fcmp ogt double %add35, 1.000000e+00
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.30
  br label %cond.end.52

cond.false.38:                                    ; preds = %cond.end.30
  %8 = load double, double* %lightness.addr, align 8
  %add39 = fadd double %8, 3.330000e-01
  %sub40 = fsub double %add39, 1.000000e+00
  %div41 = fdiv double %sub40, -2.500000e-01
  %add42 = fadd double %div41, 5.000000e-01
  %cmp43 = fcmp olt double %add42, 0.000000e+00
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.38
  br label %cond.end.50

cond.false.45:                                    ; preds = %cond.false.38
  %9 = load double, double* %lightness.addr, align 8
  %add46 = fadd double %9, 3.330000e-01
  %sub47 = fsub double %add46, 1.000000e+00
  %div48 = fdiv double %sub47, -2.500000e-01
  %add49 = fadd double %div48, 5.000000e-01
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.45, %cond.true.44
  %cond51 = phi double [ 0.000000e+00, %cond.true.44 ], [ %add49, %cond.false.45 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.37
  %cond53 = phi double [ 1.000000e+00, %cond.true.37 ], [ %cond51, %cond.end.50 ]
  %mul54 = fmul double %cond31, %cond53
  %mul55 = fmul double %mul54, 7.000000e-01
  %10 = load double, double* %midtones.addr, align 8
  %mul56 = fmul double %10, %mul55
  store double %mul56, double* %midtones.addr, align 8
  %11 = load double, double* %lightness.addr, align 8
  %add57 = fadd double %11, 3.330000e-01
  %sub58 = fsub double %add57, 1.000000e+00
  %div59 = fdiv double %sub58, 2.500000e-01
  %add60 = fadd double %div59, 5.000000e-01
  %cmp61 = fcmp ogt double %add60, 1.000000e+00
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.52
  br label %cond.end.77

cond.false.63:                                    ; preds = %cond.end.52
  %12 = load double, double* %lightness.addr, align 8
  %add64 = fadd double %12, 3.330000e-01
  %sub65 = fsub double %add64, 1.000000e+00
  %div66 = fdiv double %sub65, 2.500000e-01
  %add67 = fadd double %div66, 5.000000e-01
  %cmp68 = fcmp olt double %add67, 0.000000e+00
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.63
  br label %cond.end.75

cond.false.70:                                    ; preds = %cond.false.63
  %13 = load double, double* %lightness.addr, align 8
  %add71 = fadd double %13, 3.330000e-01
  %sub72 = fsub double %add71, 1.000000e+00
  %div73 = fdiv double %sub72, 2.500000e-01
  %add74 = fadd double %div73, 5.000000e-01
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.70, %cond.true.69
  %cond76 = phi double [ 0.000000e+00, %cond.true.69 ], [ %add74, %cond.false.70 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true.62
  %cond78 = phi double [ 1.000000e+00, %cond.true.62 ], [ %cond76, %cond.end.75 ]
  %mul79 = fmul double %cond78, 7.000000e-01
  %14 = load double, double* %highlights.addr, align 8
  %mul80 = fmul double %14, %mul79
  store double %mul80, double* %highlights.addr, align 8
  %15 = load double, double* %shadows.addr, align 8
  %16 = load float, float* %value.addr, align 4
  %conv = fpext float %16 to double
  %add81 = fadd double %conv, %15
  %conv82 = fptrunc double %add81 to float
  store float %conv82, float* %value.addr, align 4
  %17 = load double, double* %midtones.addr, align 8
  %18 = load float, float* %value.addr, align 4
  %conv83 = fpext float %18 to double
  %add84 = fadd double %conv83, %17
  %conv85 = fptrunc double %add84 to float
  store float %conv85, float* %value.addr, align 4
  %19 = load double, double* %highlights.addr, align 8
  %20 = load float, float* %value.addr, align 4
  %conv86 = fpext float %20 to double
  %add87 = fadd double %conv86, %19
  %conv88 = fptrunc double %add87 to float
  store float %conv88, float* %value.addr, align 4
  %21 = load float, float* %value.addr, align 4
  %conv89 = fpext float %21 to double
  %cmp90 = fcmp ogt double %conv89, 1.000000e+00
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.77
  br label %cond.end.102

cond.false.93:                                    ; preds = %cond.end.77
  %22 = load float, float* %value.addr, align 4
  %conv94 = fpext float %22 to double
  %cmp95 = fcmp olt double %conv94, 0.000000e+00
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.false.93
  br label %cond.end.100

cond.false.98:                                    ; preds = %cond.false.93
  %23 = load float, float* %value.addr, align 4
  %conv99 = fpext float %23 to double
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.97
  %cond101 = phi double [ 0.000000e+00, %cond.true.97 ], [ %conv99, %cond.false.98 ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %cond.true.92
  %cond103 = phi double [ 1.000000e+00, %cond.true.92 ], [ %cond101, %cond.end.100 ]
  %conv104 = fptrunc double %cond103 to float
  store float %conv104, float* %value.addr, align 4
  %24 = load float, float* %value.addr, align 4
  ret float %24
}

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
