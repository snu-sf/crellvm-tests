; ModuleID = './app/gegl/gimpoperationhuesaturation.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationHueSaturationClass = type { %struct._GimpOperationPointFilterClass }
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
%struct._GimpOperationHueSaturation = type { %struct._GimpOperationPointFilter }
%struct._GimpOperationPointFilter = type { %struct._GeglOperationPointFilter, %struct._GObject* }
%struct._GeglOperationPointFilter = type { %struct._GeglOperationFilter }
%struct._GeglOperationFilter = type { %struct._GeglOperation }
%struct._GimpHueSaturationConfig = type { %struct._GimpImageMapConfig, i32, [7 x double], [7 x double], [7 x double], double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpHSL = type { double, double, double, double }

@gimp_operation_hue_saturation_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpOperationHueSaturation\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_operation_hue_saturation_map = private unnamed_addr constant [34 x i8] c"gimp_operation_hue_saturation_map\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GIMP_IS_HUE_SATURATION_CONFIG (config)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"result != NULL\00", align 1
@gimp_operation_hue_saturation_parent_class = internal global i8* null, align 8
@GimpOperationHueSaturation_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp:hue-saturation\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"GIMP Hue-Saturation operation\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"The config object\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_hue_saturation_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_hue_saturation_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_hue_saturation_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationHueSaturation*)* @gimp_operation_hue_saturation_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_hue_saturation_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_filter_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_hue_saturation_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_hue_saturation_parent_class, align 8
  %1 = load i32, i32* @GimpOperationHueSaturation_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationHueSaturation_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationHueSaturationClass*
  call void @gimp_operation_hue_saturation_class_init(%struct._GimpOperationHueSaturationClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_hue_saturation_init(%struct._GimpOperationHueSaturation* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationHueSaturation*, align 8
  store %struct._GimpOperationHueSaturation* %self, %struct._GimpOperationHueSaturation** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_operation_hue_saturation_map(%struct._GimpHueSaturationConfig* %config, %struct._GimpRGB* %color, i32 %range, %struct._GimpRGB* %result) #3 {
entry:
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %range.addr = alloca i32, align 4
  %result.addr = alloca %struct._GimpRGB*, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %range, i32* %range.addr, align 4
  store %struct._GimpRGB* %result, %struct._GimpRGB** %result.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_operation_hue_saturation_map, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_operation_hue_saturation_map, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  %cmp18 = icmp ne %struct._GimpRGB* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_operation_hue_saturation_map, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %15, %struct._GimpHSL* %hsl)
  %16 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %17 = load i32, i32* %range.addr, align 4
  %h = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %18 = load double, double* %h, align 8
  %call23 = call double @map_hue(%struct._GimpHueSaturationConfig* %16, i32 %17, double %18)
  %h24 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %call23, double* %h24, align 8
  %19 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %20 = load i32, i32* %range.addr, align 4
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %21 = load double, double* %s, align 8
  %call25 = call double @map_saturation(%struct._GimpHueSaturationConfig* %19, i32 %20, double %21)
  %s26 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %call25, double* %s26, align 8
  %22 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %23 = load i32, i32* %range.addr, align 4
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %24 = load double, double* %l, align 8
  %call27 = call double @map_lightness(%struct._GimpHueSaturationConfig* %22, i32 %23, double %24)
  %l28 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %call27, double* %l28, align 8
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %result.addr, align 8
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %25)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_hue_saturation_config_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_rgb_to_hsl(%struct._GimpRGB*, %struct._GimpHSL*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @map_hue(%struct._GimpHueSaturationConfig* %config, i32 %range, double %value) #5 {
entry:
  %retval = alloca double, align 8
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %range.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  store i32 %range, i32* %range.addr, align 4
  store double %value, double* %value.addr, align 8
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load i32, i32* %range.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %hue1 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %3, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [7 x double], [7 x double]* %hue1, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx2, align 8
  %add = fadd double %1, %4
  %div = fdiv double %add, 2.000000e+00
  %5 = load double, double* %value.addr, align 8
  %add3 = fadd double %5, %div
  store double %add3, double* %value.addr, align 8
  %6 = load double, double* %value.addr, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load double, double* %value.addr, align 8
  %add4 = fadd double %7, 1.000000e+00
  store double %add4, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load double, double* %value.addr, align 8
  %cmp5 = fcmp ogt double %8, 1.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %9 = load double, double* %value.addr, align 8
  %sub = fsub double %9, 1.000000e+00
  store double %sub, double* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %10 = load double, double* %value.addr, align 8
  store double %10, double* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @map_saturation(%struct._GimpHueSaturationConfig* %config, i32 %range, double %value) #5 {
entry:
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %range.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %v = alloca double, align 8
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  store i32 %range, i32* %range.addr, align 4
  store double %value, double* %value.addr, align 8
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load i32, i32* %range.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %saturation1 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %3, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [7 x double], [7 x double]* %saturation1, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx2, align 8
  %add = fadd double %1, %4
  store double %add, double* %v, align 8
  %5 = load double, double* %v, align 8
  %add3 = fadd double %5, 1.000000e+00
  %6 = load double, double* %value.addr, align 8
  %mul = fmul double %6, %add3
  store double %mul, double* %value.addr, align 8
  %7 = load double, double* %value.addr, align 8
  %cmp = fcmp ogt double %7, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %8 = load double, double* %value.addr, align 8
  %cmp4 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %9 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi double [ 0.000000e+00, %cond.true.5 ], [ %9, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  ret double %cond8
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @map_lightness(%struct._GimpHueSaturationConfig* %config, i32 %range, double %value) #5 {
entry:
  %retval = alloca double, align 8
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %range.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %v = alloca double, align 8
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  store i32 %range, i32* %range.addr, align 4
  store double %value, double* %value.addr, align 8
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %0, i32 0, i32 4
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load i32, i32* %range.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %lightness1 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %3, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [7 x double], [7 x double]* %lightness1, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx2, align 8
  %add = fadd double %1, %4
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %v, align 8
  %5 = load double, double* %v, align 8
  %cmp = fcmp olt double %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %value.addr, align 8
  %7 = load double, double* %v, align 8
  %add3 = fadd double %7, 1.000000e+00
  %mul = fmul double %6, %add3
  store double %mul, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load double, double* %value.addr, align 8
  %9 = load double, double* %v, align 8
  %10 = load double, double* %value.addr, align 8
  %sub = fsub double 1.000000e+00, %10
  %mul4 = fmul double %9, %sub
  %add5 = fadd double %8, %mul4
  store double %add5, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load double, double* %retval
  ret double %11
}

declare void @gimp_hsl_to_rgb(%struct._GimpHSL*, %struct._GimpRGB*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_hue_saturation_class_init(%struct._GimpOperationHueSaturationClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationHueSaturationClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointFilterClass*, align 8
  store %struct._GimpOperationHueSaturationClass* %klass, %struct._GimpOperationHueSaturationClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationHueSaturationClass*, %struct._GimpOperationHueSaturationClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationHueSaturationClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationHueSaturationClass*, %struct._GimpOperationHueSaturationClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationHueSaturationClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationHueSaturationClass*, %struct._GimpOperationHueSaturationClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationHueSaturationClass* %6 to %struct._GTypeClass*
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
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationPointFilterClass*, %struct._GeglOperationPointFilterClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointFilterClass, %struct._GeglOperationPointFilterClass* %12, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_hue_saturation_process, i32 (%struct._GeglOperation*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_hue_saturation_config_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i64 %call5, i32 7)
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
define internal i32 @gimp_operation_hue_saturation_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %point = alloca %struct._GimpOperationPointFilter*, align 8
  %config = alloca %struct._GimpHueSaturationConfig*, align 8
  %src = alloca float*, align 8
  %dest = alloca float*, align 8
  %overlap = alloca float, align 4
  %rgb = alloca %struct._GimpRGB, align 8
  %hsl = alloca %struct._GimpHSL, align 8
  %h = alloca double, align 8
  %hue_counter = alloca i32, align 4
  %hue = alloca i32, align 4
  %secondary_hue = alloca i32, align 4
  %use_secondary_hue = alloca i32, align 4
  %primary_intensity = alloca float, align 4
  %secondary_intensity = alloca float, align 4
  %hue_threshold = alloca double, align 8
  %mapped_primary_hue = alloca double, align 8
  %mapped_secondary_hue = alloca double, align 8
  %diff = alloca double, align 8
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
  %call3 = call i64 @gimp_hue_saturation_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %6, %struct._GimpHueSaturationConfig** %config, align 8
  %7 = load i8*, i8** %in_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %src, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %dest, align 8
  %11 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %tobool = icmp ne %struct._GimpHueSaturationConfig* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %overlap5 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %12, i32 0, i32 5
  %13 = load double, double* %overlap5, align 8
  %div = fdiv double %13, 2.000000e+00
  %conv = fptrunc double %div to float
  store float %conv, float* %overlap, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.102, %if.end
  %14 = load i64, i64* %samples.addr, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %samples.addr, align 8
  %tobool6 = icmp ne i64 %14, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %hue, align 4
  store i32 0, i32* %secondary_hue, align 4
  store i32 0, i32* %use_secondary_hue, align 4
  store float 0.000000e+00, float* %primary_intensity, align 4
  store float 0.000000e+00, float* %secondary_intensity, align 4
  %15 = load float*, float** %src, align 8
  %arrayidx = getelementptr inbounds float, float* %15, i64 0
  %16 = load float, float* %arrayidx, align 4
  %conv7 = fpext float %16 to double
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double %conv7, double* %r, align 8
  %17 = load float*, float** %src, align 8
  %arrayidx8 = getelementptr inbounds float, float* %17, i64 1
  %18 = load float, float* %arrayidx8, align 4
  %conv9 = fpext float %18 to double
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  store double %conv9, double* %g, align 8
  %19 = load float*, float** %src, align 8
  %arrayidx10 = getelementptr inbounds float, float* %19, i64 2
  %20 = load float, float* %arrayidx10, align 4
  %conv11 = fpext float %20 to double
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double %conv11, double* %b, align 8
  call void @gimp_rgb_to_hsl(%struct._GimpRGB* %rgb, %struct._GimpHSL* %hsl)
  %h12 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %21 = load double, double* %h12, align 8
  %mul = fmul double %21, 6.000000e+00
  store double %mul, double* %h, align 8
  store i32 0, i32* %hue_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %22 = load i32, i32* %hue_counter, align 4
  %cmp = icmp slt i32 %22, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %hue_counter, align 4
  %conv14 = sitofp i32 %23 to double
  %add = fadd double %conv14, 5.000000e-01
  store double %add, double* %hue_threshold, align 8
  %24 = load double, double* %h, align 8
  %25 = load double, double* %hue_threshold, align 8
  %26 = load float, float* %overlap, align 4
  %conv15 = fpext float %26 to double
  %add16 = fadd double %25, %conv15
  %cmp17 = fcmp olt double %24, %add16
  br i1 %cmp17, label %if.then.19, label %if.end.39

if.then.19:                                       ; preds = %for.body
  %27 = load i32, i32* %hue_counter, align 4
  store i32 %27, i32* %hue, align 4
  %28 = load float, float* %overlap, align 4
  %conv20 = fpext float %28 to double
  %cmp21 = fcmp ogt double %conv20, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %29 = load double, double* %h, align 8
  %30 = load double, double* %hue_threshold, align 8
  %31 = load float, float* %overlap, align 4
  %conv23 = fpext float %31 to double
  %sub = fsub double %30, %conv23
  %cmp24 = fcmp ogt double %29, %sub
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true
  store i32 1, i32* %use_secondary_hue, align 4
  %32 = load i32, i32* %hue_counter, align 4
  %add27 = add nsw i32 %32, 1
  store i32 %add27, i32* %secondary_hue, align 4
  %33 = load double, double* %h, align 8
  %34 = load double, double* %hue_threshold, align 8
  %sub28 = fsub double %33, %34
  %35 = load float, float* %overlap, align 4
  %conv29 = fpext float %35 to double
  %add30 = fadd double %sub28, %conv29
  %36 = load float, float* %overlap, align 4
  %conv31 = fpext float %36 to double
  %mul32 = fmul double 2.000000e+00, %conv31
  %div33 = fdiv double %add30, %mul32
  %conv34 = fptrunc double %div33 to float
  store float %conv34, float* %secondary_intensity, align 4
  %37 = load float, float* %secondary_intensity, align 4
  %conv35 = fpext float %37 to double
  %sub36 = fsub double 1.000000e+00, %conv35
  %conv37 = fptrunc double %sub36 to float
  store float %conv37, float* %primary_intensity, align 4
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  store i32 0, i32* %use_secondary_hue, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.26
  br label %for.end

if.end.39:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %38 = load i32, i32* %hue_counter, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %hue_counter, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.38, %for.cond
  %39 = load i32, i32* %hue, align 4
  %cmp40 = icmp sge i32 %39, 6
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end
  store i32 0, i32* %hue, align 4
  store i32 0, i32* %use_secondary_hue, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end
  %40 = load i32, i32* %secondary_hue, align 4
  %cmp44 = icmp sge i32 %40, 6
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store i32 0, i32* %secondary_hue, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.43
  %41 = load i32, i32* %hue, align 4
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %hue, align 4
  %42 = load i32, i32* %secondary_hue, align 4
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %secondary_hue, align 4
  %43 = load i32, i32* %use_secondary_hue, align 4
  %tobool50 = icmp ne i32 %43, 0
  br i1 %tobool50, label %if.then.51, label %if.else.92

if.then.51:                                       ; preds = %if.end.47
  %44 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %45 = load i32, i32* %hue, align 4
  %h52 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %46 = load double, double* %h52, align 8
  %call53 = call double @map_hue(%struct._GimpHueSaturationConfig* %44, i32 %45, double %46)
  store double %call53, double* %mapped_primary_hue, align 8
  %47 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %48 = load i32, i32* %secondary_hue, align 4
  %h54 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %49 = load double, double* %h54, align 8
  %call55 = call double @map_hue(%struct._GimpHueSaturationConfig* %47, i32 %48, double %49)
  store double %call55, double* %mapped_secondary_hue, align 8
  %50 = load double, double* %mapped_primary_hue, align 8
  %51 = load double, double* %mapped_secondary_hue, align 8
  %sub56 = fsub double %50, %51
  store double %sub56, double* %diff, align 8
  %52 = load double, double* %diff, align 8
  %cmp57 = fcmp olt double %52, -5.000000e-01
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.51
  %53 = load double, double* %mapped_secondary_hue, align 8
  %sub60 = fsub double %53, 1.000000e+00
  store double %sub60, double* %mapped_secondary_hue, align 8
  br label %if.end.67

if.else.61:                                       ; preds = %if.then.51
  %54 = load double, double* %diff, align 8
  %cmp62 = fcmp oge double %54, 5.000000e-01
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.else.61
  %55 = load double, double* %mapped_secondary_hue, align 8
  %add65 = fadd double %55, 1.000000e+00
  store double %add65, double* %mapped_secondary_hue, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.else.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.59
  %56 = load double, double* %mapped_primary_hue, align 8
  %57 = load float, float* %primary_intensity, align 4
  %conv68 = fpext float %57 to double
  %mul69 = fmul double %56, %conv68
  %58 = load double, double* %mapped_secondary_hue, align 8
  %59 = load float, float* %secondary_intensity, align 4
  %conv70 = fpext float %59 to double
  %mul71 = fmul double %58, %conv70
  %add72 = fadd double %mul69, %mul71
  %h73 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %add72, double* %h73, align 8
  %60 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %61 = load i32, i32* %hue, align 4
  %s = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %62 = load double, double* %s, align 8
  %call74 = call double @map_saturation(%struct._GimpHueSaturationConfig* %60, i32 %61, double %62)
  %63 = load float, float* %primary_intensity, align 4
  %conv75 = fpext float %63 to double
  %mul76 = fmul double %call74, %conv75
  %64 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %65 = load i32, i32* %secondary_hue, align 4
  %s77 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %66 = load double, double* %s77, align 8
  %call78 = call double @map_saturation(%struct._GimpHueSaturationConfig* %64, i32 %65, double %66)
  %67 = load float, float* %secondary_intensity, align 4
  %conv79 = fpext float %67 to double
  %mul80 = fmul double %call78, %conv79
  %add81 = fadd double %mul76, %mul80
  %s82 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %add81, double* %s82, align 8
  %68 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %69 = load i32, i32* %hue, align 4
  %l = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %70 = load double, double* %l, align 8
  %call83 = call double @map_lightness(%struct._GimpHueSaturationConfig* %68, i32 %69, double %70)
  %71 = load float, float* %primary_intensity, align 4
  %conv84 = fpext float %71 to double
  %mul85 = fmul double %call83, %conv84
  %72 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %73 = load i32, i32* %secondary_hue, align 4
  %l86 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %74 = load double, double* %l86, align 8
  %call87 = call double @map_lightness(%struct._GimpHueSaturationConfig* %72, i32 %73, double %74)
  %75 = load float, float* %secondary_intensity, align 4
  %conv88 = fpext float %75 to double
  %mul89 = fmul double %call87, %conv88
  %add90 = fadd double %mul85, %mul89
  %l91 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %add90, double* %l91, align 8
  br label %if.end.102

if.else.92:                                       ; preds = %if.end.47
  %76 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %77 = load i32, i32* %hue, align 4
  %h93 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  %78 = load double, double* %h93, align 8
  %call94 = call double @map_hue(%struct._GimpHueSaturationConfig* %76, i32 %77, double %78)
  %h95 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 0
  store double %call94, double* %h95, align 8
  %79 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %80 = load i32, i32* %hue, align 4
  %s96 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  %81 = load double, double* %s96, align 8
  %call97 = call double @map_saturation(%struct._GimpHueSaturationConfig* %79, i32 %80, double %81)
  %s98 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 1
  store double %call97, double* %s98, align 8
  %82 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config, align 8
  %83 = load i32, i32* %hue, align 4
  %l99 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  %84 = load double, double* %l99, align 8
  %call100 = call double @map_lightness(%struct._GimpHueSaturationConfig* %82, i32 %83, double %84)
  %l101 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %hsl, i32 0, i32 2
  store double %call100, double* %l101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.92, %if.end.67
  call void @gimp_hsl_to_rgb(%struct._GimpHSL* %hsl, %struct._GimpRGB* %rgb)
  %r103 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  %85 = load double, double* %r103, align 8
  %conv104 = fptrunc double %85 to float
  %86 = load float*, float** %dest, align 8
  %arrayidx105 = getelementptr inbounds float, float* %86, i64 0
  store float %conv104, float* %arrayidx105, align 4
  %g106 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  %87 = load double, double* %g106, align 8
  %conv107 = fptrunc double %87 to float
  %88 = load float*, float** %dest, align 8
  %arrayidx108 = getelementptr inbounds float, float* %88, i64 1
  store float %conv107, float* %arrayidx108, align 4
  %b109 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  %89 = load double, double* %b109, align 8
  %conv110 = fptrunc double %89 to float
  %90 = load float*, float** %dest, align 8
  %arrayidx111 = getelementptr inbounds float, float* %90, i64 2
  store float %conv110, float* %arrayidx111, align 4
  %91 = load float*, float** %src, align 8
  %arrayidx112 = getelementptr inbounds float, float* %91, i64 3
  %92 = load float, float* %arrayidx112, align 4
  %93 = load float*, float** %dest, align 8
  %arrayidx113 = getelementptr inbounds float, float* %93, i64 3
  store float %92, float* %arrayidx113, align 4
  %94 = load float*, float** %src, align 8
  %add.ptr = getelementptr inbounds float, float* %94, i64 4
  store float* %add.ptr, float** %src, align 8
  %95 = load float*, float** %dest, align 8
  %add.ptr114 = getelementptr inbounds float, float* %95, i64 4
  store float* %add.ptr114, float** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
