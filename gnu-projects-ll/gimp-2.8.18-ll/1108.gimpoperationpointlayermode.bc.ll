; ModuleID = './app/gegl/gimpoperationpointlayermode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationPointLayerModeClass = type { %struct._GeglOperationPointComposerClass }
%struct._GeglOperationPointComposerClass = type { %struct._GeglOperationComposerClass, i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)*, i32 (%struct._GeglOperation*, %struct._cl_mem*, %struct._cl_mem*, %struct._cl_mem*, i64, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationComposerClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
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
%struct._GimpOperationPointLayerMode = type { %struct._GeglOperationPointComposer, i32 }
%struct._GeglOperationPointComposer = type { %struct._GeglOperationComposer }
%struct._GeglOperationComposer = type { %struct._GeglOperation }
%struct._GRand = type opaque
%union._Babl = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpRGB = type { double, double, double, double }

@gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"GimpOperationPointLayerMode\00", align 1
@gimp_operation_point_layer_mode_parent_class = internal global i8* null, align 8
@GimpOperationPointLayerMode_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gimp:point-layer-mode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP point layer mode operation\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"compositors\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"blend-mode\00", align 1
@dissolve_lut = internal global [120000 x i32] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"gimpoperationpointlayermode.c\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"RaGaBaA float\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Unknown layer mode\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"CIE LCH(ab) float\00", align 1
@__func__.gimp_operation_point_layer_mode_get_new_color_lchab = private unnamed_addr constant [52 x i8] c"gimp_operation_point_layer_mode_get_new_color_lchab\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_point_layer_mode_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gegl_operation_point_composer_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 400, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_point_layer_mode_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationPointLayerMode*)* @gimp_operation_point_layer_mode_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_point_composer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_point_layer_mode_parent_class, align 8
  %1 = load i32, i32* @GimpOperationPointLayerMode_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationPointLayerMode_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationPointLayerModeClass*
  call void @gimp_operation_point_layer_mode_class_init(%struct._GimpOperationPointLayerModeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_init(%struct._GimpOperationPointLayerMode* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationPointLayerMode*, align 8
  store %struct._GimpOperationPointLayerMode* %self, %struct._GimpOperationPointLayerMode** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_class_init(%struct._GimpOperationPointLayerModeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationPointLayerModeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %point_class = alloca %struct._GeglOperationPointComposerClass*, align 8
  %rand = alloca %struct._GRand*, align 8
  %i = alloca i32, align 4
  store %struct._GimpOperationPointLayerModeClass* %klass, %struct._GimpOperationPointLayerModeClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationPointLayerModeClass*, %struct._GimpOperationPointLayerModeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationPointLayerModeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationPointLayerModeClass*, %struct._GimpOperationPointLayerModeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationPointLayerModeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationPointLayerModeClass*, %struct._GimpOperationPointLayerModeClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationPointLayerModeClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_point_composer_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationPointComposerClass*
  store %struct._GeglOperationPointComposerClass* %8, %struct._GeglOperationPointComposerClass** %point_class, align 8
  %call5 = call %struct._GRand* @g_rand_new_with_seed(i32 737893334)
  store %struct._GRand* %call5, %struct._GRand** %rand, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_layer_mode_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_point_layer_mode_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %12 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %prepare = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %12, i32 0, i32 6
  store void (%struct._GeglOperation*)* @gimp_operation_point_layer_mode_prepare, void (%struct._GeglOperation*)** %prepare, align 8
  %13 = load %struct._GeglOperationPointComposerClass*, %struct._GeglOperationPointComposerClass** %point_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationPointComposerClass, %struct._GeglOperationPointComposerClass* %13, i32 0, i32 1
  store i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)* @gimp_operation_point_layer_mode_process, i32 (%struct._GeglOperation*, i8*, i8*, i8*, i64, %struct._GeglRectangle*, i32)** %process, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_layer_mode_effects_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %15, 120000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GRand*, %struct._GRand** %rand, align 8
  %call8 = call i32 @g_rand_int(%struct._GRand* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [120000 x i32], [120000 x i32]* @dissolve_lut, i32 0, i64 %idxprom
  store i32 %call8, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GRand*, %struct._GRand** %rand, align 8
  call void @g_rand_free(%struct._GRand* %19)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

declare %struct._GRand* @g_rand_new_with_seed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationPointLayerMode*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_layer_mode_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointLayerMode*
  store %struct._GimpOperationPointLayerMode* %2, %struct._GimpOperationPointLayerMode** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpOperationPointLayerMode*, %struct._GimpOperationPointLayerMode** %self, align 8
  %blend_mode = getelementptr inbounds %struct._GimpOperationPointLayerMode, %struct._GimpOperationPointLayerMode* %5, i32 0, i32 1
  store i32 %call2, i32* %blend_mode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationPointLayerMode*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_layer_mode_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointLayerMode*
  store %struct._GimpOperationPointLayerMode* %2, %struct._GimpOperationPointLayerMode** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpOperationPointLayerMode*, %struct._GimpOperationPointLayerMode** %self, align 8
  %blend_mode = getelementptr inbounds %struct._GimpOperationPointLayerMode, %struct._GimpOperationPointLayerMode* %5, i32 0, i32 1
  %6 = load i32, i32* %blend_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_prepare(%struct._GeglOperation* %operation) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %format = alloca %union._Babl*, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  %call = call %union._Babl* @babl_format(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  store %union._Babl* %call, %union._Babl** %format, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = load %union._Babl*, %union._Babl** %format, align 8
  call void @gegl_operation_set_format(%struct._GeglOperation* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %union._Babl* %1)
  %2 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %3 = load %union._Babl*, %union._Babl** %format, align 8
  call void @gegl_operation_set_format(%struct._GeglOperation* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %union._Babl* %3)
  %4 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %5 = load %union._Babl*, %union._Babl** %format, align 8
  call void @gegl_operation_set_format(%struct._GeglOperation* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %union._Babl* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_point_layer_mode_process(%struct._GeglOperation* %operation, i8* %in_buf, i8* %aux_buf, i8* %out_buf, i64 %samples, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca i8*, align 8
  %aux_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %samples.addr = alloca i64, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %self = alloca %struct._GimpOperationPointLayerMode*, align 8
  %blend_mode = alloca i32, align 4
  %in = alloca float*, align 8
  %lay = alloca float*, align 8
  %out = alloca float*, align 8
  %sample = alloca i64, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %new = alloca [3 x float], align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %in_buf, i8** %in_buf.addr, align 8
  store i8* %aux_buf, i8** %aux_buf.addr, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8
  store i64 %samples, i64* %samples.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_point_layer_mode_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationPointLayerMode*
  store %struct._GimpOperationPointLayerMode* %2, %struct._GimpOperationPointLayerMode** %self, align 8
  %3 = load %struct._GimpOperationPointLayerMode*, %struct._GimpOperationPointLayerMode** %self, align 8
  %blend_mode2 = getelementptr inbounds %struct._GimpOperationPointLayerMode, %struct._GimpOperationPointLayerMode* %3, i32 0, i32 1
  %4 = load i32, i32* %blend_mode2, align 4
  store i32 %4, i32* %blend_mode, align 4
  %5 = load i8*, i8** %in_buf.addr, align 8
  %6 = bitcast i8* %5 to float*
  store float* %6, float** %in, align 8
  %7 = load i8*, i8** %aux_buf.addr, align 8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** %lay, align 8
  %9 = load i8*, i8** %out_buf.addr, align 8
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %out, align 8
  %11 = load i64, i64* %samples.addr, align 8
  store i64 %11, i64* %sample, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %12 = bitcast [3 x float]* %new to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 12, i32 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.1117, %entry
  %13 = load i64, i64* %sample, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, i64* %sample, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %blend_mode, align 4
  switch i32 %14, label %sw.default [
    i32 23, label %sw.bb
    i32 25, label %sw.bb
    i32 22, label %sw.bb
    i32 24, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %15 = load float*, float** %lay, align 8
  %arrayidx = getelementptr inbounds float, float* %15, i64 3
  %16 = load float, float* %arrayidx, align 4
  %17 = load float*, float** %in, align 8
  %arrayidx3 = getelementptr inbounds float, float* %17, i64 3
  %18 = load float, float* %arrayidx3, align 4
  %add = fadd float %16, %18
  %19 = load float*, float** %lay, align 8
  %arrayidx4 = getelementptr inbounds float, float* %19, i64 3
  %20 = load float, float* %arrayidx4, align 4
  %21 = load float*, float** %in, align 8
  %arrayidx5 = getelementptr inbounds float, float* %21, i64 3
  %22 = load float, float* %arrayidx5, align 4
  %mul = fmul float %20, %22
  %sub = fsub float %add, %mul
  %23 = load float*, float** %out, align 8
  %arrayidx6 = getelementptr inbounds float, float* %23, i64 3
  store float %sub, float* %arrayidx6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %24 = load i32, i32* %blend_mode, align 4
  switch i32 %24, label %sw.default.1116 [
    i32 23, label %sw.bb.7
    i32 25, label %sw.bb.38
    i32 22, label %sw.bb.86
    i32 24, label %sw.bb.87
    i32 1, label %sw.bb.101
    i32 0, label %sw.bb.167
    i32 2, label %sw.bb.185
    i32 3, label %sw.bb.203
    i32 4, label %sw.bb.230
    i32 6, label %sw.bb.251
    i32 9, label %sw.bb.290
    i32 10, label %sw.bb.334
    i32 5, label %sw.bb.378
    i32 16, label %sw.bb.443
    i32 17, label %sw.bb.520
    i32 18, label %sw.bb.590
    i32 19, label %sw.bb.655
    i32 7, label %sw.bb.716
    i32 8, label %sw.bb.765
    i32 20, label %sw.bb.813
    i32 21, label %sw.bb.921
    i32 15, label %sw.bb.1023
    i32 11, label %sw.bb.1088
    i32 12, label %sw.bb.1088
    i32 13, label %sw.bb.1088
    i32 14, label %sw.bb.1088
  ]

sw.bb.7:                                          ; preds = %sw.epilog
  %25 = load float*, float** %in, align 8
  %arrayidx8 = getelementptr inbounds float, float* %25, i64 3
  %26 = load float, float* %arrayidx8, align 4
  %27 = load float*, float** %in, align 8
  %arrayidx9 = getelementptr inbounds float, float* %27, i64 3
  %28 = load float, float* %arrayidx9, align 4
  %29 = load float*, float** %lay, align 8
  %arrayidx10 = getelementptr inbounds float, float* %29, i64 3
  %30 = load float, float* %arrayidx10, align 4
  %mul11 = fmul float %28, %30
  %sub12 = fsub float %26, %mul11
  %31 = load float*, float** %out, align 8
  %arrayidx13 = getelementptr inbounds float, float* %31, i64 3
  store float %sub12, float* %arrayidx13, align 4
  %32 = load float*, float** %in, align 8
  %arrayidx14 = getelementptr inbounds float, float* %32, i64 3
  %33 = load float, float* %arrayidx14, align 4
  %conv = fpext float %33 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %34 = load i32, i32* %c, align 4
  %cmp16 = icmp slt i32 %34, 3
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %c, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load float*, float** %out, align 8
  %arrayidx18 = getelementptr inbounds float, float* %36, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %c, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %sw.bb.7
  store i32 0, i32* %c, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.35, %if.else
  %38 = load i32, i32* %c, align 4
  %cmp20 = icmp slt i32 %38, 3
  br i1 %cmp20, label %for.body.22, label %for.end.37

for.body.22:                                      ; preds = %for.cond.19
  %39 = load float*, float** %in, align 8
  %arrayidx23 = getelementptr inbounds float, float* %39, i64 3
  %40 = load float, float* %arrayidx23, align 4
  %tobool24 = fcmp une float %40, 0.000000e+00
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.22
  %41 = load i32, i32* %c, align 4
  %idxprom25 = sext i32 %41 to i64
  %42 = load float*, float** %in, align 8
  %arrayidx26 = getelementptr inbounds float, float* %42, i64 %idxprom25
  %43 = load float, float* %arrayidx26, align 4
  %44 = load float*, float** %in, align 8
  %arrayidx27 = getelementptr inbounds float, float* %44, i64 3
  %45 = load float, float* %arrayidx27, align 4
  %div = fdiv float %43, %45
  %conv28 = fpext float %div to double
  br label %cond.end

cond.false:                                       ; preds = %for.body.22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv28, %cond.true ], [ 0.000000e+00, %cond.false ]
  %46 = load float*, float** %out, align 8
  %arrayidx29 = getelementptr inbounds float, float* %46, i64 3
  %47 = load float, float* %arrayidx29, align 4
  %conv30 = fpext float %47 to double
  %mul31 = fmul double %cond, %conv30
  %conv32 = fptrunc double %mul31 to float
  %48 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %48 to i64
  %49 = load float*, float** %out, align 8
  %arrayidx34 = getelementptr inbounds float, float* %49, i64 %idxprom33
  store float %conv32, float* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %cond.end
  %50 = load i32, i32* %c, align 4
  %inc36 = add nsw i32 %50, 1
  store i32 %inc36, i32* %c, align 4
  br label %for.cond.19

for.end.37:                                       ; preds = %for.cond.19
  br label %if.end

if.end:                                           ; preds = %for.end.37, %for.end
  br label %sw.epilog.1117

sw.bb.38:                                         ; preds = %sw.epilog
  %51 = load float*, float** %in, align 8
  %arrayidx39 = getelementptr inbounds float, float* %51, i64 3
  %52 = load float, float* %arrayidx39, align 4
  %53 = load float*, float** %in, align 8
  %arrayidx40 = getelementptr inbounds float, float* %53, i64 3
  %54 = load float, float* %arrayidx40, align 4
  %sub41 = fsub float 1.000000e+00, %54
  %55 = load float*, float** %lay, align 8
  %arrayidx42 = getelementptr inbounds float, float* %55, i64 3
  %56 = load float, float* %arrayidx42, align 4
  %mul43 = fmul float %sub41, %56
  %add44 = fadd float %52, %mul43
  %57 = load float*, float** %out, align 8
  %arrayidx45 = getelementptr inbounds float, float* %57, i64 3
  store float %add44, float* %arrayidx45, align 4
  %58 = load float*, float** %in, align 8
  %arrayidx46 = getelementptr inbounds float, float* %58, i64 3
  %59 = load float, float* %arrayidx46, align 4
  %conv47 = fpext float %59 to double
  %cmp48 = fcmp ole double %conv47, 0.000000e+00
  br i1 %cmp48, label %if.then.50, label %if.else.60

if.then.50:                                       ; preds = %sw.bb.38
  store i32 0, i32* %c, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.57, %if.then.50
  %60 = load i32, i32* %c, align 4
  %cmp52 = icmp slt i32 %60, 3
  br i1 %cmp52, label %for.body.54, label %for.end.59

for.body.54:                                      ; preds = %for.cond.51
  %61 = load i32, i32* %c, align 4
  %idxprom55 = sext i32 %61 to i64
  %62 = load float*, float** %out, align 8
  %arrayidx56 = getelementptr inbounds float, float* %62, i64 %idxprom55
  store float 0.000000e+00, float* %arrayidx56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.54
  %63 = load i32, i32* %c, align 4
  %inc58 = add nsw i32 %63, 1
  store i32 %inc58, i32* %c, align 4
  br label %for.cond.51

for.end.59:                                       ; preds = %for.cond.51
  br label %if.end.85

if.else.60:                                       ; preds = %sw.bb.38
  store i32 0, i32* %c, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.82, %if.else.60
  %64 = load i32, i32* %c, align 4
  %cmp62 = icmp slt i32 %64, 3
  br i1 %cmp62, label %for.body.64, label %for.end.84

for.body.64:                                      ; preds = %for.cond.61
  %65 = load float*, float** %in, align 8
  %arrayidx65 = getelementptr inbounds float, float* %65, i64 3
  %66 = load float, float* %arrayidx65, align 4
  %tobool66 = fcmp une float %66, 0.000000e+00
  br i1 %tobool66, label %cond.true.67, label %cond.false.73

cond.true.67:                                     ; preds = %for.body.64
  %67 = load i32, i32* %c, align 4
  %idxprom68 = sext i32 %67 to i64
  %68 = load float*, float** %in, align 8
  %arrayidx69 = getelementptr inbounds float, float* %68, i64 %idxprom68
  %69 = load float, float* %arrayidx69, align 4
  %70 = load float*, float** %in, align 8
  %arrayidx70 = getelementptr inbounds float, float* %70, i64 3
  %71 = load float, float* %arrayidx70, align 4
  %div71 = fdiv float %69, %71
  %conv72 = fpext float %div71 to double
  br label %cond.end.74

cond.false.73:                                    ; preds = %for.body.64
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.67
  %cond75 = phi double [ %conv72, %cond.true.67 ], [ 0.000000e+00, %cond.false.73 ]
  %72 = load float*, float** %out, align 8
  %arrayidx76 = getelementptr inbounds float, float* %72, i64 3
  %73 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %73 to double
  %mul78 = fmul double %cond75, %conv77
  %conv79 = fptrunc double %mul78 to float
  %74 = load i32, i32* %c, align 4
  %idxprom80 = sext i32 %74 to i64
  %75 = load float*, float** %out, align 8
  %arrayidx81 = getelementptr inbounds float, float* %75, i64 %idxprom80
  store float %conv79, float* %arrayidx81, align 4
  br label %for.inc.82

for.inc.82:                                       ; preds = %cond.end.74
  %76 = load i32, i32* %c, align 4
  %inc83 = add nsw i32 %76, 1
  store i32 %inc83, i32* %c, align 4
  br label %for.cond.61

for.end.84:                                       ; preds = %for.cond.61
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end.59
  br label %sw.epilog.1117

sw.bb.86:                                         ; preds = %sw.epilog
  %77 = load float*, float** %in, align 8
  %78 = load float*, float** %lay, align 8
  %79 = load float*, float** %out, align 8
  call void @gimp_operation_point_layer_mode_get_color_erase_color(float* %77, float* %78, float* %79)
  br label %sw.epilog.1117

sw.bb.87:                                         ; preds = %sw.epilog
  %80 = load float*, float** %lay, align 8
  %arrayidx88 = getelementptr inbounds float, float* %80, i64 3
  %81 = load float, float* %arrayidx88, align 4
  %82 = load float*, float** %out, align 8
  %arrayidx89 = getelementptr inbounds float, float* %82, i64 3
  store float %81, float* %arrayidx89, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %sw.bb.87
  %83 = load i32, i32* %c, align 4
  %cmp91 = icmp slt i32 %83, 3
  br i1 %cmp91, label %for.body.93, label %for.end.100

for.body.93:                                      ; preds = %for.cond.90
  %84 = load i32, i32* %c, align 4
  %idxprom94 = sext i32 %84 to i64
  %85 = load float*, float** %lay, align 8
  %arrayidx95 = getelementptr inbounds float, float* %85, i64 %idxprom94
  %86 = load float, float* %arrayidx95, align 4
  %87 = load i32, i32* %c, align 4
  %idxprom96 = sext i32 %87 to i64
  %88 = load float*, float** %out, align 8
  %arrayidx97 = getelementptr inbounds float, float* %88, i64 %idxprom96
  store float %86, float* %arrayidx97, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.93
  %89 = load i32, i32* %c, align 4
  %inc99 = add nsw i32 %89, 1
  store i32 %inc99, i32* %c, align 4
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  br label %sw.epilog.1117

sw.bb.101:                                        ; preds = %sw.epilog
  %90 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x102 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %90, i32 0, i32 0
  %91 = load i32, i32* %x102, align 4
  %conv103 = sext i32 %91 to i64
  %92 = load i64, i64* %sample, align 8
  %add104 = add nsw i64 %conv103, %92
  %93 = load i64, i64* %sample, align 8
  %94 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %94, i32 0, i32 2
  %95 = load i32, i32* %width, align 4
  %conv105 = sext i32 %95 to i64
  %div106 = sdiv i64 %93, %conv105
  %96 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width107 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %96, i32 0, i32 2
  %97 = load i32, i32* %width107, align 4
  %conv108 = sext i32 %97 to i64
  %mul109 = mul nsw i64 %div106, %conv108
  %sub110 = sub nsw i64 %add104, %mul109
  %rem = srem i64 %sub110, 400
  %conv111 = trunc i64 %rem to i32
  store i32 %conv111, i32* %x, align 4
  %98 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y112 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %98, i32 0, i32 1
  %99 = load i32, i32* %y112, align 4
  %conv113 = sext i32 %99 to i64
  %100 = load i64, i64* %sample, align 8
  %101 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width114 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %101, i32 0, i32 2
  %102 = load i32, i32* %width114, align 4
  %conv115 = sext i32 %102 to i64
  %div116 = sdiv i64 %100, %conv115
  %add117 = add nsw i64 %conv113, %div116
  %rem118 = srem i64 %add117, 300
  %conv119 = trunc i64 %rem118 to i32
  store i32 %conv119, i32* %y, align 4
  %103 = load float*, float** %lay, align 8
  %arrayidx120 = getelementptr inbounds float, float* %103, i64 3
  %104 = load float, float* %arrayidx120, align 4
  %mul121 = fmul float %104, 0x41F0000000000000
  %105 = load i32, i32* %y, align 4
  %mul122 = mul nsw i32 %105, 400
  %106 = load i32, i32* %x, align 4
  %add123 = add nsw i32 %mul122, %106
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [120000 x i32], [120000 x i32]* @dissolve_lut, i32 0, i64 %idxprom124
  %107 = load i32, i32* %arrayidx125, align 4
  %conv126 = uitofp i32 %107 to float
  %cmp127 = fcmp oge float %mul121, %conv126
  br i1 %cmp127, label %if.then.129, label %if.else.152

if.then.129:                                      ; preds = %sw.bb.101
  %108 = load float*, float** %out, align 8
  %arrayidx130 = getelementptr inbounds float, float* %108, i64 3
  store float 1.000000e+00, float* %arrayidx130, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.149, %if.then.129
  %109 = load i32, i32* %c, align 4
  %cmp132 = icmp slt i32 %109, 3
  br i1 %cmp132, label %for.body.134, label %for.end.151

for.body.134:                                     ; preds = %for.cond.131
  %110 = load float*, float** %lay, align 8
  %arrayidx135 = getelementptr inbounds float, float* %110, i64 3
  %111 = load float, float* %arrayidx135, align 4
  %tobool136 = fcmp une float %111, 0.000000e+00
  br i1 %tobool136, label %cond.true.137, label %cond.false.143

cond.true.137:                                    ; preds = %for.body.134
  %112 = load i32, i32* %c, align 4
  %idxprom138 = sext i32 %112 to i64
  %113 = load float*, float** %lay, align 8
  %arrayidx139 = getelementptr inbounds float, float* %113, i64 %idxprom138
  %114 = load float, float* %arrayidx139, align 4
  %115 = load float*, float** %lay, align 8
  %arrayidx140 = getelementptr inbounds float, float* %115, i64 3
  %116 = load float, float* %arrayidx140, align 4
  %div141 = fdiv float %114, %116
  %conv142 = fpext float %div141 to double
  br label %cond.end.144

cond.false.143:                                   ; preds = %for.body.134
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.143, %cond.true.137
  %cond145 = phi double [ %conv142, %cond.true.137 ], [ 0.000000e+00, %cond.false.143 ]
  %conv146 = fptrunc double %cond145 to float
  %117 = load i32, i32* %c, align 4
  %idxprom147 = sext i32 %117 to i64
  %118 = load float*, float** %out, align 8
  %arrayidx148 = getelementptr inbounds float, float* %118, i64 %idxprom147
  store float %conv146, float* %arrayidx148, align 4
  br label %for.inc.149

for.inc.149:                                      ; preds = %cond.end.144
  %119 = load i32, i32* %c, align 4
  %inc150 = add nsw i32 %119, 1
  store i32 %inc150, i32* %c, align 4
  br label %for.cond.131

for.end.151:                                      ; preds = %for.cond.131
  br label %if.end.166

if.else.152:                                      ; preds = %sw.bb.101
  %120 = load float*, float** %in, align 8
  %arrayidx153 = getelementptr inbounds float, float* %120, i64 3
  %121 = load float, float* %arrayidx153, align 4
  %122 = load float*, float** %out, align 8
  %arrayidx154 = getelementptr inbounds float, float* %122, i64 3
  store float %121, float* %arrayidx154, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.163, %if.else.152
  %123 = load i32, i32* %c, align 4
  %cmp156 = icmp slt i32 %123, 3
  br i1 %cmp156, label %for.body.158, label %for.end.165

for.body.158:                                     ; preds = %for.cond.155
  %124 = load i32, i32* %c, align 4
  %idxprom159 = sext i32 %124 to i64
  %125 = load float*, float** %in, align 8
  %arrayidx160 = getelementptr inbounds float, float* %125, i64 %idxprom159
  %126 = load float, float* %arrayidx160, align 4
  %127 = load i32, i32* %c, align 4
  %idxprom161 = sext i32 %127 to i64
  %128 = load float*, float** %out, align 8
  %arrayidx162 = getelementptr inbounds float, float* %128, i64 %idxprom161
  store float %126, float* %arrayidx162, align 4
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.158
  %129 = load i32, i32* %c, align 4
  %inc164 = add nsw i32 %129, 1
  store i32 %inc164, i32* %c, align 4
  br label %for.cond.155

for.end.165:                                      ; preds = %for.cond.155
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %for.end.151
  br label %sw.epilog.1117

sw.bb.167:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.182, %sw.bb.167
  %130 = load i32, i32* %c, align 4
  %cmp169 = icmp slt i32 %130, 3
  br i1 %cmp169, label %for.body.171, label %for.end.184

for.body.171:                                     ; preds = %for.cond.168
  %131 = load i32, i32* %c, align 4
  %idxprom172 = sext i32 %131 to i64
  %132 = load float*, float** %lay, align 8
  %arrayidx173 = getelementptr inbounds float, float* %132, i64 %idxprom172
  %133 = load float, float* %arrayidx173, align 4
  %134 = load i32, i32* %c, align 4
  %idxprom174 = sext i32 %134 to i64
  %135 = load float*, float** %in, align 8
  %arrayidx175 = getelementptr inbounds float, float* %135, i64 %idxprom174
  %136 = load float, float* %arrayidx175, align 4
  %137 = load float*, float** %lay, align 8
  %arrayidx176 = getelementptr inbounds float, float* %137, i64 3
  %138 = load float, float* %arrayidx176, align 4
  %sub177 = fsub float 1.000000e+00, %138
  %mul178 = fmul float %136, %sub177
  %add179 = fadd float %133, %mul178
  %139 = load i32, i32* %c, align 4
  %idxprom180 = sext i32 %139 to i64
  %140 = load float*, float** %out, align 8
  %arrayidx181 = getelementptr inbounds float, float* %140, i64 %idxprom180
  store float %add179, float* %arrayidx181, align 4
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.171
  %141 = load i32, i32* %c, align 4
  %inc183 = add nsw i32 %141, 1
  store i32 %inc183, i32* %c, align 4
  br label %for.cond.168

for.end.184:                                      ; preds = %for.cond.168
  br label %sw.epilog.1117

sw.bb.185:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.200, %sw.bb.185
  %142 = load i32, i32* %c, align 4
  %cmp187 = icmp slt i32 %142, 3
  br i1 %cmp187, label %for.body.189, label %for.end.202

for.body.189:                                     ; preds = %for.cond.186
  %143 = load i32, i32* %c, align 4
  %idxprom190 = sext i32 %143 to i64
  %144 = load float*, float** %in, align 8
  %arrayidx191 = getelementptr inbounds float, float* %144, i64 %idxprom190
  %145 = load float, float* %arrayidx191, align 4
  %146 = load i32, i32* %c, align 4
  %idxprom192 = sext i32 %146 to i64
  %147 = load float*, float** %lay, align 8
  %arrayidx193 = getelementptr inbounds float, float* %147, i64 %idxprom192
  %148 = load float, float* %arrayidx193, align 4
  %149 = load float*, float** %in, align 8
  %arrayidx194 = getelementptr inbounds float, float* %149, i64 3
  %150 = load float, float* %arrayidx194, align 4
  %sub195 = fsub float 1.000000e+00, %150
  %mul196 = fmul float %148, %sub195
  %add197 = fadd float %145, %mul196
  %151 = load i32, i32* %c, align 4
  %idxprom198 = sext i32 %151 to i64
  %152 = load float*, float** %out, align 8
  %arrayidx199 = getelementptr inbounds float, float* %152, i64 %idxprom198
  store float %add197, float* %arrayidx199, align 4
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.189
  %153 = load i32, i32* %c, align 4
  %inc201 = add nsw i32 %153, 1
  store i32 %inc201, i32* %c, align 4
  br label %for.cond.186

for.end.202:                                      ; preds = %for.cond.186
  br label %sw.epilog.1117

sw.bb.203:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.227, %sw.bb.203
  %154 = load i32, i32* %c, align 4
  %cmp205 = icmp slt i32 %154, 3
  br i1 %cmp205, label %for.body.207, label %for.end.229

for.body.207:                                     ; preds = %for.cond.204
  %155 = load i32, i32* %c, align 4
  %idxprom208 = sext i32 %155 to i64
  %156 = load float*, float** %lay, align 8
  %arrayidx209 = getelementptr inbounds float, float* %156, i64 %idxprom208
  %157 = load float, float* %arrayidx209, align 4
  %158 = load i32, i32* %c, align 4
  %idxprom210 = sext i32 %158 to i64
  %159 = load float*, float** %in, align 8
  %arrayidx211 = getelementptr inbounds float, float* %159, i64 %idxprom210
  %160 = load float, float* %arrayidx211, align 4
  %mul212 = fmul float %157, %160
  %161 = load i32, i32* %c, align 4
  %idxprom213 = sext i32 %161 to i64
  %162 = load float*, float** %lay, align 8
  %arrayidx214 = getelementptr inbounds float, float* %162, i64 %idxprom213
  %163 = load float, float* %arrayidx214, align 4
  %164 = load float*, float** %in, align 8
  %arrayidx215 = getelementptr inbounds float, float* %164, i64 3
  %165 = load float, float* %arrayidx215, align 4
  %sub216 = fsub float 1.000000e+00, %165
  %mul217 = fmul float %163, %sub216
  %add218 = fadd float %mul212, %mul217
  %166 = load i32, i32* %c, align 4
  %idxprom219 = sext i32 %166 to i64
  %167 = load float*, float** %in, align 8
  %arrayidx220 = getelementptr inbounds float, float* %167, i64 %idxprom219
  %168 = load float, float* %arrayidx220, align 4
  %169 = load float*, float** %lay, align 8
  %arrayidx221 = getelementptr inbounds float, float* %169, i64 3
  %170 = load float, float* %arrayidx221, align 4
  %sub222 = fsub float 1.000000e+00, %170
  %mul223 = fmul float %168, %sub222
  %add224 = fadd float %add218, %mul223
  %171 = load i32, i32* %c, align 4
  %idxprom225 = sext i32 %171 to i64
  %172 = load float*, float** %out, align 8
  %arrayidx226 = getelementptr inbounds float, float* %172, i64 %idxprom225
  store float %add224, float* %arrayidx226, align 4
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.207
  %173 = load i32, i32* %c, align 4
  %inc228 = add nsw i32 %173, 1
  store i32 %inc228, i32* %c, align 4
  br label %for.cond.204

for.end.229:                                      ; preds = %for.cond.204
  br label %sw.epilog.1117

sw.bb.230:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.248, %sw.bb.230
  %174 = load i32, i32* %c, align 4
  %cmp232 = icmp slt i32 %174, 3
  br i1 %cmp232, label %for.body.234, label %for.end.250

for.body.234:                                     ; preds = %for.cond.231
  %175 = load i32, i32* %c, align 4
  %idxprom235 = sext i32 %175 to i64
  %176 = load float*, float** %lay, align 8
  %arrayidx236 = getelementptr inbounds float, float* %176, i64 %idxprom235
  %177 = load float, float* %arrayidx236, align 4
  %178 = load i32, i32* %c, align 4
  %idxprom237 = sext i32 %178 to i64
  %179 = load float*, float** %in, align 8
  %arrayidx238 = getelementptr inbounds float, float* %179, i64 %idxprom237
  %180 = load float, float* %arrayidx238, align 4
  %add239 = fadd float %177, %180
  %181 = load i32, i32* %c, align 4
  %idxprom240 = sext i32 %181 to i64
  %182 = load float*, float** %lay, align 8
  %arrayidx241 = getelementptr inbounds float, float* %182, i64 %idxprom240
  %183 = load float, float* %arrayidx241, align 4
  %184 = load i32, i32* %c, align 4
  %idxprom242 = sext i32 %184 to i64
  %185 = load float*, float** %in, align 8
  %arrayidx243 = getelementptr inbounds float, float* %185, i64 %idxprom242
  %186 = load float, float* %arrayidx243, align 4
  %mul244 = fmul float %183, %186
  %sub245 = fsub float %add239, %mul244
  %187 = load i32, i32* %c, align 4
  %idxprom246 = sext i32 %187 to i64
  %188 = load float*, float** %out, align 8
  %arrayidx247 = getelementptr inbounds float, float* %188, i64 %idxprom246
  store float %sub245, float* %arrayidx247, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.234
  %189 = load i32, i32* %c, align 4
  %inc249 = add nsw i32 %189, 1
  store i32 %inc249, i32* %c, align 4
  br label %for.cond.231

for.end.250:                                      ; preds = %for.cond.231
  br label %sw.epilog.1117

sw.bb.251:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.287, %sw.bb.251
  %190 = load i32, i32* %c, align 4
  %cmp253 = icmp slt i32 %190, 3
  br i1 %cmp253, label %for.body.255, label %for.end.289

for.body.255:                                     ; preds = %for.cond.252
  %191 = load i32, i32* %c, align 4
  %idxprom256 = sext i32 %191 to i64
  %192 = load float*, float** %in, align 8
  %arrayidx257 = getelementptr inbounds float, float* %192, i64 %idxprom256
  %193 = load float, float* %arrayidx257, align 4
  %194 = load i32, i32* %c, align 4
  %idxprom258 = sext i32 %194 to i64
  %195 = load float*, float** %lay, align 8
  %arrayidx259 = getelementptr inbounds float, float* %195, i64 %idxprom258
  %196 = load float, float* %arrayidx259, align 4
  %add260 = fadd float %193, %196
  %197 = load i32, i32* %c, align 4
  %idxprom261 = sext i32 %197 to i64
  %198 = load float*, float** %lay, align 8
  %arrayidx262 = getelementptr inbounds float, float* %198, i64 %idxprom261
  %199 = load float, float* %arrayidx262, align 4
  %200 = load float*, float** %in, align 8
  %arrayidx263 = getelementptr inbounds float, float* %200, i64 3
  %201 = load float, float* %arrayidx263, align 4
  %mul264 = fmul float %199, %201
  %202 = load i32, i32* %c, align 4
  %idxprom265 = sext i32 %202 to i64
  %203 = load float*, float** %in, align 8
  %arrayidx266 = getelementptr inbounds float, float* %203, i64 %idxprom265
  %204 = load float, float* %arrayidx266, align 4
  %205 = load float*, float** %lay, align 8
  %arrayidx267 = getelementptr inbounds float, float* %205, i64 3
  %206 = load float, float* %arrayidx267, align 4
  %mul268 = fmul float %204, %206
  %cmp269 = fcmp olt float %mul264, %mul268
  br i1 %cmp269, label %cond.true.271, label %cond.false.276

cond.true.271:                                    ; preds = %for.body.255
  %207 = load i32, i32* %c, align 4
  %idxprom272 = sext i32 %207 to i64
  %208 = load float*, float** %lay, align 8
  %arrayidx273 = getelementptr inbounds float, float* %208, i64 %idxprom272
  %209 = load float, float* %arrayidx273, align 4
  %210 = load float*, float** %in, align 8
  %arrayidx274 = getelementptr inbounds float, float* %210, i64 3
  %211 = load float, float* %arrayidx274, align 4
  %mul275 = fmul float %209, %211
  br label %cond.end.281

cond.false.276:                                   ; preds = %for.body.255
  %212 = load i32, i32* %c, align 4
  %idxprom277 = sext i32 %212 to i64
  %213 = load float*, float** %in, align 8
  %arrayidx278 = getelementptr inbounds float, float* %213, i64 %idxprom277
  %214 = load float, float* %arrayidx278, align 4
  %215 = load float*, float** %lay, align 8
  %arrayidx279 = getelementptr inbounds float, float* %215, i64 3
  %216 = load float, float* %arrayidx279, align 4
  %mul280 = fmul float %214, %216
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.276, %cond.true.271
  %cond282 = phi float [ %mul275, %cond.true.271 ], [ %mul280, %cond.false.276 ]
  %mul283 = fmul float 2.000000e+00, %cond282
  %sub284 = fsub float %add260, %mul283
  %217 = load i32, i32* %c, align 4
  %idxprom285 = sext i32 %217 to i64
  %218 = load float*, float** %out, align 8
  %arrayidx286 = getelementptr inbounds float, float* %218, i64 %idxprom285
  store float %sub284, float* %arrayidx286, align 4
  br label %for.inc.287

for.inc.287:                                      ; preds = %cond.end.281
  %219 = load i32, i32* %c, align 4
  %inc288 = add nsw i32 %219, 1
  store i32 %inc288, i32* %c, align 4
  br label %for.cond.252

for.end.289:                                      ; preds = %for.cond.252
  br label %sw.epilog.1117

sw.bb.290:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.331, %sw.bb.290
  %220 = load i32, i32* %c, align 4
  %cmp292 = icmp slt i32 %220, 3
  br i1 %cmp292, label %for.body.294, label %for.end.333

for.body.294:                                     ; preds = %for.cond.291
  %221 = load i32, i32* %c, align 4
  %idxprom295 = sext i32 %221 to i64
  %222 = load float*, float** %lay, align 8
  %arrayidx296 = getelementptr inbounds float, float* %222, i64 %idxprom295
  %223 = load float, float* %arrayidx296, align 4
  %224 = load float*, float** %in, align 8
  %arrayidx297 = getelementptr inbounds float, float* %224, i64 3
  %225 = load float, float* %arrayidx297, align 4
  %mul298 = fmul float %223, %225
  %226 = load i32, i32* %c, align 4
  %idxprom299 = sext i32 %226 to i64
  %227 = load float*, float** %in, align 8
  %arrayidx300 = getelementptr inbounds float, float* %227, i64 %idxprom299
  %228 = load float, float* %arrayidx300, align 4
  %229 = load float*, float** %lay, align 8
  %arrayidx301 = getelementptr inbounds float, float* %229, i64 3
  %230 = load float, float* %arrayidx301, align 4
  %mul302 = fmul float %228, %230
  %cmp303 = fcmp olt float %mul298, %mul302
  br i1 %cmp303, label %cond.true.305, label %cond.false.310

cond.true.305:                                    ; preds = %for.body.294
  %231 = load i32, i32* %c, align 4
  %idxprom306 = sext i32 %231 to i64
  %232 = load float*, float** %lay, align 8
  %arrayidx307 = getelementptr inbounds float, float* %232, i64 %idxprom306
  %233 = load float, float* %arrayidx307, align 4
  %234 = load float*, float** %in, align 8
  %arrayidx308 = getelementptr inbounds float, float* %234, i64 3
  %235 = load float, float* %arrayidx308, align 4
  %mul309 = fmul float %233, %235
  br label %cond.end.315

cond.false.310:                                   ; preds = %for.body.294
  %236 = load i32, i32* %c, align 4
  %idxprom311 = sext i32 %236 to i64
  %237 = load float*, float** %in, align 8
  %arrayidx312 = getelementptr inbounds float, float* %237, i64 %idxprom311
  %238 = load float, float* %arrayidx312, align 4
  %239 = load float*, float** %lay, align 8
  %arrayidx313 = getelementptr inbounds float, float* %239, i64 3
  %240 = load float, float* %arrayidx313, align 4
  %mul314 = fmul float %238, %240
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.310, %cond.true.305
  %cond316 = phi float [ %mul309, %cond.true.305 ], [ %mul314, %cond.false.310 ]
  %241 = load i32, i32* %c, align 4
  %idxprom317 = sext i32 %241 to i64
  %242 = load float*, float** %lay, align 8
  %arrayidx318 = getelementptr inbounds float, float* %242, i64 %idxprom317
  %243 = load float, float* %arrayidx318, align 4
  %244 = load float*, float** %in, align 8
  %arrayidx319 = getelementptr inbounds float, float* %244, i64 3
  %245 = load float, float* %arrayidx319, align 4
  %sub320 = fsub float 1.000000e+00, %245
  %mul321 = fmul float %243, %sub320
  %add322 = fadd float %cond316, %mul321
  %246 = load i32, i32* %c, align 4
  %idxprom323 = sext i32 %246 to i64
  %247 = load float*, float** %in, align 8
  %arrayidx324 = getelementptr inbounds float, float* %247, i64 %idxprom323
  %248 = load float, float* %arrayidx324, align 4
  %249 = load float*, float** %lay, align 8
  %arrayidx325 = getelementptr inbounds float, float* %249, i64 3
  %250 = load float, float* %arrayidx325, align 4
  %sub326 = fsub float 1.000000e+00, %250
  %mul327 = fmul float %248, %sub326
  %add328 = fadd float %add322, %mul327
  %251 = load i32, i32* %c, align 4
  %idxprom329 = sext i32 %251 to i64
  %252 = load float*, float** %out, align 8
  %arrayidx330 = getelementptr inbounds float, float* %252, i64 %idxprom329
  store float %add328, float* %arrayidx330, align 4
  br label %for.inc.331

for.inc.331:                                      ; preds = %cond.end.315
  %253 = load i32, i32* %c, align 4
  %inc332 = add nsw i32 %253, 1
  store i32 %inc332, i32* %c, align 4
  br label %for.cond.291

for.end.333:                                      ; preds = %for.cond.291
  br label %sw.epilog.1117

sw.bb.334:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.375, %sw.bb.334
  %254 = load i32, i32* %c, align 4
  %cmp336 = icmp slt i32 %254, 3
  br i1 %cmp336, label %for.body.338, label %for.end.377

for.body.338:                                     ; preds = %for.cond.335
  %255 = load i32, i32* %c, align 4
  %idxprom339 = sext i32 %255 to i64
  %256 = load float*, float** %lay, align 8
  %arrayidx340 = getelementptr inbounds float, float* %256, i64 %idxprom339
  %257 = load float, float* %arrayidx340, align 4
  %258 = load float*, float** %in, align 8
  %arrayidx341 = getelementptr inbounds float, float* %258, i64 3
  %259 = load float, float* %arrayidx341, align 4
  %mul342 = fmul float %257, %259
  %260 = load i32, i32* %c, align 4
  %idxprom343 = sext i32 %260 to i64
  %261 = load float*, float** %in, align 8
  %arrayidx344 = getelementptr inbounds float, float* %261, i64 %idxprom343
  %262 = load float, float* %arrayidx344, align 4
  %263 = load float*, float** %lay, align 8
  %arrayidx345 = getelementptr inbounds float, float* %263, i64 3
  %264 = load float, float* %arrayidx345, align 4
  %mul346 = fmul float %262, %264
  %cmp347 = fcmp ogt float %mul342, %mul346
  br i1 %cmp347, label %cond.true.349, label %cond.false.354

cond.true.349:                                    ; preds = %for.body.338
  %265 = load i32, i32* %c, align 4
  %idxprom350 = sext i32 %265 to i64
  %266 = load float*, float** %lay, align 8
  %arrayidx351 = getelementptr inbounds float, float* %266, i64 %idxprom350
  %267 = load float, float* %arrayidx351, align 4
  %268 = load float*, float** %in, align 8
  %arrayidx352 = getelementptr inbounds float, float* %268, i64 3
  %269 = load float, float* %arrayidx352, align 4
  %mul353 = fmul float %267, %269
  br label %cond.end.359

cond.false.354:                                   ; preds = %for.body.338
  %270 = load i32, i32* %c, align 4
  %idxprom355 = sext i32 %270 to i64
  %271 = load float*, float** %in, align 8
  %arrayidx356 = getelementptr inbounds float, float* %271, i64 %idxprom355
  %272 = load float, float* %arrayidx356, align 4
  %273 = load float*, float** %lay, align 8
  %arrayidx357 = getelementptr inbounds float, float* %273, i64 3
  %274 = load float, float* %arrayidx357, align 4
  %mul358 = fmul float %272, %274
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.354, %cond.true.349
  %cond360 = phi float [ %mul353, %cond.true.349 ], [ %mul358, %cond.false.354 ]
  %275 = load i32, i32* %c, align 4
  %idxprom361 = sext i32 %275 to i64
  %276 = load float*, float** %lay, align 8
  %arrayidx362 = getelementptr inbounds float, float* %276, i64 %idxprom361
  %277 = load float, float* %arrayidx362, align 4
  %278 = load float*, float** %in, align 8
  %arrayidx363 = getelementptr inbounds float, float* %278, i64 3
  %279 = load float, float* %arrayidx363, align 4
  %sub364 = fsub float 1.000000e+00, %279
  %mul365 = fmul float %277, %sub364
  %add366 = fadd float %cond360, %mul365
  %280 = load i32, i32* %c, align 4
  %idxprom367 = sext i32 %280 to i64
  %281 = load float*, float** %in, align 8
  %arrayidx368 = getelementptr inbounds float, float* %281, i64 %idxprom367
  %282 = load float, float* %arrayidx368, align 4
  %283 = load float*, float** %lay, align 8
  %arrayidx369 = getelementptr inbounds float, float* %283, i64 3
  %284 = load float, float* %arrayidx369, align 4
  %sub370 = fsub float 1.000000e+00, %284
  %mul371 = fmul float %282, %sub370
  %add372 = fadd float %add366, %mul371
  %285 = load i32, i32* %c, align 4
  %idxprom373 = sext i32 %285 to i64
  %286 = load float*, float** %out, align 8
  %arrayidx374 = getelementptr inbounds float, float* %286, i64 %idxprom373
  store float %add372, float* %arrayidx374, align 4
  br label %for.inc.375

for.inc.375:                                      ; preds = %cond.end.359
  %287 = load i32, i32* %c, align 4
  %inc376 = add nsw i32 %287, 1
  store i32 %inc376, i32* %c, align 4
  br label %for.cond.335

for.end.377:                                      ; preds = %for.cond.335
  br label %sw.epilog.1117

sw.bb.378:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.440, %sw.bb.378
  %288 = load i32, i32* %c, align 4
  %cmp380 = icmp slt i32 %288, 3
  br i1 %cmp380, label %for.body.382, label %for.end.442

for.body.382:                                     ; preds = %for.cond.379
  %289 = load i32, i32* %c, align 4
  %idxprom383 = sext i32 %289 to i64
  %290 = load float*, float** %in, align 8
  %arrayidx384 = getelementptr inbounds float, float* %290, i64 %idxprom383
  %291 = load float, float* %arrayidx384, align 4
  %mul385 = fmul float 2.000000e+00, %291
  %292 = load float*, float** %in, align 8
  %arrayidx386 = getelementptr inbounds float, float* %292, i64 3
  %293 = load float, float* %arrayidx386, align 4
  %cmp387 = fcmp olt float %mul385, %293
  br i1 %cmp387, label %if.then.389, label %if.else.410

if.then.389:                                      ; preds = %for.body.382
  %294 = load i32, i32* %c, align 4
  %idxprom390 = sext i32 %294 to i64
  %295 = load float*, float** %lay, align 8
  %arrayidx391 = getelementptr inbounds float, float* %295, i64 %idxprom390
  %296 = load float, float* %arrayidx391, align 4
  %mul392 = fmul float 2.000000e+00, %296
  %297 = load i32, i32* %c, align 4
  %idxprom393 = sext i32 %297 to i64
  %298 = load float*, float** %in, align 8
  %arrayidx394 = getelementptr inbounds float, float* %298, i64 %idxprom393
  %299 = load float, float* %arrayidx394, align 4
  %mul395 = fmul float %mul392, %299
  %300 = load i32, i32* %c, align 4
  %idxprom396 = sext i32 %300 to i64
  %301 = load float*, float** %lay, align 8
  %arrayidx397 = getelementptr inbounds float, float* %301, i64 %idxprom396
  %302 = load float, float* %arrayidx397, align 4
  %303 = load float*, float** %in, align 8
  %arrayidx398 = getelementptr inbounds float, float* %303, i64 3
  %304 = load float, float* %arrayidx398, align 4
  %sub399 = fsub float 1.000000e+00, %304
  %mul400 = fmul float %302, %sub399
  %add401 = fadd float %mul395, %mul400
  %305 = load i32, i32* %c, align 4
  %idxprom402 = sext i32 %305 to i64
  %306 = load float*, float** %in, align 8
  %arrayidx403 = getelementptr inbounds float, float* %306, i64 %idxprom402
  %307 = load float, float* %arrayidx403, align 4
  %308 = load float*, float** %lay, align 8
  %arrayidx404 = getelementptr inbounds float, float* %308, i64 3
  %309 = load float, float* %arrayidx404, align 4
  %sub405 = fsub float 1.000000e+00, %309
  %mul406 = fmul float %307, %sub405
  %add407 = fadd float %add401, %mul406
  %310 = load i32, i32* %c, align 4
  %idxprom408 = sext i32 %310 to i64
  %311 = load float*, float** %out, align 8
  %arrayidx409 = getelementptr inbounds float, float* %311, i64 %idxprom408
  store float %add407, float* %arrayidx409, align 4
  br label %if.end.439

if.else.410:                                      ; preds = %for.body.382
  %312 = load float*, float** %lay, align 8
  %arrayidx411 = getelementptr inbounds float, float* %312, i64 3
  %313 = load float, float* %arrayidx411, align 4
  %314 = load float*, float** %in, align 8
  %arrayidx412 = getelementptr inbounds float, float* %314, i64 3
  %315 = load float, float* %arrayidx412, align 4
  %mul413 = fmul float %313, %315
  %316 = load float*, float** %in, align 8
  %arrayidx414 = getelementptr inbounds float, float* %316, i64 3
  %317 = load float, float* %arrayidx414, align 4
  %318 = load i32, i32* %c, align 4
  %idxprom415 = sext i32 %318 to i64
  %319 = load float*, float** %in, align 8
  %arrayidx416 = getelementptr inbounds float, float* %319, i64 %idxprom415
  %320 = load float, float* %arrayidx416, align 4
  %sub417 = fsub float %317, %320
  %mul418 = fmul float 2.000000e+00, %sub417
  %321 = load float*, float** %lay, align 8
  %arrayidx419 = getelementptr inbounds float, float* %321, i64 3
  %322 = load float, float* %arrayidx419, align 4
  %323 = load i32, i32* %c, align 4
  %idxprom420 = sext i32 %323 to i64
  %324 = load float*, float** %lay, align 8
  %arrayidx421 = getelementptr inbounds float, float* %324, i64 %idxprom420
  %325 = load float, float* %arrayidx421, align 4
  %sub422 = fsub float %322, %325
  %mul423 = fmul float %mul418, %sub422
  %sub424 = fsub float %mul413, %mul423
  %326 = load i32, i32* %c, align 4
  %idxprom425 = sext i32 %326 to i64
  %327 = load float*, float** %lay, align 8
  %arrayidx426 = getelementptr inbounds float, float* %327, i64 %idxprom425
  %328 = load float, float* %arrayidx426, align 4
  %329 = load float*, float** %in, align 8
  %arrayidx427 = getelementptr inbounds float, float* %329, i64 3
  %330 = load float, float* %arrayidx427, align 4
  %sub428 = fsub float 1.000000e+00, %330
  %mul429 = fmul float %328, %sub428
  %add430 = fadd float %sub424, %mul429
  %331 = load i32, i32* %c, align 4
  %idxprom431 = sext i32 %331 to i64
  %332 = load float*, float** %in, align 8
  %arrayidx432 = getelementptr inbounds float, float* %332, i64 %idxprom431
  %333 = load float, float* %arrayidx432, align 4
  %334 = load float*, float** %lay, align 8
  %arrayidx433 = getelementptr inbounds float, float* %334, i64 3
  %335 = load float, float* %arrayidx433, align 4
  %sub434 = fsub float 1.000000e+00, %335
  %mul435 = fmul float %333, %sub434
  %add436 = fadd float %add430, %mul435
  %336 = load i32, i32* %c, align 4
  %idxprom437 = sext i32 %336 to i64
  %337 = load float*, float** %out, align 8
  %arrayidx438 = getelementptr inbounds float, float* %337, i64 %idxprom437
  store float %add436, float* %arrayidx438, align 4
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.410, %if.then.389
  br label %for.inc.440

for.inc.440:                                      ; preds = %if.end.439
  %338 = load i32, i32* %c, align 4
  %inc441 = add nsw i32 %338, 1
  store i32 %inc441, i32* %c, align 4
  br label %for.cond.379

for.end.442:                                      ; preds = %for.cond.379
  br label %sw.epilog.1117

sw.bb.443:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.517, %sw.bb.443
  %339 = load i32, i32* %c, align 4
  %cmp445 = icmp slt i32 %339, 3
  br i1 %cmp445, label %for.body.447, label %for.end.519

for.body.447:                                     ; preds = %for.cond.444
  %340 = load i32, i32* %c, align 4
  %idxprom448 = sext i32 %340 to i64
  %341 = load float*, float** %lay, align 8
  %arrayidx449 = getelementptr inbounds float, float* %341, i64 %idxprom448
  %342 = load float, float* %arrayidx449, align 4
  %343 = load float*, float** %in, align 8
  %arrayidx450 = getelementptr inbounds float, float* %343, i64 3
  %344 = load float, float* %arrayidx450, align 4
  %mul451 = fmul float %342, %344
  %345 = load i32, i32* %c, align 4
  %idxprom452 = sext i32 %345 to i64
  %346 = load float*, float** %in, align 8
  %arrayidx453 = getelementptr inbounds float, float* %346, i64 %idxprom452
  %347 = load float, float* %arrayidx453, align 4
  %348 = load float*, float** %lay, align 8
  %arrayidx454 = getelementptr inbounds float, float* %348, i64 3
  %349 = load float, float* %arrayidx454, align 4
  %mul455 = fmul float %347, %349
  %add456 = fadd float %mul451, %mul455
  %350 = load float*, float** %lay, align 8
  %arrayidx457 = getelementptr inbounds float, float* %350, i64 3
  %351 = load float, float* %arrayidx457, align 4
  %352 = load float*, float** %in, align 8
  %arrayidx458 = getelementptr inbounds float, float* %352, i64 3
  %353 = load float, float* %arrayidx458, align 4
  %mul459 = fmul float %351, %353
  %cmp460 = fcmp oge float %add456, %mul459
  br i1 %cmp460, label %if.then.462, label %if.else.480

if.then.462:                                      ; preds = %for.body.447
  %354 = load float*, float** %lay, align 8
  %arrayidx463 = getelementptr inbounds float, float* %354, i64 3
  %355 = load float, float* %arrayidx463, align 4
  %356 = load float*, float** %in, align 8
  %arrayidx464 = getelementptr inbounds float, float* %356, i64 3
  %357 = load float, float* %arrayidx464, align 4
  %mul465 = fmul float %355, %357
  %358 = load i32, i32* %c, align 4
  %idxprom466 = sext i32 %358 to i64
  %359 = load float*, float** %lay, align 8
  %arrayidx467 = getelementptr inbounds float, float* %359, i64 %idxprom466
  %360 = load float, float* %arrayidx467, align 4
  %361 = load float*, float** %in, align 8
  %arrayidx468 = getelementptr inbounds float, float* %361, i64 3
  %362 = load float, float* %arrayidx468, align 4
  %sub469 = fsub float 1.000000e+00, %362
  %mul470 = fmul float %360, %sub469
  %add471 = fadd float %mul465, %mul470
  %363 = load i32, i32* %c, align 4
  %idxprom472 = sext i32 %363 to i64
  %364 = load float*, float** %in, align 8
  %arrayidx473 = getelementptr inbounds float, float* %364, i64 %idxprom472
  %365 = load float, float* %arrayidx473, align 4
  %366 = load float*, float** %lay, align 8
  %arrayidx474 = getelementptr inbounds float, float* %366, i64 3
  %367 = load float, float* %arrayidx474, align 4
  %sub475 = fsub float 1.000000e+00, %367
  %mul476 = fmul float %365, %sub475
  %add477 = fadd float %add471, %mul476
  %368 = load i32, i32* %c, align 4
  %idxprom478 = sext i32 %368 to i64
  %369 = load float*, float** %out, align 8
  %arrayidx479 = getelementptr inbounds float, float* %369, i64 %idxprom478
  store float %add477, float* %arrayidx479, align 4
  br label %if.end.516

if.else.480:                                      ; preds = %for.body.447
  %370 = load i32, i32* %c, align 4
  %idxprom481 = sext i32 %370 to i64
  %371 = load float*, float** %in, align 8
  %arrayidx482 = getelementptr inbounds float, float* %371, i64 %idxprom481
  %372 = load float, float* %arrayidx482, align 4
  %373 = load float*, float** %lay, align 8
  %arrayidx483 = getelementptr inbounds float, float* %373, i64 3
  %374 = load float, float* %arrayidx483, align 4
  %mul484 = fmul float %372, %374
  %conv485 = fpext float %mul484 to double
  %375 = load float*, float** %lay, align 8
  %arrayidx486 = getelementptr inbounds float, float* %375, i64 3
  %376 = load float, float* %arrayidx486, align 4
  %tobool487 = fcmp une float %376, 0.000000e+00
  br i1 %tobool487, label %cond.true.488, label %cond.false.494

cond.true.488:                                    ; preds = %if.else.480
  %377 = load i32, i32* %c, align 4
  %idxprom489 = sext i32 %377 to i64
  %378 = load float*, float** %lay, align 8
  %arrayidx490 = getelementptr inbounds float, float* %378, i64 %idxprom489
  %379 = load float, float* %arrayidx490, align 4
  %380 = load float*, float** %lay, align 8
  %arrayidx491 = getelementptr inbounds float, float* %380, i64 3
  %381 = load float, float* %arrayidx491, align 4
  %div492 = fdiv float %379, %381
  %conv493 = fpext float %div492 to double
  br label %cond.end.495

cond.false.494:                                   ; preds = %if.else.480
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.false.494, %cond.true.488
  %cond496 = phi double [ %conv493, %cond.true.488 ], [ 0.000000e+00, %cond.false.494 ]
  %sub497 = fsub double 1.000000e+00, %cond496
  %div498 = fdiv double %conv485, %sub497
  %382 = load i32, i32* %c, align 4
  %idxprom499 = sext i32 %382 to i64
  %383 = load float*, float** %lay, align 8
  %arrayidx500 = getelementptr inbounds float, float* %383, i64 %idxprom499
  %384 = load float, float* %arrayidx500, align 4
  %385 = load float*, float** %in, align 8
  %arrayidx501 = getelementptr inbounds float, float* %385, i64 3
  %386 = load float, float* %arrayidx501, align 4
  %sub502 = fsub float 1.000000e+00, %386
  %mul503 = fmul float %384, %sub502
  %conv504 = fpext float %mul503 to double
  %add505 = fadd double %div498, %conv504
  %387 = load i32, i32* %c, align 4
  %idxprom506 = sext i32 %387 to i64
  %388 = load float*, float** %in, align 8
  %arrayidx507 = getelementptr inbounds float, float* %388, i64 %idxprom506
  %389 = load float, float* %arrayidx507, align 4
  %390 = load float*, float** %lay, align 8
  %arrayidx508 = getelementptr inbounds float, float* %390, i64 3
  %391 = load float, float* %arrayidx508, align 4
  %sub509 = fsub float 1.000000e+00, %391
  %mul510 = fmul float %389, %sub509
  %conv511 = fpext float %mul510 to double
  %add512 = fadd double %add505, %conv511
  %conv513 = fptrunc double %add512 to float
  %392 = load i32, i32* %c, align 4
  %idxprom514 = sext i32 %392 to i64
  %393 = load float*, float** %out, align 8
  %arrayidx515 = getelementptr inbounds float, float* %393, i64 %idxprom514
  store float %conv513, float* %arrayidx515, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %cond.end.495, %if.then.462
  br label %for.inc.517

for.inc.517:                                      ; preds = %if.end.516
  %394 = load i32, i32* %c, align 4
  %inc518 = add nsw i32 %394, 1
  store i32 %inc518, i32* %c, align 4
  br label %for.cond.444

for.end.519:                                      ; preds = %for.cond.444
  br label %sw.epilog.1117

sw.bb.520:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.587, %sw.bb.520
  %395 = load i32, i32* %c, align 4
  %cmp522 = icmp slt i32 %395, 3
  br i1 %cmp522, label %for.body.524, label %for.end.589

for.body.524:                                     ; preds = %for.cond.521
  %396 = load i32, i32* %c, align 4
  %idxprom525 = sext i32 %396 to i64
  %397 = load float*, float** %lay, align 8
  %arrayidx526 = getelementptr inbounds float, float* %397, i64 %idxprom525
  %398 = load float, float* %arrayidx526, align 4
  %399 = load float*, float** %in, align 8
  %arrayidx527 = getelementptr inbounds float, float* %399, i64 3
  %400 = load float, float* %arrayidx527, align 4
  %mul528 = fmul float %398, %400
  %401 = load i32, i32* %c, align 4
  %idxprom529 = sext i32 %401 to i64
  %402 = load float*, float** %in, align 8
  %arrayidx530 = getelementptr inbounds float, float* %402, i64 %idxprom529
  %403 = load float, float* %arrayidx530, align 4
  %404 = load float*, float** %lay, align 8
  %arrayidx531 = getelementptr inbounds float, float* %404, i64 3
  %405 = load float, float* %arrayidx531, align 4
  %mul532 = fmul float %403, %405
  %add533 = fadd float %mul528, %mul532
  %406 = load float*, float** %lay, align 8
  %arrayidx534 = getelementptr inbounds float, float* %406, i64 3
  %407 = load float, float* %arrayidx534, align 4
  %408 = load float*, float** %in, align 8
  %arrayidx535 = getelementptr inbounds float, float* %408, i64 3
  %409 = load float, float* %arrayidx535, align 4
  %mul536 = fmul float %407, %409
  %cmp537 = fcmp ole float %add533, %mul536
  br i1 %cmp537, label %if.then.539, label %if.else.553

if.then.539:                                      ; preds = %for.body.524
  %410 = load i32, i32* %c, align 4
  %idxprom540 = sext i32 %410 to i64
  %411 = load float*, float** %lay, align 8
  %arrayidx541 = getelementptr inbounds float, float* %411, i64 %idxprom540
  %412 = load float, float* %arrayidx541, align 4
  %413 = load float*, float** %in, align 8
  %arrayidx542 = getelementptr inbounds float, float* %413, i64 3
  %414 = load float, float* %arrayidx542, align 4
  %sub543 = fsub float 1.000000e+00, %414
  %mul544 = fmul float %412, %sub543
  %415 = load i32, i32* %c, align 4
  %idxprom545 = sext i32 %415 to i64
  %416 = load float*, float** %in, align 8
  %arrayidx546 = getelementptr inbounds float, float* %416, i64 %idxprom545
  %417 = load float, float* %arrayidx546, align 4
  %418 = load float*, float** %lay, align 8
  %arrayidx547 = getelementptr inbounds float, float* %418, i64 3
  %419 = load float, float* %arrayidx547, align 4
  %sub548 = fsub float 1.000000e+00, %419
  %mul549 = fmul float %417, %sub548
  %add550 = fadd float %mul544, %mul549
  %420 = load i32, i32* %c, align 4
  %idxprom551 = sext i32 %420 to i64
  %421 = load float*, float** %out, align 8
  %arrayidx552 = getelementptr inbounds float, float* %421, i64 %idxprom551
  store float %add550, float* %arrayidx552, align 4
  br label %if.end.586

if.else.553:                                      ; preds = %for.body.524
  %422 = load float*, float** %lay, align 8
  %arrayidx554 = getelementptr inbounds float, float* %422, i64 3
  %423 = load float, float* %arrayidx554, align 4
  %424 = load i32, i32* %c, align 4
  %idxprom555 = sext i32 %424 to i64
  %425 = load float*, float** %lay, align 8
  %arrayidx556 = getelementptr inbounds float, float* %425, i64 %idxprom555
  %426 = load float, float* %arrayidx556, align 4
  %427 = load float*, float** %in, align 8
  %arrayidx557 = getelementptr inbounds float, float* %427, i64 3
  %428 = load float, float* %arrayidx557, align 4
  %mul558 = fmul float %426, %428
  %429 = load i32, i32* %c, align 4
  %idxprom559 = sext i32 %429 to i64
  %430 = load float*, float** %in, align 8
  %arrayidx560 = getelementptr inbounds float, float* %430, i64 %idxprom559
  %431 = load float, float* %arrayidx560, align 4
  %432 = load float*, float** %lay, align 8
  %arrayidx561 = getelementptr inbounds float, float* %432, i64 3
  %433 = load float, float* %arrayidx561, align 4
  %mul562 = fmul float %431, %433
  %add563 = fadd float %mul558, %mul562
  %434 = load float*, float** %lay, align 8
  %arrayidx564 = getelementptr inbounds float, float* %434, i64 3
  %435 = load float, float* %arrayidx564, align 4
  %436 = load float*, float** %in, align 8
  %arrayidx565 = getelementptr inbounds float, float* %436, i64 3
  %437 = load float, float* %arrayidx565, align 4
  %mul566 = fmul float %435, %437
  %sub567 = fsub float %add563, %mul566
  %mul568 = fmul float %423, %sub567
  %438 = load i32, i32* %c, align 4
  %idxprom569 = sext i32 %438 to i64
  %439 = load float*, float** %lay, align 8
  %arrayidx570 = getelementptr inbounds float, float* %439, i64 %idxprom569
  %440 = load float, float* %arrayidx570, align 4
  %div571 = fdiv float %mul568, %440
  %441 = load i32, i32* %c, align 4
  %idxprom572 = sext i32 %441 to i64
  %442 = load float*, float** %lay, align 8
  %arrayidx573 = getelementptr inbounds float, float* %442, i64 %idxprom572
  %443 = load float, float* %arrayidx573, align 4
  %444 = load float*, float** %in, align 8
  %arrayidx574 = getelementptr inbounds float, float* %444, i64 3
  %445 = load float, float* %arrayidx574, align 4
  %sub575 = fsub float 1.000000e+00, %445
  %mul576 = fmul float %443, %sub575
  %add577 = fadd float %div571, %mul576
  %446 = load i32, i32* %c, align 4
  %idxprom578 = sext i32 %446 to i64
  %447 = load float*, float** %in, align 8
  %arrayidx579 = getelementptr inbounds float, float* %447, i64 %idxprom578
  %448 = load float, float* %arrayidx579, align 4
  %449 = load float*, float** %lay, align 8
  %arrayidx580 = getelementptr inbounds float, float* %449, i64 3
  %450 = load float, float* %arrayidx580, align 4
  %sub581 = fsub float 1.000000e+00, %450
  %mul582 = fmul float %448, %sub581
  %add583 = fadd float %add577, %mul582
  %451 = load i32, i32* %c, align 4
  %idxprom584 = sext i32 %451 to i64
  %452 = load float*, float** %out, align 8
  %arrayidx585 = getelementptr inbounds float, float* %452, i64 %idxprom584
  store float %add583, float* %arrayidx585, align 4
  br label %if.end.586

if.end.586:                                       ; preds = %if.else.553, %if.then.539
  br label %for.inc.587

for.inc.587:                                      ; preds = %if.end.586
  %453 = load i32, i32* %c, align 4
  %inc588 = add nsw i32 %453, 1
  store i32 %inc588, i32* %c, align 4
  br label %for.cond.521

for.end.589:                                      ; preds = %for.cond.521
  br label %sw.epilog.1117

sw.bb.590:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.591

for.cond.591:                                     ; preds = %for.inc.652, %sw.bb.590
  %454 = load i32, i32* %c, align 4
  %cmp592 = icmp slt i32 %454, 3
  br i1 %cmp592, label %for.body.594, label %for.end.654

for.body.594:                                     ; preds = %for.cond.591
  %455 = load i32, i32* %c, align 4
  %idxprom595 = sext i32 %455 to i64
  %456 = load float*, float** %lay, align 8
  %arrayidx596 = getelementptr inbounds float, float* %456, i64 %idxprom595
  %457 = load float, float* %arrayidx596, align 4
  %mul597 = fmul float 2.000000e+00, %457
  %458 = load float*, float** %lay, align 8
  %arrayidx598 = getelementptr inbounds float, float* %458, i64 3
  %459 = load float, float* %arrayidx598, align 4
  %cmp599 = fcmp olt float %mul597, %459
  br i1 %cmp599, label %if.then.601, label %if.else.622

if.then.601:                                      ; preds = %for.body.594
  %460 = load i32, i32* %c, align 4
  %idxprom602 = sext i32 %460 to i64
  %461 = load float*, float** %lay, align 8
  %arrayidx603 = getelementptr inbounds float, float* %461, i64 %idxprom602
  %462 = load float, float* %arrayidx603, align 4
  %mul604 = fmul float 2.000000e+00, %462
  %463 = load i32, i32* %c, align 4
  %idxprom605 = sext i32 %463 to i64
  %464 = load float*, float** %in, align 8
  %arrayidx606 = getelementptr inbounds float, float* %464, i64 %idxprom605
  %465 = load float, float* %arrayidx606, align 4
  %mul607 = fmul float %mul604, %465
  %466 = load i32, i32* %c, align 4
  %idxprom608 = sext i32 %466 to i64
  %467 = load float*, float** %lay, align 8
  %arrayidx609 = getelementptr inbounds float, float* %467, i64 %idxprom608
  %468 = load float, float* %arrayidx609, align 4
  %469 = load float*, float** %in, align 8
  %arrayidx610 = getelementptr inbounds float, float* %469, i64 3
  %470 = load float, float* %arrayidx610, align 4
  %sub611 = fsub float 1.000000e+00, %470
  %mul612 = fmul float %468, %sub611
  %add613 = fadd float %mul607, %mul612
  %471 = load i32, i32* %c, align 4
  %idxprom614 = sext i32 %471 to i64
  %472 = load float*, float** %in, align 8
  %arrayidx615 = getelementptr inbounds float, float* %472, i64 %idxprom614
  %473 = load float, float* %arrayidx615, align 4
  %474 = load float*, float** %lay, align 8
  %arrayidx616 = getelementptr inbounds float, float* %474, i64 3
  %475 = load float, float* %arrayidx616, align 4
  %sub617 = fsub float 1.000000e+00, %475
  %mul618 = fmul float %473, %sub617
  %add619 = fadd float %add613, %mul618
  %476 = load i32, i32* %c, align 4
  %idxprom620 = sext i32 %476 to i64
  %477 = load float*, float** %out, align 8
  %arrayidx621 = getelementptr inbounds float, float* %477, i64 %idxprom620
  store float %add619, float* %arrayidx621, align 4
  br label %if.end.651

if.else.622:                                      ; preds = %for.body.594
  %478 = load float*, float** %lay, align 8
  %arrayidx623 = getelementptr inbounds float, float* %478, i64 3
  %479 = load float, float* %arrayidx623, align 4
  %480 = load float*, float** %in, align 8
  %arrayidx624 = getelementptr inbounds float, float* %480, i64 3
  %481 = load float, float* %arrayidx624, align 4
  %mul625 = fmul float %479, %481
  %482 = load float*, float** %in, align 8
  %arrayidx626 = getelementptr inbounds float, float* %482, i64 3
  %483 = load float, float* %arrayidx626, align 4
  %484 = load i32, i32* %c, align 4
  %idxprom627 = sext i32 %484 to i64
  %485 = load float*, float** %in, align 8
  %arrayidx628 = getelementptr inbounds float, float* %485, i64 %idxprom627
  %486 = load float, float* %arrayidx628, align 4
  %sub629 = fsub float %483, %486
  %mul630 = fmul float 2.000000e+00, %sub629
  %487 = load float*, float** %lay, align 8
  %arrayidx631 = getelementptr inbounds float, float* %487, i64 3
  %488 = load float, float* %arrayidx631, align 4
  %489 = load i32, i32* %c, align 4
  %idxprom632 = sext i32 %489 to i64
  %490 = load float*, float** %lay, align 8
  %arrayidx633 = getelementptr inbounds float, float* %490, i64 %idxprom632
  %491 = load float, float* %arrayidx633, align 4
  %sub634 = fsub float %488, %491
  %mul635 = fmul float %mul630, %sub634
  %sub636 = fsub float %mul625, %mul635
  %492 = load i32, i32* %c, align 4
  %idxprom637 = sext i32 %492 to i64
  %493 = load float*, float** %lay, align 8
  %arrayidx638 = getelementptr inbounds float, float* %493, i64 %idxprom637
  %494 = load float, float* %arrayidx638, align 4
  %495 = load float*, float** %in, align 8
  %arrayidx639 = getelementptr inbounds float, float* %495, i64 3
  %496 = load float, float* %arrayidx639, align 4
  %sub640 = fsub float 1.000000e+00, %496
  %mul641 = fmul float %494, %sub640
  %add642 = fadd float %sub636, %mul641
  %497 = load i32, i32* %c, align 4
  %idxprom643 = sext i32 %497 to i64
  %498 = load float*, float** %in, align 8
  %arrayidx644 = getelementptr inbounds float, float* %498, i64 %idxprom643
  %499 = load float, float* %arrayidx644, align 4
  %500 = load float*, float** %lay, align 8
  %arrayidx645 = getelementptr inbounds float, float* %500, i64 3
  %501 = load float, float* %arrayidx645, align 4
  %sub646 = fsub float 1.000000e+00, %501
  %mul647 = fmul float %499, %sub646
  %add648 = fadd float %add642, %mul647
  %502 = load i32, i32* %c, align 4
  %idxprom649 = sext i32 %502 to i64
  %503 = load float*, float** %out, align 8
  %arrayidx650 = getelementptr inbounds float, float* %503, i64 %idxprom649
  store float %add648, float* %arrayidx650, align 4
  br label %if.end.651

if.end.651:                                       ; preds = %if.else.622, %if.then.601
  br label %for.inc.652

for.inc.652:                                      ; preds = %if.end.651
  %504 = load i32, i32* %c, align 4
  %inc653 = add nsw i32 %504, 1
  store i32 %inc653, i32* %c, align 4
  br label %for.cond.591

for.end.654:                                      ; preds = %for.cond.591
  br label %sw.epilog.1117

sw.bb.655:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.656

for.cond.656:                                     ; preds = %for.inc.713, %sw.bb.655
  %505 = load i32, i32* %c, align 4
  %cmp657 = icmp slt i32 %505, 3
  br i1 %cmp657, label %for.body.659, label %for.end.715

for.body.659:                                     ; preds = %for.cond.656
  %506 = load i32, i32* %c, align 4
  %idxprom660 = sext i32 %506 to i64
  %507 = load float*, float** %in, align 8
  %arrayidx661 = getelementptr inbounds float, float* %507, i64 %idxprom660
  %508 = load float, float* %arrayidx661, align 4
  %conv662 = fpext float %508 to double
  %509 = load float*, float** %lay, align 8
  %arrayidx663 = getelementptr inbounds float, float* %509, i64 3
  %510 = load float, float* %arrayidx663, align 4
  %conv664 = fpext float %510 to double
  %511 = load float*, float** %in, align 8
  %arrayidx665 = getelementptr inbounds float, float* %511, i64 3
  %512 = load float, float* %arrayidx665, align 4
  %tobool666 = fcmp une float %512, 0.000000e+00
  br i1 %tobool666, label %cond.true.667, label %cond.false.673

cond.true.667:                                    ; preds = %for.body.659
  %513 = load i32, i32* %c, align 4
  %idxprom668 = sext i32 %513 to i64
  %514 = load float*, float** %in, align 8
  %arrayidx669 = getelementptr inbounds float, float* %514, i64 %idxprom668
  %515 = load float, float* %arrayidx669, align 4
  %516 = load float*, float** %in, align 8
  %arrayidx670 = getelementptr inbounds float, float* %516, i64 3
  %517 = load float, float* %arrayidx670, align 4
  %div671 = fdiv float %515, %517
  %conv672 = fpext float %div671 to double
  br label %cond.end.674

cond.false.673:                                   ; preds = %for.body.659
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.673, %cond.true.667
  %cond675 = phi double [ %conv672, %cond.true.667 ], [ 0.000000e+00, %cond.false.673 ]
  %mul676 = fmul double %conv664, %cond675
  %518 = load i32, i32* %c, align 4
  %idxprom677 = sext i32 %518 to i64
  %519 = load float*, float** %lay, align 8
  %arrayidx678 = getelementptr inbounds float, float* %519, i64 %idxprom677
  %520 = load float, float* %arrayidx678, align 4
  %mul679 = fmul float 2.000000e+00, %520
  %conv680 = fpext float %mul679 to double
  %521 = load float*, float** %in, align 8
  %arrayidx681 = getelementptr inbounds float, float* %521, i64 3
  %522 = load float, float* %arrayidx681, align 4
  %tobool682 = fcmp une float %522, 0.000000e+00
  br i1 %tobool682, label %cond.true.683, label %cond.false.689

cond.true.683:                                    ; preds = %cond.end.674
  %523 = load i32, i32* %c, align 4
  %idxprom684 = sext i32 %523 to i64
  %524 = load float*, float** %in, align 8
  %arrayidx685 = getelementptr inbounds float, float* %524, i64 %idxprom684
  %525 = load float, float* %arrayidx685, align 4
  %526 = load float*, float** %in, align 8
  %arrayidx686 = getelementptr inbounds float, float* %526, i64 3
  %527 = load float, float* %arrayidx686, align 4
  %div687 = fdiv float %525, %527
  %conv688 = fpext float %div687 to double
  br label %cond.end.690

cond.false.689:                                   ; preds = %cond.end.674
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.false.689, %cond.true.683
  %cond691 = phi double [ %conv688, %cond.true.683 ], [ 0.000000e+00, %cond.false.689 ]
  %sub692 = fsub double 1.000000e+00, %cond691
  %mul693 = fmul double %conv680, %sub692
  %add694 = fadd double %mul676, %mul693
  %mul695 = fmul double %conv662, %add694
  %528 = load i32, i32* %c, align 4
  %idxprom696 = sext i32 %528 to i64
  %529 = load float*, float** %lay, align 8
  %arrayidx697 = getelementptr inbounds float, float* %529, i64 %idxprom696
  %530 = load float, float* %arrayidx697, align 4
  %531 = load float*, float** %in, align 8
  %arrayidx698 = getelementptr inbounds float, float* %531, i64 3
  %532 = load float, float* %arrayidx698, align 4
  %sub699 = fsub float 1.000000e+00, %532
  %mul700 = fmul float %530, %sub699
  %conv701 = fpext float %mul700 to double
  %add702 = fadd double %mul695, %conv701
  %533 = load i32, i32* %c, align 4
  %idxprom703 = sext i32 %533 to i64
  %534 = load float*, float** %in, align 8
  %arrayidx704 = getelementptr inbounds float, float* %534, i64 %idxprom703
  %535 = load float, float* %arrayidx704, align 4
  %536 = load float*, float** %lay, align 8
  %arrayidx705 = getelementptr inbounds float, float* %536, i64 3
  %537 = load float, float* %arrayidx705, align 4
  %sub706 = fsub float 1.000000e+00, %537
  %mul707 = fmul float %535, %sub706
  %conv708 = fpext float %mul707 to double
  %add709 = fadd double %add702, %conv708
  %conv710 = fptrunc double %add709 to float
  %538 = load i32, i32* %c, align 4
  %idxprom711 = sext i32 %538 to i64
  %539 = load float*, float** %out, align 8
  %arrayidx712 = getelementptr inbounds float, float* %539, i64 %idxprom711
  store float %conv710, float* %arrayidx712, align 4
  br label %for.inc.713

for.inc.713:                                      ; preds = %cond.end.690
  %540 = load i32, i32* %c, align 4
  %inc714 = add nsw i32 %540, 1
  store i32 %inc714, i32* %c, align 4
  br label %for.cond.656

for.end.715:                                      ; preds = %for.cond.656
  br label %sw.epilog.1117

sw.bb.716:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.717

for.cond.717:                                     ; preds = %for.inc.762, %sw.bb.716
  %541 = load i32, i32* %c, align 4
  %cmp718 = icmp slt i32 %541, 3
  br i1 %cmp718, label %for.body.720, label %for.end.764

for.body.720:                                     ; preds = %for.cond.717
  %542 = load i32, i32* %c, align 4
  %idxprom721 = sext i32 %542 to i64
  %543 = load float*, float** %lay, align 8
  %arrayidx722 = getelementptr inbounds float, float* %543, i64 %idxprom721
  %544 = load float, float* %arrayidx722, align 4
  %545 = load float*, float** %in, align 8
  %arrayidx723 = getelementptr inbounds float, float* %545, i64 3
  %546 = load float, float* %arrayidx723, align 4
  %mul724 = fmul float %544, %546
  %547 = load i32, i32* %c, align 4
  %idxprom725 = sext i32 %547 to i64
  %548 = load float*, float** %in, align 8
  %arrayidx726 = getelementptr inbounds float, float* %548, i64 %idxprom725
  %549 = load float, float* %arrayidx726, align 4
  %550 = load float*, float** %lay, align 8
  %arrayidx727 = getelementptr inbounds float, float* %550, i64 3
  %551 = load float, float* %arrayidx727, align 4
  %mul728 = fmul float %549, %551
  %add729 = fadd float %mul724, %mul728
  %552 = load float*, float** %lay, align 8
  %arrayidx730 = getelementptr inbounds float, float* %552, i64 3
  %553 = load float, float* %arrayidx730, align 4
  %554 = load float*, float** %in, align 8
  %arrayidx731 = getelementptr inbounds float, float* %554, i64 3
  %555 = load float, float* %arrayidx731, align 4
  %mul732 = fmul float %553, %555
  %cmp733 = fcmp oge float %add729, %mul732
  br i1 %cmp733, label %if.then.735, label %if.else.753

if.then.735:                                      ; preds = %for.body.720
  %556 = load float*, float** %lay, align 8
  %arrayidx736 = getelementptr inbounds float, float* %556, i64 3
  %557 = load float, float* %arrayidx736, align 4
  %558 = load float*, float** %in, align 8
  %arrayidx737 = getelementptr inbounds float, float* %558, i64 3
  %559 = load float, float* %arrayidx737, align 4
  %mul738 = fmul float %557, %559
  %560 = load i32, i32* %c, align 4
  %idxprom739 = sext i32 %560 to i64
  %561 = load float*, float** %lay, align 8
  %arrayidx740 = getelementptr inbounds float, float* %561, i64 %idxprom739
  %562 = load float, float* %arrayidx740, align 4
  %563 = load float*, float** %in, align 8
  %arrayidx741 = getelementptr inbounds float, float* %563, i64 3
  %564 = load float, float* %arrayidx741, align 4
  %sub742 = fsub float 1.000000e+00, %564
  %mul743 = fmul float %562, %sub742
  %add744 = fadd float %mul738, %mul743
  %565 = load i32, i32* %c, align 4
  %idxprom745 = sext i32 %565 to i64
  %566 = load float*, float** %in, align 8
  %arrayidx746 = getelementptr inbounds float, float* %566, i64 %idxprom745
  %567 = load float, float* %arrayidx746, align 4
  %568 = load float*, float** %lay, align 8
  %arrayidx747 = getelementptr inbounds float, float* %568, i64 3
  %569 = load float, float* %arrayidx747, align 4
  %sub748 = fsub float 1.000000e+00, %569
  %mul749 = fmul float %567, %sub748
  %add750 = fadd float %add744, %mul749
  %570 = load i32, i32* %c, align 4
  %idxprom751 = sext i32 %570 to i64
  %571 = load float*, float** %out, align 8
  %arrayidx752 = getelementptr inbounds float, float* %571, i64 %idxprom751
  store float %add750, float* %arrayidx752, align 4
  br label %if.end.761

if.else.753:                                      ; preds = %for.body.720
  %572 = load i32, i32* %c, align 4
  %idxprom754 = sext i32 %572 to i64
  %573 = load float*, float** %in, align 8
  %arrayidx755 = getelementptr inbounds float, float* %573, i64 %idxprom754
  %574 = load float, float* %arrayidx755, align 4
  %575 = load i32, i32* %c, align 4
  %idxprom756 = sext i32 %575 to i64
  %576 = load float*, float** %lay, align 8
  %arrayidx757 = getelementptr inbounds float, float* %576, i64 %idxprom756
  %577 = load float, float* %arrayidx757, align 4
  %add758 = fadd float %574, %577
  %578 = load i32, i32* %c, align 4
  %idxprom759 = sext i32 %578 to i64
  %579 = load float*, float** %out, align 8
  %arrayidx760 = getelementptr inbounds float, float* %579, i64 %idxprom759
  store float %add758, float* %arrayidx760, align 4
  br label %if.end.761

if.end.761:                                       ; preds = %if.else.753, %if.then.735
  br label %for.inc.762

for.inc.762:                                      ; preds = %if.end.761
  %580 = load i32, i32* %c, align 4
  %inc763 = add nsw i32 %580, 1
  store i32 %inc763, i32* %c, align 4
  br label %for.cond.717

for.end.764:                                      ; preds = %for.cond.717
  br label %sw.epilog.1117

sw.bb.765:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.766

for.cond.766:                                     ; preds = %for.inc.810, %sw.bb.765
  %581 = load i32, i32* %c, align 4
  %cmp767 = icmp slt i32 %581, 3
  br i1 %cmp767, label %for.body.769, label %for.end.812

for.body.769:                                     ; preds = %for.cond.766
  %582 = load i32, i32* %c, align 4
  %idxprom770 = sext i32 %582 to i64
  %583 = load float*, float** %in, align 8
  %arrayidx771 = getelementptr inbounds float, float* %583, i64 %idxprom770
  %584 = load float, float* %arrayidx771, align 4
  %585 = load float*, float** %lay, align 8
  %arrayidx772 = getelementptr inbounds float, float* %585, i64 3
  %586 = load float, float* %arrayidx772, align 4
  %mul773 = fmul float %584, %586
  %587 = load i32, i32* %c, align 4
  %idxprom774 = sext i32 %587 to i64
  %588 = load float*, float** %lay, align 8
  %arrayidx775 = getelementptr inbounds float, float* %588, i64 %idxprom774
  %589 = load float, float* %arrayidx775, align 4
  %590 = load float*, float** %in, align 8
  %arrayidx776 = getelementptr inbounds float, float* %590, i64 3
  %591 = load float, float* %arrayidx776, align 4
  %mul777 = fmul float %589, %591
  %sub778 = fsub float %mul773, %mul777
  %cmp779 = fcmp ole float %sub778, 0.000000e+00
  br i1 %cmp779, label %if.then.781, label %if.else.795

if.then.781:                                      ; preds = %for.body.769
  %592 = load i32, i32* %c, align 4
  %idxprom782 = sext i32 %592 to i64
  %593 = load float*, float** %lay, align 8
  %arrayidx783 = getelementptr inbounds float, float* %593, i64 %idxprom782
  %594 = load float, float* %arrayidx783, align 4
  %595 = load float*, float** %in, align 8
  %arrayidx784 = getelementptr inbounds float, float* %595, i64 3
  %596 = load float, float* %arrayidx784, align 4
  %sub785 = fsub float 1.000000e+00, %596
  %mul786 = fmul float %594, %sub785
  %597 = load i32, i32* %c, align 4
  %idxprom787 = sext i32 %597 to i64
  %598 = load float*, float** %in, align 8
  %arrayidx788 = getelementptr inbounds float, float* %598, i64 %idxprom787
  %599 = load float, float* %arrayidx788, align 4
  %600 = load float*, float** %lay, align 8
  %arrayidx789 = getelementptr inbounds float, float* %600, i64 3
  %601 = load float, float* %arrayidx789, align 4
  %sub790 = fsub float 1.000000e+00, %601
  %mul791 = fmul float %599, %sub790
  %add792 = fadd float %mul786, %mul791
  %602 = load i32, i32* %c, align 4
  %idxprom793 = sext i32 %602 to i64
  %603 = load float*, float** %out, align 8
  %arrayidx794 = getelementptr inbounds float, float* %603, i64 %idxprom793
  store float %add792, float* %arrayidx794, align 4
  br label %if.end.809

if.else.795:                                      ; preds = %for.body.769
  %604 = load i32, i32* %c, align 4
  %idxprom796 = sext i32 %604 to i64
  %605 = load float*, float** %in, align 8
  %arrayidx797 = getelementptr inbounds float, float* %605, i64 %idxprom796
  %606 = load float, float* %arrayidx797, align 4
  %607 = load i32, i32* %c, align 4
  %idxprom798 = sext i32 %607 to i64
  %608 = load float*, float** %lay, align 8
  %arrayidx799 = getelementptr inbounds float, float* %608, i64 %idxprom798
  %609 = load float, float* %arrayidx799, align 4
  %add800 = fadd float %606, %609
  %610 = load i32, i32* %c, align 4
  %idxprom801 = sext i32 %610 to i64
  %611 = load float*, float** %lay, align 8
  %arrayidx802 = getelementptr inbounds float, float* %611, i64 %idxprom801
  %612 = load float, float* %arrayidx802, align 4
  %mul803 = fmul float 2.000000e+00, %612
  %613 = load float*, float** %in, align 8
  %arrayidx804 = getelementptr inbounds float, float* %613, i64 3
  %614 = load float, float* %arrayidx804, align 4
  %mul805 = fmul float %mul803, %614
  %sub806 = fsub float %add800, %mul805
  %615 = load i32, i32* %c, align 4
  %idxprom807 = sext i32 %615 to i64
  %616 = load float*, float** %out, align 8
  %arrayidx808 = getelementptr inbounds float, float* %616, i64 %idxprom807
  store float %sub806, float* %arrayidx808, align 4
  br label %if.end.809

if.end.809:                                       ; preds = %if.else.795, %if.then.781
  br label %for.inc.810

for.inc.810:                                      ; preds = %if.end.809
  %617 = load i32, i32* %c, align 4
  %inc811 = add nsw i32 %617, 1
  store i32 %inc811, i32* %c, align 4
  br label %for.cond.766

for.end.812:                                      ; preds = %for.cond.766
  br label %sw.epilog.1117

sw.bb.813:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.814

for.cond.814:                                     ; preds = %for.inc.918, %sw.bb.813
  %618 = load i32, i32* %c, align 4
  %cmp815 = icmp slt i32 %618, 3
  br i1 %cmp815, label %for.body.817, label %for.end.920

for.body.817:                                     ; preds = %for.cond.814
  %619 = load i32, i32* %c, align 4
  %idxprom818 = sext i32 %619 to i64
  %620 = load float*, float** %in, align 8
  %arrayidx819 = getelementptr inbounds float, float* %620, i64 %idxprom818
  %621 = load float, float* %arrayidx819, align 4
  %622 = load float*, float** %lay, align 8
  %arrayidx820 = getelementptr inbounds float, float* %622, i64 3
  %623 = load float, float* %arrayidx820, align 4
  %mul821 = fmul float %621, %623
  %624 = load i32, i32* %c, align 4
  %idxprom822 = sext i32 %624 to i64
  %625 = load float*, float** %lay, align 8
  %arrayidx823 = getelementptr inbounds float, float* %625, i64 %idxprom822
  %626 = load float, float* %arrayidx823, align 4
  %627 = load float*, float** %in, align 8
  %arrayidx824 = getelementptr inbounds float, float* %627, i64 3
  %628 = load float, float* %arrayidx824, align 4
  %mul825 = fmul float %626, %628
  %sub826 = fsub float %mul821, %mul825
  %conv827 = fpext float %sub826 to double
  %629 = load float*, float** %lay, align 8
  %arrayidx828 = getelementptr inbounds float, float* %629, i64 3
  %630 = load float, float* %arrayidx828, align 4
  %conv829 = fpext float %630 to double
  %mul830 = fmul double 5.000000e-01, %conv829
  %631 = load float*, float** %in, align 8
  %arrayidx831 = getelementptr inbounds float, float* %631, i64 3
  %632 = load float, float* %arrayidx831, align 4
  %conv832 = fpext float %632 to double
  %mul833 = fmul double %mul830, %conv832
  %add834 = fadd double %conv827, %mul833
  %633 = load float*, float** %lay, align 8
  %arrayidx835 = getelementptr inbounds float, float* %633, i64 3
  %634 = load float, float* %arrayidx835, align 4
  %635 = load float*, float** %in, align 8
  %arrayidx836 = getelementptr inbounds float, float* %635, i64 3
  %636 = load float, float* %arrayidx836, align 4
  %mul837 = fmul float %634, %636
  %conv838 = fpext float %mul837 to double
  %cmp839 = fcmp oge double %add834, %conv838
  br i1 %cmp839, label %if.then.841, label %if.else.859

if.then.841:                                      ; preds = %for.body.817
  %637 = load float*, float** %lay, align 8
  %arrayidx842 = getelementptr inbounds float, float* %637, i64 3
  %638 = load float, float* %arrayidx842, align 4
  %639 = load float*, float** %in, align 8
  %arrayidx843 = getelementptr inbounds float, float* %639, i64 3
  %640 = load float, float* %arrayidx843, align 4
  %mul844 = fmul float %638, %640
  %641 = load i32, i32* %c, align 4
  %idxprom845 = sext i32 %641 to i64
  %642 = load float*, float** %lay, align 8
  %arrayidx846 = getelementptr inbounds float, float* %642, i64 %idxprom845
  %643 = load float, float* %arrayidx846, align 4
  %644 = load float*, float** %in, align 8
  %arrayidx847 = getelementptr inbounds float, float* %644, i64 3
  %645 = load float, float* %arrayidx847, align 4
  %sub848 = fsub float 1.000000e+00, %645
  %mul849 = fmul float %643, %sub848
  %add850 = fadd float %mul844, %mul849
  %646 = load i32, i32* %c, align 4
  %idxprom851 = sext i32 %646 to i64
  %647 = load float*, float** %in, align 8
  %arrayidx852 = getelementptr inbounds float, float* %647, i64 %idxprom851
  %648 = load float, float* %arrayidx852, align 4
  %649 = load float*, float** %lay, align 8
  %arrayidx853 = getelementptr inbounds float, float* %649, i64 3
  %650 = load float, float* %arrayidx853, align 4
  %sub854 = fsub float 1.000000e+00, %650
  %mul855 = fmul float %648, %sub854
  %add856 = fadd float %add850, %mul855
  %651 = load i32, i32* %c, align 4
  %idxprom857 = sext i32 %651 to i64
  %652 = load float*, float** %out, align 8
  %arrayidx858 = getelementptr inbounds float, float* %652, i64 %idxprom857
  store float %add856, float* %arrayidx858, align 4
  br label %if.end.917

if.else.859:                                      ; preds = %for.body.817
  %653 = load i32, i32* %c, align 4
  %idxprom860 = sext i32 %653 to i64
  %654 = load float*, float** %in, align 8
  %arrayidx861 = getelementptr inbounds float, float* %654, i64 %idxprom860
  %655 = load float, float* %arrayidx861, align 4
  %656 = load float*, float** %lay, align 8
  %arrayidx862 = getelementptr inbounds float, float* %656, i64 3
  %657 = load float, float* %arrayidx862, align 4
  %mul863 = fmul float %655, %657
  %658 = load i32, i32* %c, align 4
  %idxprom864 = sext i32 %658 to i64
  %659 = load float*, float** %lay, align 8
  %arrayidx865 = getelementptr inbounds float, float* %659, i64 %idxprom864
  %660 = load float, float* %arrayidx865, align 4
  %661 = load float*, float** %in, align 8
  %arrayidx866 = getelementptr inbounds float, float* %661, i64 3
  %662 = load float, float* %arrayidx866, align 4
  %mul867 = fmul float %660, %662
  %sub868 = fsub float %mul863, %mul867
  %conv869 = fpext float %sub868 to double
  %663 = load float*, float** %lay, align 8
  %arrayidx870 = getelementptr inbounds float, float* %663, i64 3
  %664 = load float, float* %arrayidx870, align 4
  %conv871 = fpext float %664 to double
  %mul872 = fmul double 5.000000e-01, %conv871
  %665 = load float*, float** %in, align 8
  %arrayidx873 = getelementptr inbounds float, float* %665, i64 3
  %666 = load float, float* %arrayidx873, align 4
  %conv874 = fpext float %666 to double
  %mul875 = fmul double %mul872, %conv874
  %add876 = fadd double %conv869, %mul875
  %cmp877 = fcmp ole double %add876, 0.000000e+00
  br i1 %cmp877, label %if.then.879, label %if.else.893

if.then.879:                                      ; preds = %if.else.859
  %667 = load i32, i32* %c, align 4
  %idxprom880 = sext i32 %667 to i64
  %668 = load float*, float** %lay, align 8
  %arrayidx881 = getelementptr inbounds float, float* %668, i64 %idxprom880
  %669 = load float, float* %arrayidx881, align 4
  %670 = load float*, float** %in, align 8
  %arrayidx882 = getelementptr inbounds float, float* %670, i64 3
  %671 = load float, float* %arrayidx882, align 4
  %sub883 = fsub float 1.000000e+00, %671
  %mul884 = fmul float %669, %sub883
  %672 = load i32, i32* %c, align 4
  %idxprom885 = sext i32 %672 to i64
  %673 = load float*, float** %in, align 8
  %arrayidx886 = getelementptr inbounds float, float* %673, i64 %idxprom885
  %674 = load float, float* %arrayidx886, align 4
  %675 = load float*, float** %lay, align 8
  %arrayidx887 = getelementptr inbounds float, float* %675, i64 3
  %676 = load float, float* %arrayidx887, align 4
  %sub888 = fsub float 1.000000e+00, %676
  %mul889 = fmul float %674, %sub888
  %add890 = fadd float %mul884, %mul889
  %677 = load i32, i32* %c, align 4
  %idxprom891 = sext i32 %677 to i64
  %678 = load float*, float** %out, align 8
  %arrayidx892 = getelementptr inbounds float, float* %678, i64 %idxprom891
  store float %add890, float* %arrayidx892, align 4
  br label %if.end.916

if.else.893:                                      ; preds = %if.else.859
  %679 = load i32, i32* %c, align 4
  %idxprom894 = sext i32 %679 to i64
  %680 = load float*, float** %in, align 8
  %arrayidx895 = getelementptr inbounds float, float* %680, i64 %idxprom894
  %681 = load float, float* %arrayidx895, align 4
  %682 = load i32, i32* %c, align 4
  %idxprom896 = sext i32 %682 to i64
  %683 = load float*, float** %lay, align 8
  %arrayidx897 = getelementptr inbounds float, float* %683, i64 %idxprom896
  %684 = load float, float* %arrayidx897, align 4
  %add898 = fadd float %681, %684
  %685 = load i32, i32* %c, align 4
  %idxprom899 = sext i32 %685 to i64
  %686 = load float*, float** %lay, align 8
  %arrayidx900 = getelementptr inbounds float, float* %686, i64 %idxprom899
  %687 = load float, float* %arrayidx900, align 4
  %mul901 = fmul float 2.000000e+00, %687
  %688 = load float*, float** %in, align 8
  %arrayidx902 = getelementptr inbounds float, float* %688, i64 3
  %689 = load float, float* %arrayidx902, align 4
  %mul903 = fmul float %mul901, %689
  %sub904 = fsub float %add898, %mul903
  %conv905 = fpext float %sub904 to double
  %690 = load float*, float** %in, align 8
  %arrayidx906 = getelementptr inbounds float, float* %690, i64 3
  %691 = load float, float* %arrayidx906, align 4
  %conv907 = fpext float %691 to double
  %mul908 = fmul double 5.000000e-01, %conv907
  %692 = load float*, float** %lay, align 8
  %arrayidx909 = getelementptr inbounds float, float* %692, i64 3
  %693 = load float, float* %arrayidx909, align 4
  %conv910 = fpext float %693 to double
  %mul911 = fmul double %mul908, %conv910
  %add912 = fadd double %conv905, %mul911
  %conv913 = fptrunc double %add912 to float
  %694 = load i32, i32* %c, align 4
  %idxprom914 = sext i32 %694 to i64
  %695 = load float*, float** %out, align 8
  %arrayidx915 = getelementptr inbounds float, float* %695, i64 %idxprom914
  store float %conv913, float* %arrayidx915, align 4
  br label %if.end.916

if.end.916:                                       ; preds = %if.else.893, %if.then.879
  br label %if.end.917

if.end.917:                                       ; preds = %if.end.916, %if.then.841
  br label %for.inc.918

for.inc.918:                                      ; preds = %if.end.917
  %696 = load i32, i32* %c, align 4
  %inc919 = add nsw i32 %696, 1
  store i32 %inc919, i32* %c, align 4
  br label %for.cond.814

for.end.920:                                      ; preds = %for.cond.814
  br label %sw.epilog.1117

sw.bb.921:                                        ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.922

for.cond.922:                                     ; preds = %for.inc.1020, %sw.bb.921
  %697 = load i32, i32* %c, align 4
  %cmp923 = icmp slt i32 %697, 3
  br i1 %cmp923, label %for.body.925, label %for.end.1022

for.body.925:                                     ; preds = %for.cond.922
  %698 = load i32, i32* %c, align 4
  %idxprom926 = sext i32 %698 to i64
  %699 = load float*, float** %in, align 8
  %arrayidx927 = getelementptr inbounds float, float* %699, i64 %idxprom926
  %700 = load float, float* %arrayidx927, align 4
  %701 = load float*, float** %lay, align 8
  %arrayidx928 = getelementptr inbounds float, float* %701, i64 3
  %702 = load float, float* %arrayidx928, align 4
  %mul929 = fmul float %700, %702
  %703 = load i32, i32* %c, align 4
  %idxprom930 = sext i32 %703 to i64
  %704 = load float*, float** %lay, align 8
  %arrayidx931 = getelementptr inbounds float, float* %704, i64 %idxprom930
  %705 = load float, float* %arrayidx931, align 4
  %706 = load float*, float** %in, align 8
  %arrayidx932 = getelementptr inbounds float, float* %706, i64 3
  %707 = load float, float* %arrayidx932, align 4
  %mul933 = fmul float %705, %707
  %add934 = fadd float %mul929, %mul933
  %conv935 = fpext float %add934 to double
  %708 = load float*, float** %lay, align 8
  %arrayidx936 = getelementptr inbounds float, float* %708, i64 3
  %709 = load float, float* %arrayidx936, align 4
  %conv937 = fpext float %709 to double
  %mul938 = fmul double 5.000000e-01, %conv937
  %710 = load float*, float** %in, align 8
  %arrayidx939 = getelementptr inbounds float, float* %710, i64 3
  %711 = load float, float* %arrayidx939, align 4
  %conv940 = fpext float %711 to double
  %mul941 = fmul double %mul938, %conv940
  %sub942 = fsub double %conv935, %mul941
  %712 = load float*, float** %lay, align 8
  %arrayidx943 = getelementptr inbounds float, float* %712, i64 3
  %713 = load float, float* %arrayidx943, align 4
  %714 = load float*, float** %in, align 8
  %arrayidx944 = getelementptr inbounds float, float* %714, i64 3
  %715 = load float, float* %arrayidx944, align 4
  %mul945 = fmul float %713, %715
  %conv946 = fpext float %mul945 to double
  %cmp947 = fcmp oge double %sub942, %conv946
  br i1 %cmp947, label %if.then.949, label %if.else.967

if.then.949:                                      ; preds = %for.body.925
  %716 = load float*, float** %lay, align 8
  %arrayidx950 = getelementptr inbounds float, float* %716, i64 3
  %717 = load float, float* %arrayidx950, align 4
  %718 = load float*, float** %in, align 8
  %arrayidx951 = getelementptr inbounds float, float* %718, i64 3
  %719 = load float, float* %arrayidx951, align 4
  %mul952 = fmul float %717, %719
  %720 = load i32, i32* %c, align 4
  %idxprom953 = sext i32 %720 to i64
  %721 = load float*, float** %lay, align 8
  %arrayidx954 = getelementptr inbounds float, float* %721, i64 %idxprom953
  %722 = load float, float* %arrayidx954, align 4
  %723 = load float*, float** %in, align 8
  %arrayidx955 = getelementptr inbounds float, float* %723, i64 3
  %724 = load float, float* %arrayidx955, align 4
  %sub956 = fsub float 1.000000e+00, %724
  %mul957 = fmul float %722, %sub956
  %add958 = fadd float %mul952, %mul957
  %725 = load i32, i32* %c, align 4
  %idxprom959 = sext i32 %725 to i64
  %726 = load float*, float** %in, align 8
  %arrayidx960 = getelementptr inbounds float, float* %726, i64 %idxprom959
  %727 = load float, float* %arrayidx960, align 4
  %728 = load float*, float** %lay, align 8
  %arrayidx961 = getelementptr inbounds float, float* %728, i64 3
  %729 = load float, float* %arrayidx961, align 4
  %sub962 = fsub float 1.000000e+00, %729
  %mul963 = fmul float %727, %sub962
  %add964 = fadd float %add958, %mul963
  %730 = load i32, i32* %c, align 4
  %idxprom965 = sext i32 %730 to i64
  %731 = load float*, float** %out, align 8
  %arrayidx966 = getelementptr inbounds float, float* %731, i64 %idxprom965
  store float %add964, float* %arrayidx966, align 4
  br label %if.end.1019

if.else.967:                                      ; preds = %for.body.925
  %732 = load i32, i32* %c, align 4
  %idxprom968 = sext i32 %732 to i64
  %733 = load float*, float** %in, align 8
  %arrayidx969 = getelementptr inbounds float, float* %733, i64 %idxprom968
  %734 = load float, float* %arrayidx969, align 4
  %735 = load float*, float** %lay, align 8
  %arrayidx970 = getelementptr inbounds float, float* %735, i64 3
  %736 = load float, float* %arrayidx970, align 4
  %mul971 = fmul float %734, %736
  %737 = load i32, i32* %c, align 4
  %idxprom972 = sext i32 %737 to i64
  %738 = load float*, float** %lay, align 8
  %arrayidx973 = getelementptr inbounds float, float* %738, i64 %idxprom972
  %739 = load float, float* %arrayidx973, align 4
  %740 = load float*, float** %in, align 8
  %arrayidx974 = getelementptr inbounds float, float* %740, i64 3
  %741 = load float, float* %arrayidx974, align 4
  %mul975 = fmul float %739, %741
  %add976 = fadd float %mul971, %mul975
  %conv977 = fpext float %add976 to double
  %742 = load float*, float** %lay, align 8
  %arrayidx978 = getelementptr inbounds float, float* %742, i64 3
  %743 = load float, float* %arrayidx978, align 4
  %conv979 = fpext float %743 to double
  %mul980 = fmul double 5.000000e-01, %conv979
  %744 = load float*, float** %in, align 8
  %arrayidx981 = getelementptr inbounds float, float* %744, i64 3
  %745 = load float, float* %arrayidx981, align 4
  %conv982 = fpext float %745 to double
  %mul983 = fmul double %mul980, %conv982
  %sub984 = fsub double %conv977, %mul983
  %cmp985 = fcmp ole double %sub984, 0.000000e+00
  br i1 %cmp985, label %if.then.987, label %if.else.1001

if.then.987:                                      ; preds = %if.else.967
  %746 = load i32, i32* %c, align 4
  %idxprom988 = sext i32 %746 to i64
  %747 = load float*, float** %lay, align 8
  %arrayidx989 = getelementptr inbounds float, float* %747, i64 %idxprom988
  %748 = load float, float* %arrayidx989, align 4
  %749 = load float*, float** %in, align 8
  %arrayidx990 = getelementptr inbounds float, float* %749, i64 3
  %750 = load float, float* %arrayidx990, align 4
  %sub991 = fsub float 1.000000e+00, %750
  %mul992 = fmul float %748, %sub991
  %751 = load i32, i32* %c, align 4
  %idxprom993 = sext i32 %751 to i64
  %752 = load float*, float** %in, align 8
  %arrayidx994 = getelementptr inbounds float, float* %752, i64 %idxprom993
  %753 = load float, float* %arrayidx994, align 4
  %754 = load float*, float** %lay, align 8
  %arrayidx995 = getelementptr inbounds float, float* %754, i64 3
  %755 = load float, float* %arrayidx995, align 4
  %sub996 = fsub float 1.000000e+00, %755
  %mul997 = fmul float %753, %sub996
  %add998 = fadd float %mul992, %mul997
  %756 = load i32, i32* %c, align 4
  %idxprom999 = sext i32 %756 to i64
  %757 = load float*, float** %out, align 8
  %arrayidx1000 = getelementptr inbounds float, float* %757, i64 %idxprom999
  store float %add998, float* %arrayidx1000, align 4
  br label %if.end.1018

if.else.1001:                                     ; preds = %if.else.967
  %758 = load i32, i32* %c, align 4
  %idxprom1002 = sext i32 %758 to i64
  %759 = load float*, float** %in, align 8
  %arrayidx1003 = getelementptr inbounds float, float* %759, i64 %idxprom1002
  %760 = load float, float* %arrayidx1003, align 4
  %761 = load i32, i32* %c, align 4
  %idxprom1004 = sext i32 %761 to i64
  %762 = load float*, float** %lay, align 8
  %arrayidx1005 = getelementptr inbounds float, float* %762, i64 %idxprom1004
  %763 = load float, float* %arrayidx1005, align 4
  %add1006 = fadd float %760, %763
  %conv1007 = fpext float %add1006 to double
  %764 = load float*, float** %in, align 8
  %arrayidx1008 = getelementptr inbounds float, float* %764, i64 3
  %765 = load float, float* %arrayidx1008, align 4
  %conv1009 = fpext float %765 to double
  %mul1010 = fmul double 5.000000e-01, %conv1009
  %766 = load float*, float** %lay, align 8
  %arrayidx1011 = getelementptr inbounds float, float* %766, i64 3
  %767 = load float, float* %arrayidx1011, align 4
  %conv1012 = fpext float %767 to double
  %mul1013 = fmul double %mul1010, %conv1012
  %sub1014 = fsub double %conv1007, %mul1013
  %conv1015 = fptrunc double %sub1014 to float
  %768 = load i32, i32* %c, align 4
  %idxprom1016 = sext i32 %768 to i64
  %769 = load float*, float** %out, align 8
  %arrayidx1017 = getelementptr inbounds float, float* %769, i64 %idxprom1016
  store float %conv1015, float* %arrayidx1017, align 4
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.else.1001, %if.then.987
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.end.1018, %if.then.949
  br label %for.inc.1020

for.inc.1020:                                     ; preds = %if.end.1019
  %770 = load i32, i32* %c, align 4
  %inc1021 = add nsw i32 %770, 1
  store i32 %inc1021, i32* %c, align 4
  br label %for.cond.922

for.end.1022:                                     ; preds = %for.cond.922
  br label %sw.epilog.1117

sw.bb.1023:                                       ; preds = %sw.epilog
  store i32 0, i32* %c, align 4
  br label %for.cond.1024

for.cond.1024:                                    ; preds = %for.inc.1085, %sw.bb.1023
  %771 = load i32, i32* %c, align 4
  %cmp1025 = icmp slt i32 %771, 3
  br i1 %cmp1025, label %for.body.1027, label %for.end.1087

for.body.1027:                                    ; preds = %for.cond.1024
  %772 = load float*, float** %lay, align 8
  %arrayidx1028 = getelementptr inbounds float, float* %772, i64 3
  %773 = load float, float* %arrayidx1028, align 4
  %conv1029 = fpext float %773 to double
  %cmp1030 = fcmp oeq double %conv1029, 0.000000e+00
  br i1 %cmp1030, label %if.then.1042, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.1027
  %774 = load i32, i32* %c, align 4
  %idxprom1032 = sext i32 %774 to i64
  %775 = load float*, float** %in, align 8
  %arrayidx1033 = getelementptr inbounds float, float* %775, i64 %idxprom1032
  %776 = load float, float* %arrayidx1033, align 4
  %777 = load i32, i32* %c, align 4
  %idxprom1034 = sext i32 %777 to i64
  %778 = load float*, float** %lay, align 8
  %arrayidx1035 = getelementptr inbounds float, float* %778, i64 %idxprom1034
  %779 = load float, float* %arrayidx1035, align 4
  %div1036 = fdiv float %776, %779
  %780 = load float*, float** %in, align 8
  %arrayidx1037 = getelementptr inbounds float, float* %780, i64 3
  %781 = load float, float* %arrayidx1037, align 4
  %782 = load float*, float** %lay, align 8
  %arrayidx1038 = getelementptr inbounds float, float* %782, i64 3
  %783 = load float, float* %arrayidx1038, align 4
  %div1039 = fdiv float %781, %783
  %cmp1040 = fcmp ogt float %div1036, %div1039
  br i1 %cmp1040, label %if.then.1042, label %if.else.1060

if.then.1042:                                     ; preds = %lor.lhs.false, %for.body.1027
  %784 = load float*, float** %lay, align 8
  %arrayidx1043 = getelementptr inbounds float, float* %784, i64 3
  %785 = load float, float* %arrayidx1043, align 4
  %786 = load float*, float** %in, align 8
  %arrayidx1044 = getelementptr inbounds float, float* %786, i64 3
  %787 = load float, float* %arrayidx1044, align 4
  %mul1045 = fmul float %785, %787
  %788 = load i32, i32* %c, align 4
  %idxprom1046 = sext i32 %788 to i64
  %789 = load float*, float** %lay, align 8
  %arrayidx1047 = getelementptr inbounds float, float* %789, i64 %idxprom1046
  %790 = load float, float* %arrayidx1047, align 4
  %791 = load float*, float** %in, align 8
  %arrayidx1048 = getelementptr inbounds float, float* %791, i64 3
  %792 = load float, float* %arrayidx1048, align 4
  %sub1049 = fsub float 1.000000e+00, %792
  %mul1050 = fmul float %790, %sub1049
  %add1051 = fadd float %mul1045, %mul1050
  %793 = load i32, i32* %c, align 4
  %idxprom1052 = sext i32 %793 to i64
  %794 = load float*, float** %in, align 8
  %arrayidx1053 = getelementptr inbounds float, float* %794, i64 %idxprom1052
  %795 = load float, float* %arrayidx1053, align 4
  %796 = load float*, float** %lay, align 8
  %arrayidx1054 = getelementptr inbounds float, float* %796, i64 3
  %797 = load float, float* %arrayidx1054, align 4
  %sub1055 = fsub float 1.000000e+00, %797
  %mul1056 = fmul float %795, %sub1055
  %add1057 = fadd float %add1051, %mul1056
  %798 = load i32, i32* %c, align 4
  %idxprom1058 = sext i32 %798 to i64
  %799 = load float*, float** %out, align 8
  %arrayidx1059 = getelementptr inbounds float, float* %799, i64 %idxprom1058
  store float %add1057, float* %arrayidx1059, align 4
  br label %if.end.1084

if.else.1060:                                     ; preds = %lor.lhs.false
  %800 = load i32, i32* %c, align 4
  %idxprom1061 = sext i32 %800 to i64
  %801 = load float*, float** %in, align 8
  %arrayidx1062 = getelementptr inbounds float, float* %801, i64 %idxprom1061
  %802 = load float, float* %arrayidx1062, align 4
  %803 = load float*, float** %lay, align 8
  %arrayidx1063 = getelementptr inbounds float, float* %803, i64 3
  %804 = load float, float* %arrayidx1063, align 4
  %mul1064 = fmul float %802, %804
  %805 = load float*, float** %lay, align 8
  %arrayidx1065 = getelementptr inbounds float, float* %805, i64 3
  %806 = load float, float* %arrayidx1065, align 4
  %mul1066 = fmul float %mul1064, %806
  %807 = load i32, i32* %c, align 4
  %idxprom1067 = sext i32 %807 to i64
  %808 = load float*, float** %lay, align 8
  %arrayidx1068 = getelementptr inbounds float, float* %808, i64 %idxprom1067
  %809 = load float, float* %arrayidx1068, align 4
  %div1069 = fdiv float %mul1066, %809
  %810 = load i32, i32* %c, align 4
  %idxprom1070 = sext i32 %810 to i64
  %811 = load float*, float** %lay, align 8
  %arrayidx1071 = getelementptr inbounds float, float* %811, i64 %idxprom1070
  %812 = load float, float* %arrayidx1071, align 4
  %813 = load float*, float** %in, align 8
  %arrayidx1072 = getelementptr inbounds float, float* %813, i64 3
  %814 = load float, float* %arrayidx1072, align 4
  %sub1073 = fsub float 1.000000e+00, %814
  %mul1074 = fmul float %812, %sub1073
  %add1075 = fadd float %div1069, %mul1074
  %815 = load i32, i32* %c, align 4
  %idxprom1076 = sext i32 %815 to i64
  %816 = load float*, float** %in, align 8
  %arrayidx1077 = getelementptr inbounds float, float* %816, i64 %idxprom1076
  %817 = load float, float* %arrayidx1077, align 4
  %818 = load float*, float** %lay, align 8
  %arrayidx1078 = getelementptr inbounds float, float* %818, i64 3
  %819 = load float, float* %arrayidx1078, align 4
  %sub1079 = fsub float 1.000000e+00, %819
  %mul1080 = fmul float %817, %sub1079
  %add1081 = fadd float %add1075, %mul1080
  %820 = load i32, i32* %c, align 4
  %idxprom1082 = sext i32 %820 to i64
  %821 = load float*, float** %out, align 8
  %arrayidx1083 = getelementptr inbounds float, float* %821, i64 %idxprom1082
  store float %add1081, float* %arrayidx1083, align 4
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.else.1060, %if.then.1042
  br label %for.inc.1085

for.inc.1085:                                     ; preds = %if.end.1084
  %822 = load i32, i32* %c, align 4
  %inc1086 = add nsw i32 %822, 1
  store i32 %inc1086, i32* %c, align 4
  br label %for.cond.1024

for.end.1087:                                     ; preds = %for.cond.1024
  br label %sw.epilog.1117

sw.bb.1088:                                       ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %823 = load i32, i32* %blend_mode, align 4
  %824 = load float*, float** %in, align 8
  %825 = load float*, float** %lay, align 8
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %new, i32 0, i32 0
  call void @gimp_operation_point_layer_mode_get_new_color_lchab(i32 %823, float* %824, float* %825, float* %arraydecay)
  store i32 0, i32* %c, align 4
  br label %for.cond.1089

for.cond.1089:                                    ; preds = %for.inc.1113, %sw.bb.1088
  %826 = load i32, i32* %c, align 4
  %cmp1090 = icmp slt i32 %826, 3
  br i1 %cmp1090, label %for.body.1092, label %for.end.1115

for.body.1092:                                    ; preds = %for.cond.1089
  %827 = load i32, i32* %c, align 4
  %idxprom1093 = sext i32 %827 to i64
  %arrayidx1094 = getelementptr inbounds [3 x float], [3 x float]* %new, i32 0, i64 %idxprom1093
  %828 = load float, float* %arrayidx1094, align 4
  %829 = load float*, float** %lay, align 8
  %arrayidx1095 = getelementptr inbounds float, float* %829, i64 3
  %830 = load float, float* %arrayidx1095, align 4
  %mul1096 = fmul float %828, %830
  %831 = load float*, float** %in, align 8
  %arrayidx1097 = getelementptr inbounds float, float* %831, i64 3
  %832 = load float, float* %arrayidx1097, align 4
  %mul1098 = fmul float %mul1096, %832
  %833 = load i32, i32* %c, align 4
  %idxprom1099 = sext i32 %833 to i64
  %834 = load float*, float** %lay, align 8
  %arrayidx1100 = getelementptr inbounds float, float* %834, i64 %idxprom1099
  %835 = load float, float* %arrayidx1100, align 4
  %836 = load float*, float** %in, align 8
  %arrayidx1101 = getelementptr inbounds float, float* %836, i64 3
  %837 = load float, float* %arrayidx1101, align 4
  %sub1102 = fsub float 1.000000e+00, %837
  %mul1103 = fmul float %835, %sub1102
  %add1104 = fadd float %mul1098, %mul1103
  %838 = load i32, i32* %c, align 4
  %idxprom1105 = sext i32 %838 to i64
  %839 = load float*, float** %in, align 8
  %arrayidx1106 = getelementptr inbounds float, float* %839, i64 %idxprom1105
  %840 = load float, float* %arrayidx1106, align 4
  %841 = load float*, float** %lay, align 8
  %arrayidx1107 = getelementptr inbounds float, float* %841, i64 3
  %842 = load float, float* %arrayidx1107, align 4
  %sub1108 = fsub float 1.000000e+00, %842
  %mul1109 = fmul float %840, %sub1108
  %add1110 = fadd float %add1104, %mul1109
  %843 = load i32, i32* %c, align 4
  %idxprom1111 = sext i32 %843 to i64
  %844 = load float*, float** %out, align 8
  %arrayidx1112 = getelementptr inbounds float, float* %844, i64 %idxprom1111
  store float %add1110, float* %arrayidx1112, align 4
  br label %for.inc.1113

for.inc.1113:                                     ; preds = %for.body.1092
  %845 = load i32, i32* %c, align 4
  %inc1114 = add nsw i32 %845, 1
  store i32 %inc1114, i32* %c, align 4
  br label %for.cond.1089

for.end.1115:                                     ; preds = %for.cond.1089
  br label %sw.epilog.1117

sw.default.1116:                                  ; preds = %sw.epilog
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog.1117

sw.epilog.1117:                                   ; preds = %sw.default.1116, %for.end.1115, %for.end.1087, %for.end.1022, %for.end.920, %for.end.812, %for.end.764, %for.end.715, %for.end.654, %for.end.589, %for.end.519, %for.end.442, %for.end.377, %for.end.333, %for.end.289, %for.end.250, %for.end.229, %for.end.202, %for.end.184, %if.end.166, %for.end.100, %sw.bb.86, %if.end.85, %if.end
  %846 = load float*, float** %in, align 8
  %add.ptr = getelementptr inbounds float, float* %846, i64 4
  store float* %add.ptr, float** %in, align 8
  %847 = load float*, float** %lay, align 8
  %add.ptr1118 = getelementptr inbounds float, float* %847, i64 4
  store float* %add.ptr1118, float** %lay, align 8
  %848 = load float*, float** %out, align 8
  %add.ptr1119 = getelementptr inbounds float, float* %848, i64 4
  store float* %add.ptr1119, float** %out, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare i32 @g_rand_int(%struct._GRand*) #1

declare void @g_rand_free(%struct._GRand*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare %union._Babl* @babl_format(i8*) #1

declare void @gegl_operation_set_format(%struct._GeglOperation*, i8*, %union._Babl*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_get_color_erase_color(float* %in, float* %lay, float* %out) #3 {
entry:
  %in.addr = alloca float*, align 8
  %lay.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %inRGB = alloca %struct._GimpRGB, align 8
  %layRGB = alloca %struct._GimpRGB, align 8
  store float* %in, float** %in.addr, align 8
  store float* %lay, float** %lay.addr, align 8
  store float* %out, float** %out.addr, align 8
  %0 = load float*, float** %in.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %0, i64 3
  %1 = load float, float* %arrayidx, align 4
  %conv = fpext float %1 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float*, float** %in.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %2, i64 3
  %3 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %3 to double
  call void @gimp_rgba_set(%struct._GimpRGB* %inRGB, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double %conv3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load float*, float** %in.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx4, align 4
  %6 = load float*, float** %in.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %6, i64 3
  %7 = load float, float* %arrayidx5, align 4
  %div = fdiv float %5, %7
  %conv6 = fpext float %div to double
  %8 = load float*, float** %in.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 1
  %9 = load float, float* %arrayidx7, align 4
  %10 = load float*, float** %in.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %10, i64 3
  %11 = load float, float* %arrayidx8, align 4
  %div9 = fdiv float %9, %11
  %conv10 = fpext float %div9 to double
  %12 = load float*, float** %in.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %12, i64 2
  %13 = load float, float* %arrayidx11, align 4
  %14 = load float*, float** %in.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %14, i64 3
  %15 = load float, float* %arrayidx12, align 4
  %div13 = fdiv float %13, %15
  %conv14 = fpext float %div13 to double
  %16 = load float*, float** %in.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %16, i64 3
  %17 = load float, float* %arrayidx15, align 4
  %conv16 = fpext float %17 to double
  call void @gimp_rgba_set(%struct._GimpRGB* %inRGB, double %conv6, double %conv10, double %conv14, double %conv16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load float*, float** %lay.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %18, i64 3
  %19 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %19 to double
  %cmp19 = fcmp ole double %conv18, 0.000000e+00
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.end
  %20 = load float*, float** %lay.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %20, i64 3
  %21 = load float, float* %arrayidx22, align 4
  %conv23 = fpext float %21 to double
  call void @gimp_rgba_set(%struct._GimpRGB* %layRGB, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double %conv23)
  br label %if.end.39

if.else.24:                                       ; preds = %if.end
  %22 = load float*, float** %lay.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %22, i64 0
  %23 = load float, float* %arrayidx25, align 4
  %24 = load float*, float** %lay.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %24, i64 3
  %25 = load float, float* %arrayidx26, align 4
  %div27 = fdiv float %23, %25
  %conv28 = fpext float %div27 to double
  %26 = load float*, float** %lay.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %26, i64 1
  %27 = load float, float* %arrayidx29, align 4
  %28 = load float*, float** %lay.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %28, i64 3
  %29 = load float, float* %arrayidx30, align 4
  %div31 = fdiv float %27, %29
  %conv32 = fpext float %div31 to double
  %30 = load float*, float** %lay.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %30, i64 2
  %31 = load float, float* %arrayidx33, align 4
  %32 = load float*, float** %lay.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %32, i64 3
  %33 = load float, float* %arrayidx34, align 4
  %div35 = fdiv float %31, %33
  %conv36 = fpext float %div35 to double
  %34 = load float*, float** %lay.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %34, i64 3
  %35 = load float, float* %arrayidx37, align 4
  %conv38 = fpext float %35 to double
  call void @gimp_rgba_set(%struct._GimpRGB* %layRGB, double %conv28, double %conv32, double %conv36, double %conv38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.24, %if.then.21
  call void @paint_funcs_color_erase_helper(%struct._GimpRGB* %inRGB, %struct._GimpRGB* %layRGB)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %inRGB, i32 0, i32 3
  %36 = load double, double* %a, align 8
  %conv40 = fptrunc double %36 to float
  %37 = load float*, float** %out.addr, align 8
  %arrayidx41 = getelementptr inbounds float, float* %37, i64 3
  store float %conv40, float* %arrayidx41, align 4
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %inRGB, i32 0, i32 0
  %38 = load double, double* %r, align 8
  %39 = load float*, float** %out.addr, align 8
  %arrayidx42 = getelementptr inbounds float, float* %39, i64 3
  %40 = load float, float* %arrayidx42, align 4
  %conv43 = fpext float %40 to double
  %mul = fmul double %38, %conv43
  %conv44 = fptrunc double %mul to float
  %41 = load float*, float** %out.addr, align 8
  %arrayidx45 = getelementptr inbounds float, float* %41, i64 0
  store float %conv44, float* %arrayidx45, align 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %inRGB, i32 0, i32 1
  %42 = load double, double* %g, align 8
  %43 = load float*, float** %out.addr, align 8
  %arrayidx46 = getelementptr inbounds float, float* %43, i64 3
  %44 = load float, float* %arrayidx46, align 4
  %conv47 = fpext float %44 to double
  %mul48 = fmul double %42, %conv47
  %conv49 = fptrunc double %mul48 to float
  %45 = load float*, float** %out.addr, align 8
  %arrayidx50 = getelementptr inbounds float, float* %45, i64 1
  store float %conv49, float* %arrayidx50, align 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %inRGB, i32 0, i32 2
  %46 = load double, double* %b, align 8
  %47 = load float*, float** %out.addr, align 8
  %arrayidx51 = getelementptr inbounds float, float* %47, i64 3
  %48 = load float, float* %arrayidx51, align 4
  %conv52 = fpext float %48 to double
  %mul53 = fmul double %46, %conv52
  %conv54 = fptrunc double %mul53 to float
  %49 = load float*, float** %out.addr, align 8
  %arrayidx55 = getelementptr inbounds float, float* %49, i64 2
  store float %conv54, float* %arrayidx55, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_point_layer_mode_get_new_color_lchab(i32 %blend_mode, float* %in, float* %lay, float* %new) #3 {
entry:
  %blend_mode.addr = alloca i32, align 4
  %in.addr = alloca float*, align 8
  %lay.addr = alloca float*, align 8
  %new.addr = alloca float*, align 8
  %in_lchab = alloca [3 x float], align 4
  %lay_lchab = alloca [3 x float], align 4
  %new_lchab = alloca [3 x float], align 4
  %ragabaa_to_lchab = alloca %union._Babl*, align 8
  %lchab_to_ragabaa = alloca %union._Babl*, align 8
  store i32 %blend_mode, i32* %blend_mode.addr, align 4
  store float* %in, float** %in.addr, align 8
  store float* %lay, float** %lay.addr, align 8
  store float* %new, float** %new.addr, align 8
  %call = call %union._Babl* @babl_format(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  %0 = bitcast %union._Babl* %call to i8*
  %call1 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0))
  %1 = bitcast %union._Babl* %call1 to i8*
  %call2 = call %union._Babl* @babl_fish(i8* %0, i8* %1)
  store %union._Babl* %call2, %union._Babl** %ragabaa_to_lchab, align 8
  %call3 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0))
  %2 = bitcast %union._Babl* %call3 to i8*
  %call4 = call %union._Babl* @babl_format(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0))
  %3 = bitcast %union._Babl* %call4 to i8*
  %call5 = call %union._Babl* @babl_fish(i8* %2, i8* %3)
  store %union._Babl* %call5, %union._Babl** %lchab_to_ragabaa, align 8
  %4 = load %union._Babl*, %union._Babl** %ragabaa_to_lchab, align 8
  %5 = load float*, float** %in.addr, align 8
  %6 = bitcast float* %5 to i8*
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i32 0
  %7 = bitcast float* %arraydecay to i8*
  %call6 = call i64 @babl_process(%union._Babl* %4, i8* %6, i8* %7, i64 1)
  %8 = load %union._Babl*, %union._Babl** %ragabaa_to_lchab, align 8
  %9 = load float*, float** %lay.addr, align 8
  %10 = bitcast float* %9 to i8*
  %arraydecay7 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i32 0
  %11 = bitcast float* %arraydecay7 to i8*
  %call8 = call i64 @babl_process(%union._Babl* %8, i8* %10, i8* %11, i64 1)
  %12 = load i32, i32* %blend_mode.addr, align 4
  switch i32 %12, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.14
    i32 13, label %sw.bb.21
    i32 14, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 0
  %13 = load float, float* %arrayidx, align 4
  %arrayidx9 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 0
  store float %13, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 1
  %14 = load float, float* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 1
  store float %14, float* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i64 2
  %15 = load float, float* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 2
  store float %15, float* %arrayidx13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %arrayidx15 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 0
  %16 = load float, float* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 0
  store float %16, float* %arrayidx16, align 4
  %arrayidx17 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i64 1
  %17 = load float, float* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 1
  store float %17, float* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 2
  %18 = load float, float* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 2
  store float %18, float* %arrayidx20, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %arrayidx22 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 0
  %19 = load float, float* %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 0
  store float %19, float* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i64 1
  %20 = load float, float* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 1
  store float %20, float* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i64 2
  %21 = load float, float* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 2
  store float %21, float* %arrayidx27, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %lay_lchab, i32 0, i64 0
  %22 = load float, float* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 0
  store float %22, float* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 1
  %23 = load float, float* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 1
  store float %23, float* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [3 x float], [3 x float]* %in_lchab, i32 0, i64 2
  %24 = load float, float* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i64 2
  store float %24, float* %arrayidx34, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 236, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__func__.gimp_operation_point_layer_mode_get_new_color_lchab, i32 0, i32 0), i8* null) #7
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.28, %sw.bb.21, %sw.bb.14, %sw.bb
  %25 = load %union._Babl*, %union._Babl** %lchab_to_ragabaa, align 8
  %arraydecay35 = getelementptr inbounds [3 x float], [3 x float]* %new_lchab, i32 0, i32 0
  %26 = bitcast float* %arraydecay35 to i8*
  %27 = load float*, float** %new.addr, align 8
  %28 = bitcast float* %27 to i8*
  %call36 = call i64 @babl_process(%union._Babl* %25, i8* %26, i8* %28, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @paint_funcs_color_erase_helper(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare %union._Babl* @babl_fish(i8*, i8*) #1

declare i64 @babl_process(%union._Babl*, i8*, i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
