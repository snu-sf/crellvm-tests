; ModuleID = './app/core/gimpdynamicsoutput.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDynamicsOutputClass = type { %struct._GimpObjectClass }
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
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._GimpDynamicsOutputPrivate = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpCurve*, %struct._GimpCurve*, %struct._GimpCurve*, %struct._GimpCurve*, %struct._GimpCurve*, %struct._GimpCurve*, %struct._GimpCurve* }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpVector2 = type { double, double }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpConfig = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_dynamics_output_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpDynamicsOutput\00", align 1
@gimp_dynamics_output_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_dynamics_output_new = private unnamed_addr constant [25 x i8] c"gimp_dynamics_output_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@gimp_dynamics_output_parent_class = internal global i8* null, align 8
@GimpDynamicsOutput_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Output type\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"use-pressure\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"use-velocity\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"use-direction\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"use-tilt\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"use-wheel\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"use-random\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"use-fade\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"pressure-curve\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"velocity-curve\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"direction-curve\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tilt-curve\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"wheel-curve\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"random-curve\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fade-curve\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"gimpdynamicsoutput.c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dynamics_output_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dynamics_output_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dynamics_output_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dynamics_output_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDynamicsOutput*)* @gimp_dynamics_output_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_dynamics_output_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dynamics_output_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_dynamics_output_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dynamics_output_parent_class, align 8
  %1 = load i32, i32* @GimpDynamicsOutput_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDynamicsOutput_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDynamicsOutputClass*
  call void @gimp_dynamics_output_class_init(%struct._GimpDynamicsOutputClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_init(%struct._GimpDynamicsOutput* %output) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call2 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %4 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %4, i32 0, i32 8
  store %struct._GimpCurve* %call2, %struct._GimpCurve** %pressure_curve, align 8
  %5 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call3 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  %6 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %6, i32 0, i32 9
  store %struct._GimpCurve* %call3, %struct._GimpCurve** %velocity_curve, align 8
  %7 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call4 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  %8 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %8, i32 0, i32 10
  store %struct._GimpCurve* %call4, %struct._GimpCurve** %direction_curve, align 8
  %9 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call5 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %10 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %10, i32 0, i32 11
  store %struct._GimpCurve* %call5, %struct._GimpCurve** %tilt_curve, align 8
  %11 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call6 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0))
  %12 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %12, i32 0, i32 12
  store %struct._GimpCurve* %call6, %struct._GimpCurve** %wheel_curve, align 8
  %13 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call7 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %14 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %14, i32 0, i32 13
  store %struct._GimpCurve* %call7, %struct._GimpCurve** %random_curve, align 8
  %15 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %call8 = call %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0))
  %16 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %16, i32 0, i32 14
  store %struct._GimpCurve* %call8, %struct._GimpCurve** %fade_curve, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDynamicsOutput* @gimp_dynamics_output_new(i8* %name, i32 %type) #3 {
entry:
  %retval = alloca %struct._GimpDynamicsOutput*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dynamics_output_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDynamicsOutput* null, %struct._GimpDynamicsOutput** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %type.addr, align 4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GimpDynamicsOutput*
  store %struct._GimpDynamicsOutput* %3, %struct._GimpDynamicsOutput** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %retval
  ret %struct._GimpDynamicsOutput* %4
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput* %output) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %use_pressure, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 2
  %6 = load i32, i32* %use_velocity, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %7, i32 0, i32 3
  %8 = load i32, i32* %use_direction, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %9, i32 0, i32 4
  %10 = load i32, i32* %use_tilt, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %use_wheel, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %13 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %13, i32 0, i32 6
  %14 = load i32, i32* %use_random, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.9
  %15 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %15, i32 0, i32 7
  %16 = load i32, i32* %use_fade, align 4
  %tobool11 = icmp ne i32 %16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %17 = phi i1 [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  ret i32 %lor.ext
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %output, %struct._GimpCoords* %coords, %struct._GimpPaintOptions* %options, double %fade_point) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  %fade_point.addr = alloca double, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  %total = alloca double, align 8
  %result = alloca double, align 8
  %factors = alloca i32, align 4
  %wheel = alloca double, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  store double %fade_point, double* %fade_point.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  store double 0.000000e+00, double* %total, align 8
  store double 1.000000e+00, double* %result, align 8
  store i32 0, i32* %factors, align 4
  %3 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %use_pressure, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 2
  %8 = load double, double* %pressure, align 8
  %call2 = call double @gimp_curve_map_value(%struct._GimpCurve* %6, double %8)
  %9 = load double, double* %total, align 8
  %add = fadd double %9, %call2
  store double %add, double* %total, align 8
  %10 = load i32, i32* %factors, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %factors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %use_velocity, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %13, i32 0, i32 9
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 6
  %16 = load double, double* %velocity, align 8
  %sub = fsub double 1.000000e+00, %16
  %call5 = call double @gimp_curve_map_value(%struct._GimpCurve* %14, double %sub)
  %17 = load double, double* %total, align 8
  %add6 = fadd double %17, %call5
  store double %add6, double* %total, align 8
  %18 = load i32, i32* %factors, align 4
  %inc7 = add nsw i32 %18, 1
  store i32 %inc7, i32* %factors, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %19 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %19, i32 0, i32 3
  %20 = load i32, i32* %use_direction, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.8
  %21 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %21, i32 0, i32 10
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 7
  %24 = load double, double* %direction, align 8
  %add11 = fadd double %24, 5.000000e-01
  %call12 = call double @fmod(double %add11, double 1.000000e+00) #5
  %call13 = call double @gimp_curve_map_value(%struct._GimpCurve* %22, double %call12)
  %25 = load double, double* %total, align 8
  %add14 = fadd double %25, %call13
  store double %add14, double* %total, align 8
  %26 = load i32, i32* %factors, align 4
  %inc15 = add nsw i32 %26, 1
  store i32 %inc15, i32* %factors, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end.8
  %27 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %27, i32 0, i32 4
  %28 = load i32, i32* %use_tilt, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end.16
  %29 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %29, i32 0, i32 11
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 3
  %32 = load double, double* %xtilt, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 3
  %34 = load double, double* %xtilt19, align 8
  %mul = fmul double %32, %34
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 4
  %36 = load double, double* %ytilt, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 4
  %38 = load double, double* %ytilt20, align 8
  %mul21 = fmul double %36, %38
  %add22 = fadd double %mul, %mul21
  %call23 = call double @sqrt(double %add22) #5
  %sub24 = fsub double 1.000000e+00, %call23
  %call25 = call double @gimp_curve_map_value(%struct._GimpCurve* %30, double %sub24)
  %39 = load double, double* %total, align 8
  %add26 = fadd double %39, %call25
  store double %add26, double* %total, align 8
  %40 = load i32, i32* %factors, align 4
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, i32* %factors, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.18, %if.end.16
  %41 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %41, i32 0, i32 5
  %42 = load i32, i32* %use_wheel, align 4
  %tobool29 = icmp ne i32 %42, 0
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.28
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 5
  %44 = load double, double* %wheel31, align 8
  store double %44, double* %wheel, align 8
  %45 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %45, i32 0, i32 12
  %46 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  %47 = load double, double* %wheel, align 8
  %call32 = call double @gimp_curve_map_value(%struct._GimpCurve* %46, double %47)
  %48 = load double, double* %total, align 8
  %add33 = fadd double %48, %call32
  store double %add33, double* %total, align 8
  %49 = load i32, i32* %factors, align 4
  %inc34 = add nsw i32 %49, 1
  store i32 %inc34, i32* %factors, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.28
  %50 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %50, i32 0, i32 6
  %51 = load i32, i32* %use_random, align 4
  %tobool36 = icmp ne i32 %51, 0
  br i1 %tobool36, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.35
  %52 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %52, i32 0, i32 13
  %53 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  %call38 = call double @g_random_double_range(double 0.000000e+00, double 1.000000e+00)
  %call39 = call double @gimp_curve_map_value(%struct._GimpCurve* %53, double %call38)
  %54 = load double, double* %total, align 8
  %add40 = fadd double %54, %call39
  store double %add40, double* %total, align 8
  %55 = load i32, i32* %factors, align 4
  %inc41 = add nsw i32 %55, 1
  store i32 %inc41, i32* %factors, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.35
  %56 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %56, i32 0, i32 7
  %57 = load i32, i32* %use_fade, align 4
  %tobool43 = icmp ne i32 %57, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.42
  %58 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %58, i32 0, i32 14
  %59 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  %60 = load double, double* %fade_point.addr, align 8
  %call45 = call double @gimp_curve_map_value(%struct._GimpCurve* %59, double %60)
  %61 = load double, double* %total, align 8
  %add46 = fadd double %61, %call45
  store double %add46, double* %total, align 8
  %62 = load i32, i32* %factors, align 4
  %inc47 = add nsw i32 %62, 1
  store i32 %inc47, i32* %factors, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  %63 = load i32, i32* %factors, align 4
  %cmp = icmp sgt i32 %63, 0
  br i1 %cmp, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.48
  %64 = load double, double* %total, align 8
  %65 = load i32, i32* %factors, align 4
  %conv = sitofp i32 %65 to double
  %div = fdiv double %64, %conv
  store double %div, double* %result, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.48
  %66 = load double, double* %result, align 8
  ret double %66
}

declare double @gimp_curve_map_value(%struct._GimpCurve*, double) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare double @g_random_double_range(double, double) #1

; Function Attrs: nounwind uwtable
define double @gimp_dynamics_output_get_angular_value(%struct._GimpDynamicsOutput* %output, %struct._GimpCoords* %coords, %struct._GimpPaintOptions* %options, double %fade_point) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  %fade_point.addr = alloca double, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  %total = alloca double, align 8
  %result = alloca double, align 8
  %factors = alloca i32, align 4
  %tilt_x = alloca double, align 8
  %tilt_y = alloca double, align 8
  %tilt = alloca double, align 8
  %angle = alloca double, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  store double %fade_point, double* %fade_point.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  store double 0.000000e+00, double* %total, align 8
  store double 0.000000e+00, double* %result, align 8
  store i32 0, i32* %factors, align 4
  %3 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %use_pressure, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 2
  %8 = load double, double* %pressure, align 8
  %call2 = call double @gimp_curve_map_value(%struct._GimpCurve* %6, double %8)
  %9 = load double, double* %total, align 8
  %add = fadd double %9, %call2
  store double %add, double* %total, align 8
  %10 = load i32, i32* %factors, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %factors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %use_velocity, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %13, i32 0, i32 9
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 6
  %16 = load double, double* %velocity, align 8
  %sub = fsub double 1.000000e+00, %16
  %call5 = call double @gimp_curve_map_value(%struct._GimpCurve* %14, double %sub)
  %17 = load double, double* %total, align 8
  %add6 = fadd double %17, %call5
  store double %add6, double* %total, align 8
  %18 = load i32, i32* %factors, align 4
  %inc7 = add nsw i32 %18, 1
  store i32 %inc7, i32* %factors, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %19 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %19, i32 0, i32 3
  %20 = load i32, i32* %use_direction, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.8
  %21 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %21, i32 0, i32 10
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 7
  %24 = load double, double* %direction, align 8
  %call11 = call double @gimp_curve_map_value(%struct._GimpCurve* %22, double %24)
  %25 = load double, double* %total, align 8
  %add12 = fadd double %25, %call11
  store double %add12, double* %total, align 8
  %26 = load i32, i32* %factors, align 4
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %factors, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.8
  %27 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %27, i32 0, i32 4
  %28 = load i32, i32* %use_tilt, align 4
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.end.44

if.then.16:                                       ; preds = %if.end.14
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 3
  %30 = load double, double* %xtilt, align 8
  store double %30, double* %tilt_x, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 4
  %32 = load double, double* %ytilt, align 8
  store double %32, double* %tilt_y, align 8
  store double 0.000000e+00, double* %tilt, align 8
  %33 = load double, double* %tilt_x, align 8
  %cmp = fcmp oeq double %33, 0.000000e+00
  br i1 %cmp, label %if.then.17, label %if.else.25

if.then.17:                                       ; preds = %if.then.16
  %34 = load double, double* %tilt_y, align 8
  %cmp18 = fcmp oge double %34, 0.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  store double 5.000000e-01, double* %tilt, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.then.17
  %35 = load double, double* %tilt_y, align 8
  %cmp20 = fcmp olt double %35, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else
  store double 0.000000e+00, double* %tilt, align 8
  br label %if.end.23

if.else.22:                                       ; preds = %if.else
  store double -1.000000e+00, double* %tilt, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.19
  br label %if.end.32

if.else.25:                                       ; preds = %if.then.16
  %36 = load double, double* %tilt_y, align 8
  %mul = fmul double -1.000000e+00, %36
  %37 = load double, double* %tilt_x, align 8
  %div = fdiv double %mul, %37
  %call26 = call double @atan(double %div) #5
  %div27 = fdiv double %call26, 0x401921FB54442D18
  store double %div27, double* %tilt, align 8
  %38 = load double, double* %tilt_x, align 8
  %cmp28 = fcmp ogt double %38, 0.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else.25
  %39 = load double, double* %tilt, align 8
  %add30 = fadd double %39, 5.000000e-01
  store double %add30, double* %tilt, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.24
  %40 = load double, double* %tilt, align 8
  %add33 = fadd double %40, 5.000000e-01
  store double %add33, double* %tilt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.32
  %41 = load double, double* %tilt, align 8
  %cmp34 = fcmp ogt double %41, 1.000000e+00
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load double, double* %tilt, align 8
  %sub35 = fsub double %42, 1.000000e+00
  store double %sub35, double* %tilt, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.38, %while.end
  %43 = load double, double* %tilt, align 8
  %cmp37 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp37, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.36
  %44 = load double, double* %tilt, align 8
  %add39 = fadd double %44, 1.000000e+00
  store double %add39, double* %tilt, align 8
  br label %while.cond.36

while.end.40:                                     ; preds = %while.cond.36
  %45 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %45, i32 0, i32 11
  %46 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  %47 = load double, double* %tilt, align 8
  %call41 = call double @gimp_curve_map_value(%struct._GimpCurve* %46, double %47)
  %48 = load double, double* %total, align 8
  %add42 = fadd double %48, %call41
  store double %add42, double* %total, align 8
  %49 = load i32, i32* %factors, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, i32* %factors, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %while.end.40, %if.end.14
  %50 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %50, i32 0, i32 5
  %51 = load i32, i32* %use_wheel, align 4
  %tobool45 = icmp ne i32 %51, 0
  br i1 %tobool45, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %if.end.44
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %52, i32 0, i32 5
  %53 = load double, double* %wheel, align 8
  %add47 = fadd double 5.000000e-01, %53
  %call48 = call double @fmod(double %add47, double 1.000000e+00) #5
  %sub49 = fsub double 1.000000e+00, %call48
  store double %sub49, double* %angle, align 8
  %54 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %54, i32 0, i32 12
  %55 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  %56 = load double, double* %angle, align 8
  %call50 = call double @gimp_curve_map_value(%struct._GimpCurve* %55, double %56)
  %57 = load double, double* %total, align 8
  %add51 = fadd double %57, %call50
  store double %add51, double* %total, align 8
  %58 = load i32, i32* %factors, align 4
  %inc52 = add nsw i32 %58, 1
  store i32 %inc52, i32* %factors, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.46, %if.end.44
  %59 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %59, i32 0, i32 6
  %60 = load i32, i32* %use_random, align 4
  %tobool54 = icmp ne i32 %60, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %if.end.53
  %61 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %61, i32 0, i32 13
  %62 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  %call56 = call double @g_random_double_range(double 0.000000e+00, double 1.000000e+00)
  %call57 = call double @gimp_curve_map_value(%struct._GimpCurve* %62, double %call56)
  %63 = load double, double* %total, align 8
  %add58 = fadd double %63, %call57
  store double %add58, double* %total, align 8
  %64 = load i32, i32* %factors, align 4
  %inc59 = add nsw i32 %64, 1
  store i32 %inc59, i32* %factors, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %if.end.53
  %65 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %65, i32 0, i32 7
  %66 = load i32, i32* %use_fade, align 4
  %tobool61 = icmp ne i32 %66, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.60
  %67 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %67, i32 0, i32 14
  %68 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  %69 = load double, double* %fade_point.addr, align 8
  %call63 = call double @gimp_curve_map_value(%struct._GimpCurve* %68, double %69)
  %70 = load double, double* %total, align 8
  %add64 = fadd double %70, %call63
  store double %add64, double* %total, align 8
  %71 = load i32, i32* %factors, align 4
  %inc65 = add nsw i32 %71, 1
  store i32 %inc65, i32* %factors, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.60
  %72 = load i32, i32* %factors, align 4
  %cmp67 = icmp sgt i32 %72, 0
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.66
  %73 = load double, double* %total, align 8
  %74 = load i32, i32* %factors, align 4
  %conv = sitofp i32 %74 to double
  %div69 = fdiv double %73, %conv
  store double %div69, double* %result, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.66
  %75 = load double, double* %result, align 8
  ret double %75
}

; Function Attrs: nounwind
declare double @atan(double) #4

; Function Attrs: nounwind uwtable
define double @gimp_dynamics_output_get_aspect_value(%struct._GimpDynamicsOutput* %output, %struct._GimpCoords* %coords, %struct._GimpPaintOptions* %options, double %fade_point) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  %fade_point.addr = alloca double, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  %total = alloca double, align 8
  %factors = alloca i32, align 4
  %sign = alloca double, align 8
  %result = alloca double, align 8
  %direction = alloca double, align 8
  %tilt_value = alloca double, align 8
  %wheel = alloca double, align 8
  %random = alloca double, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  store double %fade_point, double* %fade_point.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  store double 0.000000e+00, double* %total, align 8
  store i32 0, i32* %factors, align 4
  store double 1.000000e+00, double* %sign, align 8
  store double 1.000000e+00, double* %result, align 8
  %3 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %3, i32 0, i32 1
  %4 = load i32, i32* %use_pressure, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 2
  %8 = load double, double* %pressure, align 8
  %call2 = call double @gimp_curve_map_value(%struct._GimpCurve* %6, double %8)
  %9 = load double, double* %total, align 8
  %add = fadd double %9, %call2
  store double %add, double* %total, align 8
  %10 = load i32, i32* %factors, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %factors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %use_velocity, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %13, i32 0, i32 9
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 6
  %16 = load double, double* %velocity, align 8
  %call5 = call double @gimp_curve_map_value(%struct._GimpCurve* %14, double %16)
  %17 = load double, double* %total, align 8
  %add6 = fadd double %17, %call5
  store double %add6, double* %total, align 8
  %18 = load i32, i32* %factors, align 4
  %inc7 = add nsw i32 %18, 1
  store i32 %inc7, i32* %factors, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %19 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %19, i32 0, i32 3
  %20 = load i32, i32* %use_direction, align 4
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %if.end.8
  %21 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %21, i32 0, i32 10
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 7
  %24 = load double, double* %direction11, align 8
  %call12 = call double @gimp_curve_map_value(%struct._GimpCurve* %22, double %24)
  store double %call12, double* %direction, align 8
  %25 = load double, double* %direction, align 8
  %cmp = fcmp ogt double %25, 8.750000e-01
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.10
  %26 = load double, double* %direction, align 8
  %cmp13 = fcmp ole double %26, 1.000000e+00
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.10
  %27 = load double, double* %direction, align 8
  %cmp14 = fcmp ogt double %27, 0.000000e+00
  br i1 %cmp14, label %land.lhs.true.15, label %lor.lhs.false.17

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %28 = load double, double* %direction, align 8
  %cmp16 = fcmp olt double %28, 1.250000e-01
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15, %lor.lhs.false
  %29 = load double, double* %direction, align 8
  %cmp18 = fcmp ogt double %29, 3.750000e-01
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.22

land.lhs.true.19:                                 ; preds = %lor.lhs.false.17
  %30 = load double, double* %direction, align 8
  %cmp20 = fcmp olt double %30, 6.250000e-01
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true
  store double -1.000000e+00, double* %sign, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.19, %lor.lhs.false.17
  %31 = load double, double* %total, align 8
  %add23 = fadd double %31, 1.000000e+00
  store double %add23, double* %total, align 8
  %32 = load i32, i32* %factors, align 4
  %inc24 = add nsw i32 %32, 1
  store i32 %inc24, i32* %factors, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %if.end.8
  %33 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %33, i32 0, i32 4
  %34 = load i32, i32* %use_tilt, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.38

if.then.27:                                       ; preds = %if.end.25
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 3
  %36 = load double, double* %xtilt, align 8
  %call28 = call double @fabs(double %36) #6
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 4
  %38 = load double, double* %ytilt, align 8
  %call29 = call double @fabs(double %38) #6
  %cmp30 = fcmp ogt double %call28, %call29
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 3
  %40 = load double, double* %xtilt31, align 8
  %call32 = call double @fabs(double %40) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 4
  %42 = load double, double* %ytilt33, align 8
  %call34 = call double @fabs(double %42) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call32, %cond.true ], [ %call34, %cond.false ]
  store double %cond, double* %tilt_value, align 8
  %43 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %43, i32 0, i32 11
  %44 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  %45 = load double, double* %tilt_value, align 8
  %call35 = call double @gimp_curve_map_value(%struct._GimpCurve* %44, double %45)
  store double %call35, double* %tilt_value, align 8
  %46 = load double, double* %tilt_value, align 8
  %47 = load double, double* %total, align 8
  %add36 = fadd double %47, %46
  store double %add36, double* %total, align 8
  %48 = load i32, i32* %factors, align 4
  %inc37 = add nsw i32 %48, 1
  store i32 %inc37, i32* %factors, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %if.end.25
  %49 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %49, i32 0, i32 5
  %50 = load i32, i32* %use_wheel, align 4
  %tobool39 = icmp ne i32 %50, 0
  br i1 %tobool39, label %if.then.40, label %if.end.58

if.then.40:                                       ; preds = %if.end.38
  %51 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %51, i32 0, i32 12
  %52 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %53, i32 0, i32 5
  %54 = load double, double* %wheel41, align 8
  %call42 = call double @gimp_curve_map_value(%struct._GimpCurve* %52, double %54)
  store double %call42, double* %wheel, align 8
  %55 = load double, double* %wheel, align 8
  %cmp43 = fcmp ogt double %55, 8.750000e-01
  br i1 %cmp43, label %land.lhs.true.44, label %lor.lhs.false.46

land.lhs.true.44:                                 ; preds = %if.then.40
  %56 = load double, double* %wheel, align 8
  %cmp45 = fcmp ole double %56, 1.000000e+00
  br i1 %cmp45, label %if.then.54, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.44, %if.then.40
  %57 = load double, double* %wheel, align 8
  %cmp47 = fcmp ogt double %57, 0.000000e+00
  br i1 %cmp47, label %land.lhs.true.48, label %lor.lhs.false.50

land.lhs.true.48:                                 ; preds = %lor.lhs.false.46
  %58 = load double, double* %wheel, align 8
  %cmp49 = fcmp olt double %58, 1.250000e-01
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.48, %lor.lhs.false.46
  %59 = load double, double* %wheel, align 8
  %cmp51 = fcmp ogt double %59, 3.750000e-01
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.55

land.lhs.true.52:                                 ; preds = %lor.lhs.false.50
  %60 = load double, double* %wheel, align 8
  %cmp53 = fcmp olt double %60, 6.250000e-01
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.52, %land.lhs.true.48, %land.lhs.true.44
  store double -1.000000e+00, double* %sign, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.52, %lor.lhs.false.50
  %61 = load double, double* %total, align 8
  %add56 = fadd double %61, 1.000000e+00
  store double %add56, double* %total, align 8
  %62 = load i32, i32* %factors, align 4
  %inc57 = add nsw i32 %62, 1
  store i32 %inc57, i32* %factors, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.55, %if.end.38
  %63 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %63, i32 0, i32 6
  %64 = load i32, i32* %use_random, align 4
  %tobool59 = icmp ne i32 %64, 0
  br i1 %tobool59, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %if.end.58
  %65 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %65, i32 0, i32 13
  %66 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  %call61 = call double @g_random_double_range(double 0.000000e+00, double 1.000000e+00)
  %call62 = call double @gimp_curve_map_value(%struct._GimpCurve* %66, double %call61)
  store double %call62, double* %random, align 8
  %67 = load double, double* %random, align 8
  %68 = load double, double* %total, align 8
  %add63 = fadd double %68, %67
  store double %add63, double* %total, align 8
  %69 = load i32, i32* %factors, align 4
  %inc64 = add nsw i32 %69, 1
  store i32 %inc64, i32* %factors, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %if.end.58
  %70 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %70, i32 0, i32 7
  %71 = load i32, i32* %use_fade, align 4
  %tobool66 = icmp ne i32 %71, 0
  br i1 %tobool66, label %if.then.67, label %if.end.71

if.then.67:                                       ; preds = %if.end.65
  %72 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %72, i32 0, i32 14
  %73 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  %74 = load double, double* %fade_point.addr, align 8
  %call68 = call double @gimp_curve_map_value(%struct._GimpCurve* %73, double %74)
  %75 = load double, double* %total, align 8
  %add69 = fadd double %75, %call68
  store double %add69, double* %total, align 8
  %76 = load i32, i32* %factors, align 4
  %inc70 = add nsw i32 %76, 1
  store i32 %inc70, i32* %factors, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.67, %if.end.65
  %77 = load i32, i32* %factors, align 4
  %cmp72 = icmp sgt i32 %77, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %78 = load double, double* %total, align 8
  %79 = load i32, i32* %factors, align 4
  %conv = sitofp i32 %79 to double
  %div = fdiv double %78, %conv
  store double %div, double* %result, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  %80 = load double, double* %result, align 8
  %81 = load double, double* %sign, align 8
  %mul = fmul double %80, %81
  %cmp75 = fcmp ogt double %mul, 1.000000e+00
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %if.end.74
  br label %cond.end.87

cond.false.78:                                    ; preds = %if.end.74
  %82 = load double, double* %result, align 8
  %83 = load double, double* %sign, align 8
  %mul79 = fmul double %82, %83
  %cmp80 = fcmp olt double %mul79, -1.000000e+00
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.false.78
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.false.78
  %84 = load double, double* %result, align 8
  %85 = load double, double* %sign, align 8
  %mul84 = fmul double %84, %85
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.82
  %cond86 = phi double [ -1.000000e+00, %cond.true.82 ], [ %mul84, %cond.false.83 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.77
  %cond88 = phi double [ 1.000000e+00, %cond.true.77 ], [ %cond86, %cond.end.85 ]
  store double %cond88, double* %result, align 8
  %86 = load double, double* %result, align 8
  ret double %86
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_class_init(%struct._GimpDynamicsOutputClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDynamicsOutputClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDynamicsOutputClass* %klass, %struct._GimpDynamicsOutputClass** %klass.addr, align 8
  %0 = load %struct._GimpDynamicsOutputClass*, %struct._GimpDynamicsOutputClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutputClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dynamics_output_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_output_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dynamics_output_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #5
  %call2 = call i64 @gimp_dynamics_output_type_get_type() #6
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* %call1, i64 %call2, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call3)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call4)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call5)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call6)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 5, %struct._GParamSpec* %call7)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 6, %struct._GParamSpec* %call8)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 7, %struct._GParamSpec* %call9)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 8, %struct._GParamSpec* %call10)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_curve_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 9, %struct._GParamSpec* %call12)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call i64 @gimp_curve_get_type() #6
  %call14 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i64 %call13, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 10, %struct._GParamSpec* %call14)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_curve_get_type() #6
  %call16 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i64 %call15, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 11, %struct._GParamSpec* %call16)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call i64 @gimp_curve_get_type() #6
  %call18 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i64 %call17, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 12, %struct._GParamSpec* %call18)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call19 = call i64 @gimp_curve_get_type() #6
  %call20 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call19, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 13, %struct._GParamSpec* %call20)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call i64 @gimp_curve_get_type() #6
  %call22 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i64 %call21, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 14, %struct._GParamSpec* %call22)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call23 = call i64 @gimp_curve_get_type() #6
  %call24 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i64 %call23, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 15, %struct._GParamSpec* %call24)
  %21 = load %struct._GimpDynamicsOutputClass*, %struct._GimpDynamicsOutputClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpDynamicsOutputClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %3 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %3, i32 0, i32 8
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %5 = bitcast %struct._GimpCurve* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %6, i32 0, i32 9
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  %8 = bitcast %struct._GimpCurve* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %9, i32 0, i32 10
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  %11 = bitcast %struct._GimpCurve* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %12, i32 0, i32 11
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  %14 = bitcast %struct._GimpCurve* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %15, i32 0, i32 12
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  %17 = bitcast %struct._GimpCurve* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %18, i32 0, i32 13
  %19 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  %20 = bitcast %struct._GimpCurve* %19 to i8*
  call void @g_object_unref(i8* %20)
  %21 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %21, i32 0, i32 14
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  %23 = bitcast %struct._GimpCurve* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load i8*, i8** @gimp_dynamics_output_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 80)
  %26 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %26, i32 0, i32 6
  %27 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %27(%struct._GObject* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.21
    i32 12, label %sw.bb.23
    i32 13, label %sw.bb.25
    i32 14, label %sw.bb.27
    i32 15, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %7, i32 0, i32 1
  store i32 %call4, i32* %use_pressure, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %9, i32 0, i32 2
  store i32 %call6, i32* %use_velocity, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %10)
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 3
  store i32 %call8, i32* %use_direction, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %13, i32 0, i32 4
  store i32 %call10, i32* %use_tilt, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %15, i32 0, i32 5
  store i32 %call12, i32* %use_wheel, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  %17 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %17, i32 0, i32 6
  store i32 %call14, i32* %use_random, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %19, i32 0, i32 7
  store i32 %call16, i32* %use_fade, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i8* @g_value_get_object(%struct._GValue* %20)
  %21 = bitcast i8* %call18 to %struct._GimpCurve*
  %22 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %22, i32 0, i32 8
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %21, %struct._GimpCurve* %23)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i8* @g_value_get_object(%struct._GValue* %24)
  %25 = bitcast i8* %call20 to %struct._GimpCurve*
  %26 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %26, i32 0, i32 9
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %25, %struct._GimpCurve* %27)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_get_object(%struct._GValue* %28)
  %29 = bitcast i8* %call22 to %struct._GimpCurve*
  %30 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %30, i32 0, i32 10
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %29, %struct._GimpCurve* %31)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i8* @g_value_get_object(%struct._GValue* %32)
  %33 = bitcast i8* %call24 to %struct._GimpCurve*
  %34 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %34, i32 0, i32 11
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %33, %struct._GimpCurve* %35)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_get_object(%struct._GValue* %36)
  %37 = bitcast i8* %call26 to %struct._GimpCurve*
  %38 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %38, i32 0, i32 12
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %37, %struct._GimpCurve* %39)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call28 = call i8* @g_value_get_object(%struct._GValue* %40)
  %41 = bitcast i8* %call28 to %struct._GimpCurve*
  %42 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %42, i32 0, i32 13
  %43 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %41, %struct._GimpCurve* %43)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i8* @g_value_get_object(%struct._GValue* %44)
  %45 = bitcast i8* %call30 to %struct._GimpCurve*
  %46 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %46, i32 0, i32 14
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  call void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %45, %struct._GimpCurve* %47)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %48 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %48, %struct._GObject** %_glib__object, align 8
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %49, %struct._GParamSpec** %_glib__pspec, align 8
  %50 = load i32, i32* %property_id.addr, align 4
  store i32 %50, i32* %_glib__property_id, align 4
  %51 = load i32, i32* %_glib__property_id, align 4
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %52, i32 0, i32 1
  %53 = load i8*, i8** %name, align 8
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %55 = bitcast %struct._GParamSpec* %54 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %57)
  %58 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %59 = bitcast %struct._GObject* %58 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %61)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %51, i8* %53, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDynamicsOutputPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dynamics_output_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDynamicsOutputPrivate*
  store %struct._GimpDynamicsOutputPrivate* %2, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_pressure = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %use_pressure, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_velocity = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %use_velocity, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_direction = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %14, i32 0, i32 3
  %15 = load i32, i32* %use_direction, align 4
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_tilt = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %use_tilt, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_wheel = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %use_wheel, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_random = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %use_random, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %use_fade = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %26, i32 0, i32 7
  %27 = load i32, i32* %use_fade, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %29, i32 0, i32 8
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %31 = bitcast %struct._GimpCurve* %30 to i8*
  call void @g_value_set_object(%struct._GValue* %28, i8* %31)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %33 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %velocity_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %33, i32 0, i32 9
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %velocity_curve, align 8
  %35 = bitcast %struct._GimpCurve* %34 to i8*
  call void @g_value_set_object(%struct._GValue* %32, i8* %35)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %37 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %direction_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %37, i32 0, i32 10
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %direction_curve, align 8
  %39 = bitcast %struct._GimpCurve* %38 to i8*
  call void @g_value_set_object(%struct._GValue* %36, i8* %39)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %tilt_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %41, i32 0, i32 11
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %tilt_curve, align 8
  %43 = bitcast %struct._GimpCurve* %42 to i8*
  call void @g_value_set_object(%struct._GValue* %40, i8* %43)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %45 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %wheel_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %45, i32 0, i32 12
  %46 = load %struct._GimpCurve*, %struct._GimpCurve** %wheel_curve, align 8
  %47 = bitcast %struct._GimpCurve* %46 to i8*
  call void @g_value_set_object(%struct._GValue* %44, i8* %47)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %48 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %49 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %random_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %49, i32 0, i32 13
  %50 = load %struct._GimpCurve*, %struct._GimpCurve** %random_curve, align 8
  %51 = bitcast %struct._GimpCurve* %50 to i8*
  call void @g_value_set_object(%struct._GValue* %48, i8* %51)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpDynamicsOutputPrivate*, %struct._GimpDynamicsOutputPrivate** %private, align 8
  %fade_curve = getelementptr inbounds %struct._GimpDynamicsOutputPrivate, %struct._GimpDynamicsOutputPrivate* %53, i32 0, i32 14
  %54 = load %struct._GimpCurve*, %struct._GimpCurve** %fade_curve, align 8
  %55 = bitcast %struct._GimpCurve* %54 to i8*
  call void @g_value_set_object(%struct._GValue* %52, i8* %55)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %56 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %56, %struct._GObject** %_glib__object, align 8
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %57, %struct._GParamSpec** %_glib__pspec, align 8
  %58 = load i32, i32* %property_id.addr, align 4
  store i32 %58, i32* %_glib__property_id, align 4
  %59 = load i32, i32* %_glib__property_id, align 4
  %60 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %60, i32 0, i32 1
  %61 = load i8*, i8** %name, align 8
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %63 = bitcast %struct._GParamSpec* %62 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %64, i32 0, i32 0
  %65 = load i64, i64* %g_type, align 8
  %call16 = call i8* @g_type_name(i64 %65)
  %66 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %67 = bitcast %struct._GObject* %66 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %68, i32 0, i32 0
  %69 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %69)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %59, i8* %61, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_output_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_copy_curve(%struct._GimpCurve* %src, %struct._GimpCurve* %dest) #3 {
entry:
  %src.addr = alloca %struct._GimpCurve*, align 8
  %dest.addr = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurve* %src, %struct._GimpCurve** %src.addr, align 8
  store %struct._GimpCurve* %dest, %struct._GimpCurve** %dest.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %src.addr, align 8
  %tobool = icmp ne %struct._GimpCurve* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %dest.addr, align 8
  %tobool1 = icmp ne %struct._GimpCurve* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._GimpCurve*, %struct._GimpCurve** %src.addr, align 8
  %3 = bitcast %struct._GimpCurve* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpConfig*
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %dest.addr, align 8
  %6 = bitcast %struct._GimpCurve* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %call5 = call i32 @gimp_config_copy(%struct._GimpConfig* %4, %struct._GimpConfig* %7, i32 256)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i8* @g_value_get_object(%struct._GValue*) #1

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

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpCurve* @gimp_dynamics_output_create_curve(%struct._GimpDynamicsOutput* %output, i8* %name) #3 {
entry:
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  %name.addr = alloca i8*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpData* @gimp_curve_new(i8* %0)
  %1 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_curve_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %4 = bitcast %struct._GimpCurve* %3 to i8*
  %5 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %6 = bitcast %struct._GimpDynamicsOutput* %5 to i8*
  %call3 = call i64 @g_signal_connect_object(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCurve*, %struct._GimpDynamicsOutput*)* @gimp_dynamics_output_curve_dirty to void ()*), i8* %6, i32 0)
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  ret %struct._GimpCurve* %7
}

declare %struct._GimpData* @gimp_curve_new(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dynamics_output_curve_dirty(%struct._GimpCurve* %curve, %struct._GimpDynamicsOutput* %output) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %output.addr = alloca %struct._GimpDynamicsOutput*, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store %struct._GimpDynamicsOutput* %output, %struct._GimpDynamicsOutput** %output.addr, align 8
  %0 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output.addr, align 8
  %1 = bitcast %struct._GimpDynamicsOutput* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %4 = bitcast %struct._GimpCurve* %3 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %4)
  call void @g_object_notify(%struct._GObject* %2, i8* %call1)
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
