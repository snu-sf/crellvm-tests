; ModuleID = './app/core/gimpdrawable-bucket-fill.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_bucket_fill = private unnamed_addr constant [26 x i8] c"gimp_drawable_bucket_fill\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"No patterns available for this operation.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: invalid fill_mode passed\00", align 1
@__func__.gimp_drawable_bucket_fill_full = private unnamed_addr constant [31 x i8] c"gimp_drawable_bucket_fill_full\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"fill_mode != GIMP_PATTERN_BUCKET_FILL || GIMP_IS_PATTERN (pattern)\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"fill_mode == GIMP_PATTERN_BUCKET_FILL || color != NULL\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"undo-type\04Bucket Fill\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_bucket_fill(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %fill_mode, i32 %paint_mode, double %opacity, i32 %do_seed_fill, i32 %fill_transparent, i32 %fill_criterion, double %threshold, i32 %sample_merged, double %x, double %y, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %fill_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %do_seed_fill.addr = alloca i32, align 4
  %fill_transparent.addr = alloca i32, align 4
  %fill_criterion.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %sample_merged.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %error.addr = alloca %struct._GError**, align 8
  %color = alloca %struct._GimpRGB, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 %do_seed_fill, i32* %do_seed_fill.addr, align 4
  store i32 %fill_transparent, i32* %fill_transparent.addr, align 4
  store i32 %fill_criterion, i32* %fill_criterion.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_bucket_fill, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_bucket_fill, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #6
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_bucket_fill, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp49 = icmp eq %struct._GError** %29, null
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  %cmp50 = icmp eq %struct._GError* %31, null
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false, %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_bucket_fill, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %32 = load i32, i32* %fill_mode.addr, align 4
  %cmp55 = icmp eq i32 %32, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.end.54
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %33, %struct._GimpRGB* %color)
  br label %if.end.72

if.else.57:                                       ; preds = %do.end.54
  %34 = load i32, i32* %fill_mode.addr, align 4
  %cmp58 = icmp eq i32 %34, 1
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %35, %struct._GimpRGB* %color)
  br label %if.end.71

if.else.60:                                       ; preds = %if.else.57
  %36 = load i32, i32* %fill_mode.addr, align 4
  %cmp61 = icmp eq i32 %36, 2
  br i1 %cmp61, label %if.then.62, label %if.else.69

if.then.62:                                       ; preds = %if.else.60
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call63 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %37)
  store %struct._GimpPattern* %call63, %struct._GimpPattern** %pattern, align 8
  %38 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool64 = icmp ne %struct._GimpPattern* %38, null
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %if.then.62
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call66 = call i32 @gimp_error_quark() #6
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %39, i32 %call66, i32 0, i8* %call67)
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  br label %if.end.70

if.else.69:                                       ; preds = %if.else.60
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_bucket_fill, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.59
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.56
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load i32, i32* %fill_mode.addr, align 4
  %42 = load i32, i32* %paint_mode.addr, align 4
  %43 = load double, double* %opacity.addr, align 8
  %44 = load i32, i32* %do_seed_fill.addr, align 4
  %45 = load i32, i32* %fill_transparent.addr, align 4
  %46 = load i32, i32* %fill_criterion.addr, align 4
  %47 = load double, double* %threshold.addr, align 8
  %48 = load i32, i32* %sample_merged.addr, align 4
  %49 = load double, double* %x.addr, align 8
  %50 = load double, double* %y.addr, align 8
  %51 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %40, i32 %41, i32 %42, double %43, i32 %44, i32 %45, i32 %46, double %47, i32 %48, double %49, double %50, %struct._GimpRGB* %color, %struct._GimpPattern* %51)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.else.69, %if.then.65, %if.else.52, %if.else.45, %if.else.17, %if.else.9
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #3

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #3

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %drawable, i32 %fill_mode, i32 %paint_mode, double %opacity, i32 %do_seed_fill, i32 %fill_transparent, i32 %fill_criterion, double %threshold, i32 %sample_merged, double %x, double %y, %struct._GimpRGB* %color, %struct._GimpPattern* %pattern) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %fill_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %do_seed_fill.addr = alloca i32, align 4
  %fill_transparent.addr = alloca i32, align 4
  %fill_criterion.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %sample_merged.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buf_tiles = alloca %struct._TileManager*, align 8
  %bufPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %bytes = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %col = alloca [4 x i8], align 1
  %pat_buf = alloca %struct._TempBuf*, align 8
  %new_buf = alloca i32, align 4
  %selection = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst23 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %tmp_col = alloca [4 x i8], align 1
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %off_x112 = alloca i32, align 4
  %off_y114 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 %do_seed_fill, i32* %do_seed_fill.addr, align 4
  store i32 %fill_transparent, i32* %fill_transparent.addr, align 4
  store i32 %fill_criterion, i32* %fill_criterion.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  store %struct._GimpChannel* null, %struct._GimpChannel** %mask, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %pat_buf, align 8
  store i32 0, i32* %new_buf, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bucket_fill_full, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bucket_fill_full, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i32, i32* %fill_mode.addr, align 4
  %cmp21 = icmp ne i32 %16, 2
  br i1 %cmp21, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %17 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %18 = bitcast %struct._GimpPattern* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst23, align 8
  %call26 = call i64 @gimp_pattern_get_type() #6
  store i64 %call26, i64* %__t25, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %lor.lhs.false
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type36, align 8
  %25 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %24, %25
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst23, align 8
  %27 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %28 = load i32, i32* %__r28, align 4
  store i32 %28, i32* %tmp43
  %29 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %29, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %do.body.20
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bucket_fill_full, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %30 = load i32, i32* %fill_mode.addr, align 4
  %cmp50 = icmp eq i32 %30, 2
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.body.49
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp52 = icmp ne %struct._GimpRGB* %31, null
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false.51, %do.body.49
  br label %if.end.55

if.else.54:                                       ; preds = %lor.lhs.false.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bucket_fill_full, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_item_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call57)
  %34 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpItem*
  %call59 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %34)
  store %struct._GimpImage* %call59, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call60 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %35)
  store i32 %call60, i32* %bytes, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call61)
  %38 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  %call63 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %38, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call63, i32* %selection, align 4
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %x2, align 4
  %cmp64 = icmp eq i32 %39, %40
  br i1 %cmp64, label %if.then.67, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %do.end.56
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %y2, align 4
  %cmp66 = icmp eq i32 %41, %42
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.65, %do.end.56
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.65
  %43 = load i32, i32* %fill_mode.addr, align 4
  %cmp69 = icmp eq i32 %43, 0
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.end.68
  %44 = load i32, i32* %fill_mode.addr, align 4
  %cmp71 = icmp eq i32 %44, 1
  br i1 %cmp71, label %if.then.72, label %if.else.80

if.then.72:                                       ; preds = %lor.lhs.false.70, %if.end.68
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 1
  %arrayidx75 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %45, i8* %arrayidx, i8* %arrayidx74, i8* %arrayidx75)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call76 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %47)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %46, i32 %call76, i8* %arraydecay, i32 0, i8* %arraydecay77)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call78 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %48)
  %sub = sub nsw i32 %call78, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx79, align 1
  br label %if.end.88

if.else.80:                                       ; preds = %lor.lhs.false.70
  %49 = load i32, i32* %fill_mode.addr, align 4
  %cmp81 = icmp eq i32 %49, 2
  br i1 %cmp81, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %if.else.80
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call83 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %51)
  %52 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask84 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %52, i32 0, i32 1
  %53 = load %struct._TempBuf*, %struct._TempBuf** %mask84, align 8
  %call85 = call %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage* %50, i32 %call83, %struct._TempBuf* %53, i32* %new_buf)
  store %struct._TempBuf* %call85, %struct._TempBuf** %pat_buf, align 8
  br label %if.end.87

if.else.86:                                       ; preds = %if.else.80
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bucket_fill_full, i32 0, i32 0))
  br label %return

if.end.87:                                        ; preds = %if.then.82
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.72
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %54, i32 0, i32 1
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %55)
  %56 = load i32, i32* %do_seed_fill.addr, align 4
  %tobool89 = icmp ne i32 %56, 0
  br i1 %tobool89, label %if.then.90, label %if.else.196

if.then.90:                                       ; preds = %if.end.88
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %59 = load i32, i32* %sample_merged.addr, align 4
  %60 = load double, double* %threshold.addr, align 8
  %conv = fptosi double %60 to i32
  %61 = load i32, i32* %fill_transparent.addr, align 4
  %62 = load i32, i32* %fill_criterion.addr, align 4
  %63 = load double, double* %x.addr, align 8
  %conv91 = fptosi double %63 to i32
  %64 = load double, double* %y.addr, align 8
  %conv92 = fptosi double %64 to i32
  %call93 = call %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage* %57, %struct._GimpDrawable* %58, i32 %59, i32 1, i32 %conv, i32 %61, i32 %62, i32 %conv91, i32 %conv92)
  store %struct._GimpChannel* %call93, %struct._GimpChannel** %mask, align 8
  %65 = load i32, i32* %selection, align 4
  %tobool94 = icmp ne i32 %65, 0
  br i1 %tobool94, label %if.then.95, label %if.end.106

if.then.95:                                       ; preds = %if.then.90
  store i32 0, i32* %off_x, align 4
  store i32 0, i32* %off_y, align 4
  %66 = load i32, i32* %sample_merged.addr, align 4
  %tobool98 = icmp ne i32 %66, 0
  br i1 %tobool98, label %if.end.102, label %if.then.99

if.then.99:                                       ; preds = %if.then.95
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %68 = bitcast %struct._GimpDrawable* %67 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_item_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call100)
  %69 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %69, i32* %off_x, i32* %off_y)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.then.95
  %70 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call103 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %71)
  %72 = load i32, i32* %off_x, align 4
  %sub104 = sub nsw i32 0, %72
  %73 = load i32, i32* %off_y, align 4
  %sub105 = sub nsw i32 0, %73
  call void @gimp_channel_combine_mask(%struct._GimpChannel* %70, %struct._GimpChannel* %call103, i32 3, i32 %sub104, i32 %sub105)
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.102, %if.then.90
  %74 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call107 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %74, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %75 = load i32, i32* %sample_merged.addr, align 4
  %tobool108 = icmp ne i32 %75, 0
  br i1 %tobool108, label %if.then.109, label %if.else.185

if.then.109:                                      ; preds = %if.end.106
  %76 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %77 = bitcast %struct._GimpDrawable* %76 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_item_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call115)
  %78 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpItem*
  store %struct._GimpItem* %78, %struct._GimpItem** %item, align 8
  %79 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %79, i32* %off_x112, i32* %off_y114)
  %80 = load i32, i32* %x1, align 4
  %81 = load i32, i32* %off_x112, align 4
  %82 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call117 = call i32 @gimp_item_get_width(%struct._GimpItem* %82)
  %add = add nsw i32 %81, %call117
  %cmp118 = icmp sgt i32 %80, %add
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.109
  %83 = load i32, i32* %off_x112, align 4
  %84 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call120 = call i32 @gimp_item_get_width(%struct._GimpItem* %84)
  %add121 = add nsw i32 %83, %call120
  br label %cond.end.126

cond.false:                                       ; preds = %if.then.109
  %85 = load i32, i32* %x1, align 4
  %86 = load i32, i32* %off_x112, align 4
  %cmp122 = icmp slt i32 %85, %86
  br i1 %cmp122, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.false
  %87 = load i32, i32* %off_x112, align 4
  br label %cond.end

cond.false.125:                                   ; preds = %cond.false
  %88 = load i32, i32* %x1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.125, %cond.true.124
  %cond = phi i32 [ %87, %cond.true.124 ], [ %88, %cond.false.125 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end, %cond.true
  %cond127 = phi i32 [ %add121, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond127, i32* %x1, align 4
  %89 = load i32, i32* %y1, align 4
  %90 = load i32, i32* %off_y114, align 4
  %91 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call128 = call i32 @gimp_item_get_height(%struct._GimpItem* %91)
  %add129 = add nsw i32 %90, %call128
  %cmp130 = icmp sgt i32 %89, %add129
  br i1 %cmp130, label %cond.true.132, label %cond.false.135

cond.true.132:                                    ; preds = %cond.end.126
  %92 = load i32, i32* %off_y114, align 4
  %93 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call133 = call i32 @gimp_item_get_height(%struct._GimpItem* %93)
  %add134 = add nsw i32 %92, %call133
  br label %cond.end.142

cond.false.135:                                   ; preds = %cond.end.126
  %94 = load i32, i32* %y1, align 4
  %95 = load i32, i32* %off_y114, align 4
  %cmp136 = icmp slt i32 %94, %95
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.false.135
  %96 = load i32, i32* %off_y114, align 4
  br label %cond.end.140

cond.false.139:                                   ; preds = %cond.false.135
  %97 = load i32, i32* %y1, align 4
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi i32 [ %96, %cond.true.138 ], [ %97, %cond.false.139 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.132
  %cond143 = phi i32 [ %add134, %cond.true.132 ], [ %cond141, %cond.end.140 ]
  store i32 %cond143, i32* %y1, align 4
  %98 = load i32, i32* %x2, align 4
  %99 = load i32, i32* %off_x112, align 4
  %100 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call144 = call i32 @gimp_item_get_width(%struct._GimpItem* %100)
  %add145 = add nsw i32 %99, %call144
  %cmp146 = icmp sgt i32 %98, %add145
  br i1 %cmp146, label %cond.true.148, label %cond.false.151

cond.true.148:                                    ; preds = %cond.end.142
  %101 = load i32, i32* %off_x112, align 4
  %102 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call149 = call i32 @gimp_item_get_width(%struct._GimpItem* %102)
  %add150 = add nsw i32 %101, %call149
  br label %cond.end.158

cond.false.151:                                   ; preds = %cond.end.142
  %103 = load i32, i32* %x2, align 4
  %104 = load i32, i32* %off_x112, align 4
  %cmp152 = icmp slt i32 %103, %104
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.151
  %105 = load i32, i32* %off_x112, align 4
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.false.151
  %106 = load i32, i32* %x2, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i32 [ %105, %cond.true.154 ], [ %106, %cond.false.155 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.148
  %cond159 = phi i32 [ %add150, %cond.true.148 ], [ %cond157, %cond.end.156 ]
  store i32 %cond159, i32* %x2, align 4
  %107 = load i32, i32* %y2, align 4
  %108 = load i32, i32* %off_y114, align 4
  %109 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call160 = call i32 @gimp_item_get_height(%struct._GimpItem* %109)
  %add161 = add nsw i32 %108, %call160
  %cmp162 = icmp sgt i32 %107, %add161
  br i1 %cmp162, label %cond.true.164, label %cond.false.167

cond.true.164:                                    ; preds = %cond.end.158
  %110 = load i32, i32* %off_y114, align 4
  %111 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call165 = call i32 @gimp_item_get_height(%struct._GimpItem* %111)
  %add166 = add nsw i32 %110, %call165
  br label %cond.end.174

cond.false.167:                                   ; preds = %cond.end.158
  %112 = load i32, i32* %y2, align 4
  %113 = load i32, i32* %off_y114, align 4
  %cmp168 = icmp slt i32 %112, %113
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.false.167
  %114 = load i32, i32* %off_y114, align 4
  br label %cond.end.172

cond.false.171:                                   ; preds = %cond.false.167
  %115 = load i32, i32* %y2, align 4
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i32 [ %114, %cond.true.170 ], [ %115, %cond.false.171 ]
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.end.172, %cond.true.164
  %cond175 = phi i32 [ %add166, %cond.true.164 ], [ %cond173, %cond.end.172 ]
  store i32 %cond175, i32* %y2, align 4
  %116 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %117 = bitcast %struct._GimpChannel* %116 to %struct._GTypeInstance*
  %call176 = call i64 @gimp_drawable_get_type() #6
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call176)
  %118 = bitcast %struct._GTypeInstance* %call177 to %struct._GimpDrawable*
  %call178 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %118)
  %119 = load i32, i32* %x1, align 4
  %120 = load i32, i32* %y1, align 4
  %121 = load i32, i32* %x2, align 4
  %122 = load i32, i32* %x1, align 4
  %sub179 = sub nsw i32 %121, %122
  %123 = load i32, i32* %y2, align 4
  %124 = load i32, i32* %y1, align 4
  %sub180 = sub nsw i32 %123, %124
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call178, i32 %119, i32 %120, i32 %sub179, i32 %sub180, i32 1)
  %125 = load i32, i32* %off_x112, align 4
  %126 = load i32, i32* %x1, align 4
  %sub181 = sub nsw i32 %126, %125
  store i32 %sub181, i32* %x1, align 4
  %127 = load i32, i32* %off_y114, align 4
  %128 = load i32, i32* %y1, align 4
  %sub182 = sub nsw i32 %128, %127
  store i32 %sub182, i32* %y1, align 4
  %129 = load i32, i32* %off_x112, align 4
  %130 = load i32, i32* %x2, align 4
  %sub183 = sub nsw i32 %130, %129
  store i32 %sub183, i32* %x2, align 4
  %131 = load i32, i32* %off_y114, align 4
  %132 = load i32, i32* %y2, align 4
  %sub184 = sub nsw i32 %132, %131
  store i32 %sub184, i32* %y2, align 4
  br label %if.end.191

if.else.185:                                      ; preds = %if.end.106
  %133 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %134 = bitcast %struct._GimpChannel* %133 to %struct._GTypeInstance*
  %call186 = call i64 @gimp_drawable_get_type() #6
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call186)
  %135 = bitcast %struct._GTypeInstance* %call187 to %struct._GimpDrawable*
  %call188 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %135)
  %136 = load i32, i32* %x1, align 4
  %137 = load i32, i32* %y1, align 4
  %138 = load i32, i32* %x2, align 4
  %139 = load i32, i32* %x1, align 4
  %sub189 = sub nsw i32 %138, %139
  %140 = load i32, i32* %y2, align 4
  %141 = load i32, i32* %y1, align 4
  %sub190 = sub nsw i32 %140, %141
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call188, i32 %136, i32 %137, i32 %sub189, i32 %sub190, i32 1)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.185, %cond.end.174
  %142 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call192 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %142)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.end.195, label %if.then.194

if.then.194:                                      ; preds = %if.end.191
  %143 = load i32, i32* %bytes, align 4
  %inc = add nsw i32 %143, 1
  store i32 %inc, i32* %bytes, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.end.191
  br label %if.end.214

if.else.196:                                      ; preds = %if.end.88
  %144 = load i32, i32* %fill_mode.addr, align 4
  %cmp197 = icmp eq i32 %144, 2
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.213

land.lhs.true.199:                                ; preds = %if.else.196
  %145 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %bytes200 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %145, i32 0, i32 0
  %146 = load i32, i32* %bytes200, align 4
  %cmp201 = icmp eq i32 %146, 2
  br i1 %cmp201, label %if.then.207, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %land.lhs.true.199
  %147 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %bytes204 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %147, i32 0, i32 0
  %148 = load i32, i32* %bytes204, align 4
  %cmp205 = icmp eq i32 %148, 4
  br i1 %cmp205, label %if.then.207, label %if.end.213

if.then.207:                                      ; preds = %lor.lhs.false.203, %land.lhs.true.199
  %149 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call208 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %149)
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.end.212, label %if.then.210

if.then.210:                                      ; preds = %if.then.207
  %150 = load i32, i32* %bytes, align 4
  %inc211 = add nsw i32 %150, 1
  store i32 %inc211, i32* %bytes, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %if.then.207
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %lor.lhs.false.203, %if.else.196
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.195
  %151 = load i32, i32* %x2, align 4
  %152 = load i32, i32* %x1, align 4
  %sub215 = sub nsw i32 %151, %152
  %153 = load i32, i32* %y2, align 4
  %154 = load i32, i32* %y1, align 4
  %sub216 = sub nsw i32 %153, %154
  %155 = load i32, i32* %bytes, align 4
  %call217 = call %struct._TileManager* @tile_manager_new(i32 %sub215, i32 %sub216, i32 %155)
  store %struct._TileManager* %call217, %struct._TileManager** %buf_tiles, align 8
  %156 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %157 = load i32, i32* %x2, align 4
  %158 = load i32, i32* %x1, align 4
  %sub218 = sub nsw i32 %157, %158
  %159 = load i32, i32* %y2, align 4
  %160 = load i32, i32* %y1, align 4
  %sub219 = sub nsw i32 %159, %160
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %156, i32 0, i32 0, i32 %sub218, i32 %sub219, i32 1)
  %161 = load i32, i32* %fill_mode.addr, align 4
  switch i32 %161, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.226
  ]

sw.bb:                                            ; preds = %if.end.214, %if.end.214
  %162 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool220 = icmp ne %struct._GimpChannel* %162, null
  br i1 %tobool220, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %sw.bb
  %arraydecay222 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @color_region_mask(%struct._PixelRegion* %bufPR, %struct._PixelRegion* %maskPR, i8* %arraydecay222)
  br label %if.end.225

if.else.223:                                      ; preds = %sw.bb
  %arraydecay224 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %bufPR, i8* %arraydecay224)
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.221
  br label %sw.epilog

sw.bb.226:                                        ; preds = %if.end.214
  %163 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool227 = icmp ne %struct._GimpChannel* %163, null
  br i1 %tobool227, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %sw.bb.226
  %164 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %165 = load i32, i32* %x1, align 4
  %166 = load i32, i32* %y1, align 4
  call void @pattern_region(%struct._PixelRegion* %bufPR, %struct._PixelRegion* %maskPR, %struct._TempBuf* %164, i32 %165, i32 %166)
  br label %if.end.230

if.else.229:                                      ; preds = %sw.bb.226
  %167 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %168 = load i32, i32* %x1, align 4
  %169 = load i32, i32* %y1, align 4
  call void @pattern_region(%struct._PixelRegion* %bufPR, %struct._PixelRegion* null, %struct._TempBuf* %167, i32 %168, i32 %169)
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.229, %if.then.228
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.214, %if.end.230, %if.end.225
  %170 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %171 = load i32, i32* %x2, align 4
  %172 = load i32, i32* %x1, align 4
  %sub231 = sub nsw i32 %171, %172
  %173 = load i32, i32* %y2, align 4
  %174 = load i32, i32* %y1, align 4
  %sub232 = sub nsw i32 %173, %174
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %170, i32 0, i32 0, i32 %sub231, i32 %sub232, i32 0)
  %175 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call233 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i64 10)
  %176 = load double, double* %opacity.addr, align 8
  %177 = load i32, i32* %paint_mode.addr, align 4
  %178 = load i32, i32* %x1, align 4
  %179 = load i32, i32* %y1, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %175, %struct._PixelRegion* %bufPR, i32 1, i8* %call233, double %176, i32 %177, %struct._TileManager* null, %struct._PixelRegion* null, i32 %178, i32 %179)
  %180 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %180)
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %182 = load i32, i32* %x1, align 4
  %183 = load i32, i32* %y1, align 4
  %184 = load i32, i32* %x2, align 4
  %185 = load i32, i32* %x1, align 4
  %sub234 = sub nsw i32 %184, %185
  %186 = load i32, i32* %y2, align 4
  %187 = load i32, i32* %y1, align 4
  %sub235 = sub nsw i32 %186, %187
  call void @gimp_drawable_update(%struct._GimpDrawable* %181, i32 %182, i32 %183, i32 %sub234, i32 %sub235)
  %188 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %tobool236 = icmp ne %struct._GimpChannel* %188, null
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %sw.epilog
  %189 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %190 = bitcast %struct._GimpChannel* %189 to i8*
  call void @g_object_unref(i8* %190)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %sw.epilog
  %191 = load i32, i32* %new_buf, align 4
  %tobool239 = icmp ne i32 %191, 0
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.238
  %192 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %192)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.end.238
  %193 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp242 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %193, i32 0, i32 1
  %194 = load %struct._Gimp*, %struct._Gimp** %gimp242, align 8
  call void @gimp_unset_busy(%struct._Gimp* %194)
  br label %return

return:                                           ; preds = %if.end.241, %if.else.86, %if.then.67, %if.else.54, %if.else.46, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #3

declare %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage*, i32, %struct._TempBuf*, i32*) #3

declare void @gimp_set_busy(%struct._Gimp*) #3

declare %struct._GimpChannel* @gimp_image_contiguous_region_by_seed(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i32) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @gimp_channel_combine_mask(%struct._GimpChannel*, %struct._GimpChannel*, i32, i32, i32) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare void @color_region_mask(%struct._PixelRegion*, %struct._PixelRegion*, i8*) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare void @pattern_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._TempBuf*, i32, i32) #3

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

declare void @g_object_unref(i8*) #3

declare void @temp_buf_free(%struct._TempBuf*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
