; ModuleID = './app/gegl/gimpbrightnesscontrastconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrightnessContrastConfigClass = type { %struct._GimpImageMapConfigClass }
%struct._GimpImageMapConfigClass = type { %struct._GimpViewableClass }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpBrightnessContrastConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpLevelsConfig = type { %struct._GimpImageMapConfig, i32, [5 x double], [5 x double], [5 x double], [5 x double], [5 x double] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_brightness_contrast_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"GimpBrightnessContrastConfig\00", align 1
@gimp_brightness_contrast_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_brightness_contrast_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_brightness_contrast_config_to_levels_config = private unnamed_addr constant [49 x i8] c"gimp_brightness_contrast_config_to_levels_config\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"GIMP_IS_BRIGHTNESS_CONTRAST_CONFIG (config)\00", align 1
@gimp_brightness_contrast_config_parent_class = internal global i8* null, align 8
@GimpBrightnessContrastConfig_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"gimp-tool-brightness-contrast\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"gimpbrightnesscontrastconfig.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brightness_contrast_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brightness_contrast_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_config_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brightness_contrast_config_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrightnessContrastConfig*)* @gimp_brightness_contrast_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_brightness_contrast_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brightness_contrast_config_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brightness_contrast_config_parent_class, align 8
  %1 = load i32, i32* @GimpBrightnessContrastConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrightnessContrastConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrightnessContrastConfigClass*
  call void @gimp_brightness_contrast_config_class_init(%struct._GimpBrightnessContrastConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_init(%struct._GimpBrightnessContrastConfig* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpBrightnessContrastConfig*, align 8
  store %struct._GimpBrightnessContrastConfig* %self, %struct._GimpBrightnessContrastConfig** %self.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_brightness_contrast_config_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLevelsConfig* @gimp_brightness_contrast_config_to_levels_config(%struct._GimpBrightnessContrastConfig* %config) #3 {
entry:
  %retval = alloca %struct._GimpLevelsConfig*, align 8
  %config.addr = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %levels = alloca %struct._GimpLevelsConfig*, align 8
  %brightness = alloca double, align 8
  %slant = alloca double, align 8
  %value = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrightnessContrastConfig* %config, %struct._GimpBrightnessContrastConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpBrightnessContrastConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brightness_contrast_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.gimp_brightness_contrast_config_to_levels_config, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLevelsConfig* null, %struct._GimpLevelsConfig** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_levels_config_get_type() #7
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %13, %struct._GimpLevelsConfig** %levels, align 8
  %14 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config.addr, align 8
  %brightness13 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %14, i32 0, i32 1
  %15 = load double, double* %brightness13, align 8
  %div = fdiv double %15, 2.000000e+00
  store double %div, double* %brightness, align 8
  %16 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config.addr, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %16, i32 0, i32 2
  %17 = load double, double* %contrast, align 8
  %add = fadd double %17, 1.000000e+00
  %mul = fmul double %add, 0x3FE921FB54442D18
  %call14 = call double @tan(double %mul) #6
  store double %call14, double* %slant, align 8
  %18 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config.addr, align 8
  %brightness15 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %18, i32 0, i32 1
  %19 = load double, double* %brightness15, align 8
  %cmp16 = fcmp oge double %19, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.else.48

if.then.17:                                       ; preds = %do.end
  %20 = load double, double* %slant, align 8
  %mul18 = fmul double -5.000000e-01, %20
  %21 = load double, double* %brightness, align 8
  %22 = load double, double* %slant, align 8
  %mul19 = fmul double %21, %22
  %add20 = fadd double %mul18, %mul19
  %add21 = fadd double %add20, 5.000000e-01
  store double %add21, double* %value, align 8
  %23 = load double, double* %value, align 8
  %cmp22 = fcmp olt double %23, 0.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.then.17
  store double 0.000000e+00, double* %value, align 8
  %24 = load double, double* %brightness, align 8
  %sub = fsub double -0.000000e+00, %24
  %25 = load double, double* %slant, align 8
  %mul24 = fmul double %sub, %25
  %26 = load double, double* %slant, align 8
  %mul25 = fmul double 5.000000e-01, %26
  %add26 = fadd double %mul24, %mul25
  %sub27 = fsub double %add26, 5.000000e-01
  %27 = load double, double* %slant, align 8
  %28 = load double, double* %brightness, align 8
  %29 = load double, double* %slant, align 8
  %mul28 = fmul double %28, %29
  %sub29 = fsub double %27, %mul28
  %div30 = fdiv double %sub27, %sub29
  %30 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %30, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 0
  store double %div30, double* %arrayidx, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.23, %if.then.17
  %31 = load double, double* %value, align 8
  %32 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %32, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 0
  store double %31, double* %arrayidx32, align 8
  %33 = load double, double* %slant, align 8
  %mul33 = fmul double 5.000000e-01, %33
  %add34 = fadd double %mul33, 5.000000e-01
  store double %add34, double* %value, align 8
  %34 = load double, double* %value, align 8
  %cmp35 = fcmp ogt double %34, 1.000000e+00
  br i1 %cmp35, label %if.then.36, label %if.end.46

if.then.36:                                       ; preds = %if.end.31
  store double 1.000000e+00, double* %value, align 8
  %35 = load double, double* %brightness, align 8
  %sub37 = fsub double -0.000000e+00, %35
  %36 = load double, double* %slant, align 8
  %mul38 = fmul double %sub37, %36
  %37 = load double, double* %slant, align 8
  %mul39 = fmul double 5.000000e-01, %37
  %add40 = fadd double %mul38, %mul39
  %add41 = fadd double %add40, 5.000000e-01
  %38 = load double, double* %slant, align 8
  %39 = load double, double* %brightness, align 8
  %40 = load double, double* %slant, align 8
  %mul42 = fmul double %39, %40
  %sub43 = fsub double %38, %mul42
  %div44 = fdiv double %add41, %sub43
  %41 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %41, i32 0, i32 4
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 0
  store double %div44, double* %arrayidx45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.36, %if.end.31
  %42 = load double, double* %value, align 8
  %43 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %43, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 0
  store double %42, double* %arrayidx47, align 8
  br label %if.end.79

if.else.48:                                       ; preds = %do.end
  %44 = load double, double* %slant, align 8
  %mul49 = fmul double 5.000000e-01, %44
  %sub50 = fsub double 5.000000e-01, %mul49
  store double %sub50, double* %value, align 8
  %45 = load double, double* %value, align 8
  %cmp51 = fcmp olt double %45, 0.000000e+00
  br i1 %cmp51, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %if.else.48
  store double 0.000000e+00, double* %value, align 8
  %46 = load double, double* %slant, align 8
  %mul53 = fmul double 5.000000e-01, %46
  %sub54 = fsub double %mul53, 5.000000e-01
  %47 = load double, double* %slant, align 8
  %48 = load double, double* %brightness, align 8
  %49 = load double, double* %slant, align 8
  %mul55 = fmul double %48, %49
  %add56 = fadd double %47, %mul55
  %div57 = fdiv double %sub54, %add56
  %50 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %low_input58 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %50, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [5 x double], [5 x double]* %low_input58, i32 0, i64 0
  store double %div57, double* %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.52, %if.else.48
  %51 = load double, double* %value, align 8
  %52 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %low_output61 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %52, i32 0, i32 5
  %arrayidx62 = getelementptr inbounds [5 x double], [5 x double]* %low_output61, i32 0, i64 0
  store double %51, double* %arrayidx62, align 8
  %53 = load double, double* %slant, align 8
  %54 = load double, double* %brightness, align 8
  %mul63 = fmul double %53, %54
  %55 = load double, double* %slant, align 8
  %mul64 = fmul double %55, 5.000000e-01
  %add65 = fadd double %mul63, %mul64
  %add66 = fadd double %add65, 5.000000e-01
  store double %add66, double* %value, align 8
  %56 = load double, double* %value, align 8
  %cmp67 = fcmp ogt double %56, 1.000000e+00
  br i1 %cmp67, label %if.then.68, label %if.end.76

if.then.68:                                       ; preds = %if.end.60
  store double 1.000000e+00, double* %value, align 8
  %57 = load double, double* %slant, align 8
  %mul69 = fmul double 5.000000e-01, %57
  %add70 = fadd double %mul69, 5.000000e-01
  %58 = load double, double* %slant, align 8
  %59 = load double, double* %brightness, align 8
  %60 = load double, double* %slant, align 8
  %mul71 = fmul double %59, %60
  %add72 = fadd double %58, %mul71
  %div73 = fdiv double %add70, %add72
  %61 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %high_input74 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %61, i32 0, i32 4
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %high_input74, i32 0, i64 0
  store double %div73, double* %arrayidx75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.68, %if.end.60
  %62 = load double, double* %value, align 8
  %63 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  %high_output77 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %63, i32 0, i32 6
  %arrayidx78 = getelementptr inbounds [5 x double], [5 x double]* %high_output77, i32 0, i64 0
  store double %62, double* %arrayidx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.76, %if.end.46
  %64 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %levels, align 8
  store %struct._GimpLevelsConfig* %64, %struct._GimpLevelsConfig** %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.else.9
  %65 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %retval
  ret %struct._GimpLevelsConfig* %65
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_levels_config_get_type() #2

; Function Attrs: nounwind
declare double @tan(double) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_class_init(%struct._GimpBrightnessContrastConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrightnessContrastConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpBrightnessContrastConfigClass* %klass, %struct._GimpBrightnessContrastConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpBrightnessContrastConfigClass*, %struct._GimpBrightnessContrastConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrightnessContrastConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrightnessContrastConfigClass*, %struct._GimpBrightnessContrastConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrightnessContrastConfigClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brightness_contrast_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brightness_contrast_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8** %default_stock_id, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call3)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call4)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %2, %struct._GimpBrightnessContrastConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %4)
  %5 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %self, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %5, i32 0, i32 1
  store double %call2, double* %brightness, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %self, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %7, i32 0, i32 2
  store double %call4, double* %contrast, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i32 142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %11, i8* %13, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brightness_contrast_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %2, %struct._GimpBrightnessContrastConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %self, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %5, i32 0, i32 1
  %6 = load double, double* %brightness, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %self, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %8, i32 0, i32 2
  %9 = load double, double* %contrast, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %13, i8* %15, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brightness_contrast_config_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %config_a = alloca %struct._GimpBrightnessContrastConfig*, align 8
  %config_b = alloca %struct._GimpBrightnessContrastConfig*, align 8
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brightness_contrast_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %2, %struct._GimpBrightnessContrastConfig** %config_a, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brightness_contrast_config_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrightnessContrastConfig*
  store %struct._GimpBrightnessContrastConfig* %5, %struct._GimpBrightnessContrastConfig** %config_b, align 8
  %6 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config_a, align 8
  %brightness = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %6, i32 0, i32 1
  %7 = load double, double* %brightness, align 8
  %8 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config_b, align 8
  %brightness4 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %8, i32 0, i32 1
  %9 = load double, double* %brightness4, align 8
  %cmp = fcmp une double %7, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config_a, align 8
  %contrast = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %10, i32 0, i32 2
  %11 = load double, double* %contrast, align 8
  %12 = load %struct._GimpBrightnessContrastConfig*, %struct._GimpBrightnessContrastConfig** %config_b, align 8
  %contrast5 = getelementptr inbounds %struct._GimpBrightnessContrastConfig, %struct._GimpBrightnessContrastConfig* %12, i32 0, i32 2
  %13 = load double, double* %contrast5, align 8
  %cmp6 = fcmp une double %11, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
