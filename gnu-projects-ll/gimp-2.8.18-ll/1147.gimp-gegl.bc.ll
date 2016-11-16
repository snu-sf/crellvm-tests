; ModuleID = './app/gegl/gimp-gegl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GeglConfig = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_gegl_init = private unnamed_addr constant [15 x i8] c"gimp_gegl_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tile-width\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tile-height\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"notify::tile-cache-size\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_gegl_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpBaseConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_gegl_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config11, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_base_config_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %16, %struct._GimpBaseConfig** %config, align 8
  %call14 = call %struct._GeglConfig* @gegl_config()
  %17 = bitcast %struct._GeglConfig* %call14 to i8*
  %18 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config, align 8
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %18, i32 0, i32 4
  %19 = load i64, i64* %tile_cache_size, align 8
  %cmp15 = icmp ult i64 %19, 2147483647
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %20 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config, align 8
  %tile_cache_size16 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %20, i32 0, i32 4
  %21 = load i64, i64* %tile_cache_size16, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ 2147483647, %cond.false ]
  %conv = trunc i64 %cond to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %conv, i8* null)
  %22 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config, align 8
  %23 = bitcast %struct._GimpBaseConfig* %22 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBaseConfig*)* @gimp_gegl_notify_tile_cache_size to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call18 = call i64 @gimp_operation_tile_sink_get_type() #4
  %call19 = call i8* @g_type_class_ref(i64 %call18)
  %call20 = call i64 @gimp_operation_tile_source_get_type() #4
  %call21 = call i8* @g_type_class_ref(i64 %call20)
  %call22 = call i64 @gimp_operation_brightness_contrast_get_type() #4
  %call23 = call i8* @g_type_class_ref(i64 %call22)
  %call24 = call i64 @gimp_operation_cage_coef_calc_get_type() #4
  %call25 = call i8* @g_type_class_ref(i64 %call24)
  %call26 = call i64 @gimp_operation_cage_transform_get_type() #4
  %call27 = call i8* @g_type_class_ref(i64 %call26)
  %call28 = call i64 @gimp_operation_color_balance_get_type() #4
  %call29 = call i8* @g_type_class_ref(i64 %call28)
  %call30 = call i64 @gimp_operation_colorize_get_type() #4
  %call31 = call i8* @g_type_class_ref(i64 %call30)
  %call32 = call i64 @gimp_operation_curves_get_type() #4
  %call33 = call i8* @g_type_class_ref(i64 %call32)
  %call34 = call i64 @gimp_operation_desaturate_get_type() #4
  %call35 = call i8* @g_type_class_ref(i64 %call34)
  %call36 = call i64 @gimp_operation_hue_saturation_get_type() #4
  %call37 = call i8* @g_type_class_ref(i64 %call36)
  %call38 = call i64 @gimp_operation_levels_get_type() #4
  %call39 = call i8* @g_type_class_ref(i64 %call38)
  %call40 = call i64 @gimp_operation_posterize_get_type() #4
  %call41 = call i8* @g_type_class_ref(i64 %call40)
  %call42 = call i64 @gimp_operation_threshold_get_type() #4
  %call43 = call i8* @g_type_class_ref(i64 %call42)
  %call44 = call i64 @gimp_operation_point_layer_mode_get_type() #4
  %call45 = call i8* @g_type_class_ref(i64 %call44)
  %call46 = call i64 @gimp_operation_dissolve_mode_get_type() #4
  %call47 = call i8* @g_type_class_ref(i64 %call46)
  %call48 = call i64 @gimp_operation_behind_mode_get_type() #4
  %call49 = call i8* @g_type_class_ref(i64 %call48)
  %call50 = call i64 @gimp_operation_multiply_mode_get_type() #4
  %call51 = call i8* @g_type_class_ref(i64 %call50)
  %call52 = call i64 @gimp_operation_screen_mode_get_type() #4
  %call53 = call i8* @g_type_class_ref(i64 %call52)
  %call54 = call i64 @gimp_operation_overlay_mode_get_type() #4
  %call55 = call i8* @g_type_class_ref(i64 %call54)
  %call56 = call i64 @gimp_operation_difference_mode_get_type() #4
  %call57 = call i8* @g_type_class_ref(i64 %call56)
  %call58 = call i64 @gimp_operation_addition_mode_get_type() #4
  %call59 = call i8* @g_type_class_ref(i64 %call58)
  %call60 = call i64 @gimp_operation_subtract_mode_get_type() #4
  %call61 = call i8* @g_type_class_ref(i64 %call60)
  %call62 = call i64 @gimp_operation_darken_only_mode_get_type() #4
  %call63 = call i8* @g_type_class_ref(i64 %call62)
  %call64 = call i64 @gimp_operation_lighten_only_mode_get_type() #4
  %call65 = call i8* @g_type_class_ref(i64 %call64)
  %call66 = call i64 @gimp_operation_hue_mode_get_type() #4
  %call67 = call i8* @g_type_class_ref(i64 %call66)
  %call68 = call i64 @gimp_operation_saturation_mode_get_type() #4
  %call69 = call i8* @g_type_class_ref(i64 %call68)
  %call70 = call i64 @gimp_operation_color_mode_get_type() #4
  %call71 = call i8* @g_type_class_ref(i64 %call70)
  %call72 = call i64 @gimp_operation_value_mode_get_type() #4
  %call73 = call i8* @g_type_class_ref(i64 %call72)
  %call74 = call i64 @gimp_operation_divide_mode_get_type() #4
  %call75 = call i8* @g_type_class_ref(i64 %call74)
  %call76 = call i64 @gimp_operation_dodge_mode_get_type() #4
  %call77 = call i8* @g_type_class_ref(i64 %call76)
  %call78 = call i64 @gimp_operation_burn_mode_get_type() #4
  %call79 = call i8* @g_type_class_ref(i64 %call78)
  %call80 = call i64 @gimp_operation_hardlight_mode_get_type() #4
  %call81 = call i8* @g_type_class_ref(i64 %call80)
  %call82 = call i64 @gimp_operation_softlight_mode_get_type() #4
  %call83 = call i8* @g_type_class_ref(i64 %call82)
  %call84 = call i64 @gimp_operation_grain_extract_mode_get_type() #4
  %call85 = call i8* @g_type_class_ref(i64 %call84)
  %call86 = call i64 @gimp_operation_grain_merge_mode_get_type() #4
  %call87 = call i8* @g_type_class_ref(i64 %call86)
  %call88 = call i64 @gimp_operation_color_erase_mode_get_type() #4
  %call89 = call i8* @g_type_class_ref(i64 %call88)
  %call90 = call i64 @gimp_operation_erase_mode_get_type() #4
  %call91 = call i8* @g_type_class_ref(i64 %call90)
  %call92 = call i64 @gimp_operation_replace_mode_get_type() #4
  %call93 = call i8* @g_type_class_ref(i64 %call92)
  %call94 = call i64 @gimp_operation_anti_erase_mode_get_type() #4
  %call95 = call i8* @g_type_class_ref(i64 %call94)
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #1

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GeglConfig* @gegl_config() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_gegl_notify_tile_cache_size(%struct._GimpBaseConfig* %config) #0 {
entry:
  %config.addr = alloca %struct._GimpBaseConfig*, align 8
  store %struct._GimpBaseConfig* %config, %struct._GimpBaseConfig** %config.addr, align 8
  %call = call %struct._GeglConfig* @gegl_config()
  %0 = bitcast %struct._GeglConfig* %call to i8*
  %1 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %1, i32 0, i32 4
  %2 = load i64, i64* %tile_cache_size, align 8
  %cmp = icmp ult i64 %2, 2147483647
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %tile_cache_size1 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %3, i32 0, i32 4
  %4 = load i64, i64* %tile_cache_size1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 2147483647, %cond.false ]
  %conv = trunc i64 %cond to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %conv, i8* null)
  ret void
}

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_tile_sink_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_tile_source_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_brightness_contrast_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_cage_coef_calc_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_cage_transform_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_color_balance_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_colorize_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_curves_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_desaturate_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_hue_saturation_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_levels_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_posterize_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_threshold_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_point_layer_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_dissolve_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_behind_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_multiply_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_screen_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_overlay_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_difference_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_addition_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_subtract_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_darken_only_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_lighten_only_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_hue_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_saturation_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_color_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_value_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_divide_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_dodge_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_burn_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_hardlight_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_softlight_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_grain_extract_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_grain_merge_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_color_erase_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_erase_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_replace_mode_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_operation_anti_erase_mode_get_type() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
