; ModuleID = './app/core/gimpdrawable-levels.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpProgress = type opaque
%struct._GimpLevelsConfig = type { %struct._GimpImageMapConfig, i32, [5 x double], [5 x double], [5 x double], [5 x double], [5 x double] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GeglNode = type opaque
%struct._Levels = type { [5 x double], [5 x i32], [5 x i32], [5 x i32], [5 x i32] }
%struct._GimpLut = type { i8**, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpHistogram = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_levels = private unnamed_addr constant [21 x i8] c"gimp_drawable_levels\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"! gimp_drawable_is_indexed (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"channel >= GIMP_HISTOGRAM_VALUE && channel <= GIMP_HISTOGRAM_ALPHA\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"low_input >= 0 && low_input <= 255\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"high_input >= 0 && high_input <= 255\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gamma >= 0.1 && gamma <= 10.0\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"low_output >= 0 && low_output <= 255\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"high_output >= 0 && high_output <= 255\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"gimp_drawable_has_alpha (drawable)\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"channel == GIMP_HISTOGRAM_VALUE || channel == GIMP_HISTOGRAM_ALPHA\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"low-input\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"high-input\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"low-output\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"high-output\00", align 1
@__func__.gimp_drawable_levels_stretch = private unnamed_addr constant [29 x i8] c"gimp_drawable_levels_stretch\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"gimp:levels\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Levels\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_levels(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i32 %channel, i32 %low_input, i32 %high_input, double %gamma, i32 %low_output, i32 %high_output) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %channel.addr = alloca i32, align 4
  %low_input.addr = alloca i32, align 4
  %high_input.addr = alloca i32, align 4
  %gamma.addr = alloca double, align 8
  %low_output.addr = alloca i32, align 4
  %high_output.addr = alloca i32, align 4
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst30 = alloca %struct._GTypeInstance*, align 8
  %__t32 = alloca i64, align 8
  %__r35 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %low_input, i32* %low_input.addr, align 4
  store i32 %high_input, i32* %high_input.addr, align 4
  store double %gamma, double* %gamma.addr, align 8
  store i32 %low_output, i32* %low_output.addr, align 4
  store i32 %high_output, i32* %high_output.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp28 = icmp eq %struct._GimpProgress* %17, null
  br i1 %cmp28, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.27
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst30, align 8
  %call33 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call33, i64* %__t32, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r35, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %lor.lhs.false
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.38
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type43, align 8
  %26 = load i64, i64* %__t32, align 8
  %cmp44 = icmp eq i64 %25, %26
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r35, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.38
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %28 = load i64, i64* %__t32, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #6
  store i32 %call47, i32* %__r35, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %29 = load i32, i32* %__r35, align 4
  store i32 %29, i32* %tmp50
  %30 = load i32, i32* %tmp50
  %tobool51 = icmp ne i32 %30, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49, %do.body.27
  br label %if.end.54

if.else.53:                                       ; preds = %if.end.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %31 = load i32, i32* %channel.addr, align 4
  %cmp57 = icmp sge i32 %31, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.else.61

land.lhs.true.58:                                 ; preds = %do.body.56
  %32 = load i32, i32* %channel.addr, align 4
  %cmp59 = icmp sle i32 %32, 4
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.58
  br label %if.end.62

if.else.61:                                       ; preds = %land.lhs.true.58, %do.body.56
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.62:                                        ; preds = %if.then.60
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %33 = load i32, i32* %low_input.addr, align 4
  %cmp65 = icmp sge i32 %33, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.69

land.lhs.true.66:                                 ; preds = %do.body.64
  %34 = load i32, i32* %low_input.addr, align 4
  %cmp67 = icmp sle i32 %34, 255
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.66
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true.66, %do.body.64
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.70:                                        ; preds = %if.then.68
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %35 = load i32, i32* %high_input.addr, align 4
  %cmp73 = icmp sge i32 %35, 0
  br i1 %cmp73, label %land.lhs.true.74, label %if.else.77

land.lhs.true.74:                                 ; preds = %do.body.72
  %36 = load i32, i32* %high_input.addr, align 4
  %cmp75 = icmp sle i32 %36, 255
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.74
  br label %if.end.78

if.else.77:                                       ; preds = %land.lhs.true.74, %do.body.72
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.78:                                        ; preds = %if.then.76
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %37 = load double, double* %gamma.addr, align 8
  %cmp81 = fcmp oge double %37, 1.000000e-01
  br i1 %cmp81, label %land.lhs.true.82, label %if.else.85

land.lhs.true.82:                                 ; preds = %do.body.80
  %38 = load double, double* %gamma.addr, align 8
  %cmp83 = fcmp ole double %38, 1.000000e+01
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.82
  br label %if.end.86

if.else.85:                                       ; preds = %land.lhs.true.82, %do.body.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.86:                                        ; preds = %if.then.84
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %do.body.88

do.body.88:                                       ; preds = %do.end.87
  %39 = load i32, i32* %low_output.addr, align 4
  %cmp89 = icmp sge i32 %39, 0
  br i1 %cmp89, label %land.lhs.true.90, label %if.else.93

land.lhs.true.90:                                 ; preds = %do.body.88
  %40 = load i32, i32* %low_output.addr, align 4
  %cmp91 = icmp sle i32 %40, 255
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %land.lhs.true.90
  br label %if.end.94

if.else.93:                                       ; preds = %land.lhs.true.90, %do.body.88
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %41 = load i32, i32* %high_output.addr, align 4
  %cmp97 = icmp sge i32 %41, 0
  br i1 %cmp97, label %land.lhs.true.98, label %if.else.101

land.lhs.true.98:                                 ; preds = %do.body.96
  %42 = load i32, i32* %high_output.addr, align 4
  %cmp99 = icmp sle i32 %42, 255
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.98
  br label %if.end.102

if.else.101:                                      ; preds = %land.lhs.true.98, %do.body.96
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.102:                                       ; preds = %if.then.100
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %43 = load i32, i32* %channel.addr, align 4
  %cmp104 = icmp eq i32 %43, 4
  br i1 %cmp104, label %if.then.105, label %if.end.113

if.then.105:                                      ; preds = %do.end.103
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call107 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %44)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.106
  br label %if.end.111

if.else.110:                                      ; preds = %do.body.106
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.111:                                       ; preds = %if.then.109
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.end.103
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call114 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %45)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.125

if.then.116:                                      ; preds = %if.end.113
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  %46 = load i32, i32* %channel.addr, align 4
  %cmp118 = icmp eq i32 %46, 0
  br i1 %cmp118, label %if.then.121, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %do.body.117
  %47 = load i32, i32* %channel.addr, align 4
  %cmp120 = icmp eq i32 %47, 4
  br i1 %cmp120, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %lor.lhs.false.119, %do.body.117
  br label %if.end.123

if.else.122:                                      ; preds = %lor.lhs.false.119
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_levels, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.123:                                       ; preds = %if.then.121
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %if.end.113
  %call126 = call i64 @gimp_levels_config_get_type() #5
  %call127 = call i8* (i64, i8*, ...) @g_object_new(i64 %call126, i8* null)
  %48 = bitcast i8* %call127 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %48, %struct._GimpLevelsConfig** %config, align 8
  %49 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %50 = bitcast %struct._GimpLevelsConfig* %49 to i8*
  %51 = load i32, i32* %channel.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %51, i8* null)
  %52 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %53 = bitcast %struct._GimpLevelsConfig* %52 to i8*
  %54 = load i32, i32* %low_input.addr, align 4
  %conv = sitofp i32 %54 to double
  %div = fdiv double %conv, 2.550000e+02
  %55 = load i32, i32* %high_input.addr, align 4
  %conv128 = sitofp i32 %55 to double
  %div129 = fdiv double %conv128, 2.550000e+02
  %56 = load double, double* %gamma.addr, align 8
  %57 = load i32, i32* %low_output.addr, align 4
  %conv130 = sitofp i32 %57 to double
  %div131 = fdiv double %conv130, 2.550000e+02
  %58 = load i32, i32* %high_output.addr, align 4
  %conv132 = sitofp i32 %58 to double
  %div133 = fdiv double %conv132, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), double %div, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), double %div129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), double %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), double %div131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), double %div133, i8* null)
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %60 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %61 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  call void @gimp_drawable_levels_internal(%struct._GimpDrawable* %59, %struct._GimpProgress* %60, %struct._GimpLevelsConfig* %61)
  %62 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %63 = bitcast %struct._GimpLevelsConfig* %62 to i8*
  call void @g_object_unref(i8* %63)
  br label %return

return:                                           ; preds = %if.end.125, %if.else.122, %if.else.110, %if.else.101, %if.else.93, %if.else.85, %if.else.77, %if.else.69, %if.else.61, %if.else.53, %if.else.24, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_levels_config_get_type() #1

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_levels_internal(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, %struct._GimpLevelsConfig* %config) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %levels = alloca %struct._GeglNode*, align 8
  %levels7 = alloca %struct._Levels, align 8
  %lut = alloca %struct._GimpLut*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %2)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call i32 @gimp_use_gegl(%struct._Gimp* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i64 @gegl_node_get_type() #5
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* null)
  %4 = bitcast i8* %call5 to %struct._GeglNode*
  store %struct._GeglNode* %4, %struct._GeglNode** %levels, align 8
  %5 = load %struct._GeglNode*, %struct._GeglNode** %levels, align 8
  %6 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GimpLevelsConfig* %6, i8* null)
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #7
  %9 = load %struct._GeglNode*, %struct._GeglNode** %levels, align 8
  call void @gimp_drawable_apply_operation(%struct._GimpDrawable* %7, %struct._GimpProgress* %8, i8* %call6, %struct._GeglNode* %9, i32 1)
  %10 = load %struct._GeglNode*, %struct._GeglNode** %levels, align 8
  %11 = bitcast %struct._GeglNode* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %call8 = call %struct._GimpLut* @gimp_lut_new()
  store %struct._GimpLut* %call8, %struct._GimpLut** %lut, align 8
  %12 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call9 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %13)
  call void @gimp_levels_config_to_cruft(%struct._GimpLevelsConfig* %12, %struct._Levels* %levels7, i32 %call9)
  %14 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %15 = bitcast %struct._Levels* %levels7 to i8*
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call10 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %16)
  call void @gimp_lut_setup(%struct._GimpLut* %14, float (i8*, i32, i32, float)* bitcast (float (%struct._Levels*, i32, i32, float)* @levels_lut_func to float (i8*, i32, i32, float)*), i8* %15, i32 %call10)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #7
  %19 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_drawable_process_lut(%struct._GimpDrawable* %17, %struct._GimpProgress* %18, i8* %call11, %struct._GimpLut* %19)
  %20 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_levels_stretch(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %histogram = alloca %struct._GimpHistogram*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst30 = alloca %struct._GTypeInstance*, align 8
  %__t32 = alloca i64, align 8
  %__r35 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_levels_stretch, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_levels_stretch, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_levels_stretch, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp28 = icmp eq %struct._GimpProgress* %17, null
  br i1 %cmp28, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.27
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst30, align 8
  %call33 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call33, i64* %__t32, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %tobool36 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r35, align 4
  br label %if.end.49

if.else.38:                                       ; preds = %lor.lhs.false
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %tobool40 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.38
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type43, align 8
  %26 = load i64, i64* %__t32, align 8
  %cmp44 = icmp eq i64 %25, %26
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %__r35, align 4
  br label %if.end.48

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.38
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst30, align 8
  %28 = load i64, i64* %__t32, align 8
  %call47 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #6
  store i32 %call47, i32* %__r35, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %29 = load i32, i32* %__r35, align 4
  store i32 %29, i32* %tmp50
  %30 = load i32, i32* %tmp50
  %tobool51 = icmp ne i32 %30, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49, %do.body.27
  br label %if.end.54

if.else.53:                                       ; preds = %if.end.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_levels_stretch, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call56)
  %33 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %call58 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %33, i32* null, i32* null, i32* null, i32* null)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %do.end.55
  br label %return

if.end.61:                                        ; preds = %do.end.55
  %call62 = call i64 @gimp_levels_config_get_type() #5
  %call63 = call i8* (i64, i8*, ...) @g_object_new(i64 %call62, i8* null)
  %34 = bitcast i8* %call63 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %34, %struct._GimpLevelsConfig** %config, align 8
  %call64 = call %struct._GimpHistogram* @gimp_histogram_new()
  store %struct._GimpHistogram* %call64, %struct._GimpHistogram** %histogram, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %36 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %35, %struct._GimpHistogram* %36)
  %37 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %38 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call65 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %39)
  call void @gimp_levels_config_stretch(%struct._GimpLevelsConfig* %37, %struct._GimpHistogram* %38, i32 %call65)
  %40 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %40)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %43 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  call void @gimp_drawable_levels_internal(%struct._GimpDrawable* %41, %struct._GimpProgress* %42, %struct._GimpLevelsConfig* %43)
  %44 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %45 = bitcast %struct._GimpLevelsConfig* %44 to i8*
  call void @g_object_unref(i8* %45)
  br label %return

return:                                           ; preds = %if.end.61, %if.then.60, %if.else.53, %if.else.24, %if.else.15, %if.else.9
  ret void
}

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare %struct._GimpHistogram* @gimp_histogram_new() #3

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #3

declare void @gimp_levels_config_stretch(%struct._GimpLevelsConfig*, %struct._GimpHistogram*, i32) #3

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #3

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #3

declare i32 @gimp_use_gegl(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #3

declare void @gimp_drawable_apply_operation(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GeglNode*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpLut* @gimp_lut_new() #3

declare void @gimp_levels_config_to_cruft(%struct._GimpLevelsConfig*, %struct._Levels*, i32) #3

declare void @gimp_lut_setup(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #3

declare float @levels_lut_func(%struct._Levels*, i32, i32, float) #3

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare void @gimp_drawable_process_lut(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GimpLut*) #3

declare void @gimp_lut_free(%struct._GimpLut*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
