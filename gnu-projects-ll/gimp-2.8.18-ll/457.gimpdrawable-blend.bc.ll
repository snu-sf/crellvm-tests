; ModuleID = './app/core/gimpdrawable-blend.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
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
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpProgress = type opaque
%struct.RenderBlendData = type { %struct._GimpGradient*, %struct._GimpContext*, i32, double, double, double, i32, i32, %struct._GimpRGB, %struct._GimpRGB, double, [2 x double], i32, %struct._GRand* }
%struct._GRand = type opaque
%struct._GimpHSV = type { double, double, double, double }
%struct.PutPixelData = type { %struct._PixelRegion*, i8*, i32, i32, %struct._GRand* }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_blend = private unnamed_addr constant [20 x i8] c"gimp_drawable_blend\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@distR = internal global %struct._PixelRegion { i8* null, %struct._TileManager* null, %struct._Tile* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0 }, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"undo-type\04Blend\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gimpdrawable-blend.c\00", align 1
@__func__.gradient_fill_region = private unnamed_addr constant [21 x i8] c"gradient_fill_region\00", align 1
@gradient_precalc_shapeburst.white = private unnamed_addr constant [1 x i8] c"\FF", align 1
@__func__.gradient_render_pixel = private unnamed_addr constant [22 x i8] c"gradient_render_pixel\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_blend(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %blend_mode, i32 %paint_mode, i32 %gradient_type, double %opacity, double %offset, i32 %repeat, i32 %reverse, i32 %supersample, i32 %max_depth, double %threshold, i32 %dither, double %startx, double %starty, double %endx, double %endy, %struct._GimpProgress* %progress) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %blend_mode.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %gradient_type.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %offset.addr = alloca double, align 8
  %repeat.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %supersample.addr = alloca i32, align 4
  %max_depth.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %dither.addr = alloca i32, align 4
  %startx.addr = alloca double, align 8
  %starty.addr = alloca double, align 8
  %endx.addr = alloca double, align 8
  %endy.addr = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buf_tiles = alloca %struct._TileManager*, align 8
  %bufPR = alloca %struct._PixelRegion, align 8
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %blend_mode, i32* %blend_mode.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %gradient_type, i32* %gradient_type.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store i32 %repeat, i32* %repeat.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32 %supersample, i32* %supersample.addr, align 4
  store i32 %max_depth, i32* %max_depth.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %dither, i32* %dither.addr, align 4
  store double %startx, double* %startx.addr, align 8
  store double %starty, double* %starty.addr, align 8
  store double %endx, double* %endx.addr, align 8
  store double %endy, double* %endy.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_blend, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_blend, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
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
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_blend, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp49 = icmp eq %struct._GimpProgress* %29, null
  br i1 %cmp49, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %30 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %31 = bitcast %struct._GimpProgress* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_progress_interface_get_type() #7
  store i64 %call54, i64* %__t53, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %lor.lhs.false
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type64, align 8
  %38 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %37, %38
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %40 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #8
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %41 = load i32, i32* %__r56, align 4
  store i32 %41, i32* %tmp71
  %42 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %42, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70, %do.body.48
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_blend, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.75:                                        ; preds = %if.then.73
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = bitcast %struct._GimpDrawable* %43 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_item_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call77)
  %45 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpItem*
  %call79 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %45)
  store %struct._GimpImage* %call79, %struct._GimpImage** %image, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_item_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call80)
  %48 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpItem*
  %call82 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %48, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %do.end.76
  br label %return

if.end.85:                                        ; preds = %do.end.76
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %49, i32 0, i32 1
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %50)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call86 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %51)
  store i32 %call86, i32* %bytes, align 4
  %52 = load i32, i32* %width, align 4
  %53 = load i32, i32* %height, align 4
  %54 = load i32, i32* %bytes, align 4
  %call87 = call %struct._TileManager* @tile_manager_new(i32 %52, i32 %53, i32 %54)
  store %struct._TileManager* %call87, %struct._TileManager** %buf_tiles, align 8
  %55 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %55, i32 0, i32 0, i32 %56, i32 %57, i32 1)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  %63 = load i32, i32* %blend_mode.addr, align 4
  %64 = load i32, i32* %gradient_type.addr, align 4
  %65 = load double, double* %offset.addr, align 8
  %66 = load i32, i32* %repeat.addr, align 4
  %67 = load i32, i32* %reverse.addr, align 4
  %68 = load i32, i32* %supersample.addr, align 4
  %69 = load i32, i32* %max_depth.addr, align 4
  %70 = load double, double* %threshold.addr, align 8
  %71 = load i32, i32* %dither.addr, align 4
  %72 = load double, double* %startx.addr, align 8
  %73 = load i32, i32* %x, align 4
  %conv = sitofp i32 %73 to double
  %sub = fsub double %72, %conv
  %74 = load double, double* %starty.addr, align 8
  %75 = load i32, i32* %y, align 4
  %conv88 = sitofp i32 %75 to double
  %sub89 = fsub double %74, %conv88
  %76 = load double, double* %endx.addr, align 8
  %77 = load i32, i32* %x, align 4
  %conv90 = sitofp i32 %77 to double
  %sub91 = fsub double %76, %conv90
  %78 = load double, double* %endy.addr, align 8
  %79 = load i32, i32* %y, align 4
  %conv92 = sitofp i32 %79 to double
  %sub93 = fsub double %78, %conv92
  %80 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gradient_fill_region(%struct._GimpImage* %58, %struct._GimpDrawable* %59, %struct._GimpContext* %60, %struct._PixelRegion* %bufPR, i32 %61, i32 %62, i32 %63, i32 %64, double %65, i32 %66, i32 %67, i32 %68, i32 %69, double %70, i32 %71, double %sub, double %sub89, double %sub91, double %sub93, %struct._GimpProgress* %80)
  %81 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %tobool94 = icmp ne %struct._TileManager* %81, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.85
  %82 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  call void @tile_manager_unref(%struct._TileManager* %82)
  store %struct._TileManager* null, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.85
  %83 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %83, i32 0, i32 0, i32 %84, i32 %85, i32 0)
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call97 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %87 = load double, double* %opacity.addr, align 8
  %88 = load i32, i32* %paint_mode.addr, align 4
  %89 = load i32, i32* %x, align 4
  %90 = load i32, i32* %y, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %86, %struct._PixelRegion* %bufPR, i32 1, i8* %call97, double %87, i32 %88, %struct._TileManager* null, %struct._PixelRegion* null, i32 %89, i32 %90)
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %92 = load i32, i32* %x, align 4
  %93 = load i32, i32* %y, align 4
  %94 = load i32, i32* %width, align 4
  %95 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %96 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %96)
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp98 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %97, i32 0, i32 1
  %98 = load %struct._Gimp*, %struct._Gimp** %gimp98, align 8
  call void @gimp_unset_busy(%struct._Gimp* %98)
  br label %return

return:                                           ; preds = %if.end.96, %if.then.84, %if.else.74, %if.else.45, %if.else.17, %if.else.9
  ret void
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

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare void @gimp_set_busy(%struct._Gimp*) #3

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gradient_fill_region(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._PixelRegion* %PR, i32 %width, i32 %height, i32 %blend_mode, i32 %gradient_type, double %offset, i32 %repeat, i32 %reverse, i32 %supersample, i32 %max_depth, double %threshold, i32 %dither, double %sx, double %sy, double %ex, double %ey, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %blend_mode.addr = alloca i32, align 4
  %gradient_type.addr = alloca i32, align 4
  %offset.addr = alloca double, align 8
  %repeat.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %supersample.addr = alloca i32, align 4
  %max_depth.addr = alloca i32, align 4
  %threshold.addr = alloca double, align 8
  %dither.addr = alloca i32, align 4
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %ex.addr = alloca double, align 8
  %ey.addr = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %rbd = alloca %struct.RenderBlendData, align 8
  %fg_hsv = alloca %struct._GimpHSV, align 8
  %bg_hsv = alloca %struct._GimpHSV, align 8
  %ppd = alloca %struct.PutPixelData, align 8
  %func = alloca void ()*, align 8
  %progress_func = alloca void (i8*, double)*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %blend_mode, i32* %blend_mode.addr, align 4
  store i32 %gradient_type, i32* %gradient_type.addr, align 4
  store double %offset, double* %offset.addr, align 8
  store i32 %repeat, i32* %repeat.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32 %supersample, i32* %supersample.addr, align 4
  store i32 %max_depth, i32* %max_depth.addr, align 4
  store double %threshold, double* %threshold.addr, align 8
  store i32 %dither, i32* %dither.addr, align 4
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %ex, double* %ex.addr, align 8
  store double %ey, double* %ey.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %0)
  %gradient = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  store %struct._GimpGradient* %call, %struct._GimpGradient** %gradient, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %context1 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 1
  store %struct._GimpContext* %1, %struct._GimpContext** %context1, align 8
  %2 = load i32, i32* %reverse.addr, align 4
  %reverse2 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 2
  store i32 %2, i32* %reverse2, align 4
  %gradient3 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient3, align 8
  %call4 = call i32 @gimp_gradient_has_fg_bg_segments(%struct._GimpGradient* %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %gradient5 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient5, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call6 = call %struct._GimpGradient* @gimp_gradient_flatten(%struct._GimpGradient* %4, %struct._GimpContext* %5)
  %gradient7 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  store %struct._GimpGradient* %call6, %struct._GimpGradient** %gradient7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %gradient8 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient8, align 8
  %7 = bitcast %struct._GimpGradient* %6 to i8*
  %call9 = call i8* @g_object_ref(i8* %7)
  %8 = bitcast i8* %call9 to %struct._GimpGradient*
  %gradient10 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  store %struct._GimpGradient* %8, %struct._GimpGradient** %gradient10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %fg = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %9, %struct._GimpRGB* %fg)
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %bg = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 9
  call void @gimp_context_get_background(%struct._GimpContext* %10, %struct._GimpRGB* %bg)
  %11 = load i32, i32* %blend_mode.addr, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %fg12 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 8
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %fg12, %struct._GimpHSV* %fg_hsv)
  %bg13 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 9
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %bg13, %struct._GimpHSV* %bg_hsv)
  %fg14 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 8
  %12 = bitcast %struct._GimpRGB* %fg14 to i8*
  %13 = bitcast %struct._GimpHSV* %fg_hsv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  %bg15 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 9
  %14 = bitcast %struct._GimpRGB* %bg15 to i8*
  %15 = bitcast %struct._GimpHSV* %bg_hsv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %bg17 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 9
  %fg18 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 8
  %16 = bitcast %struct._GimpRGB* %bg17 to i8*
  %17 = bitcast %struct._GimpRGB* %fg18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %bg19 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 9
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %bg19, i32 0, i32 3
  store double 0.000000e+00, double* %a, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gradient_fill_region, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.20, %sw.bb.16, %sw.bb.11, %sw.bb
  %18 = load i32, i32* %gradient_type.addr, align 4
  switch i32 %18, label %sw.default.69 [
    i32 2, label %sw.bb.21
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.37
    i32 9, label %sw.bb.37
    i32 10, label %sw.bb.37
    i32 0, label %sw.bb.37
    i32 1, label %sw.bb.37
    i32 6, label %sw.bb.58
    i32 7, label %sw.bb.58
    i32 8, label %sw.bb.58
  ]

sw.bb.21:                                         ; preds = %sw.epilog
  %19 = load double, double* %ex.addr, align 8
  %20 = load double, double* %sx.addr, align 8
  %sub = fsub double %19, %20
  %21 = load double, double* %ex.addr, align 8
  %22 = load double, double* %sx.addr, align 8
  %sub22 = fsub double %21, %22
  %mul = fmul double %sub, %sub22
  %23 = load double, double* %ey.addr, align 8
  %24 = load double, double* %sy.addr, align 8
  %sub23 = fsub double %23, %24
  %25 = load double, double* %ey.addr, align 8
  %26 = load double, double* %sy.addr, align 8
  %sub24 = fsub double %25, %26
  %mul25 = fmul double %sub23, %sub24
  %add = fadd double %mul, %mul25
  %call26 = call double @sqrt(double %add) #4
  %dist = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  store double %call26, double* %dist, align 8
  br label %sw.epilog.72

sw.bb.27:                                         ; preds = %sw.epilog
  %27 = load double, double* %ex.addr, align 8
  %28 = load double, double* %sx.addr, align 8
  %sub28 = fsub double %27, %28
  %call29 = call double @fabs(double %sub28) #7
  %29 = load double, double* %ey.addr, align 8
  %30 = load double, double* %sy.addr, align 8
  %sub30 = fsub double %29, %30
  %call31 = call double @fabs(double %sub30) #7
  %cmp = fcmp ogt double %call29, %call31
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.27
  %31 = load double, double* %ex.addr, align 8
  %32 = load double, double* %sx.addr, align 8
  %sub32 = fsub double %31, %32
  %call33 = call double @fabs(double %sub32) #7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.27
  %33 = load double, double* %ey.addr, align 8
  %34 = load double, double* %sy.addr, align 8
  %sub34 = fsub double %33, %34
  %call35 = call double @fabs(double %sub34) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call33, %cond.true ], [ %call35, %cond.false ]
  %dist36 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  store double %cond, double* %dist36, align 8
  br label %sw.epilog.72

sw.bb.37:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %35 = load double, double* %ex.addr, align 8
  %36 = load double, double* %sx.addr, align 8
  %sub38 = fsub double %35, %36
  %37 = load double, double* %ex.addr, align 8
  %38 = load double, double* %sx.addr, align 8
  %sub39 = fsub double %37, %38
  %mul40 = fmul double %sub38, %sub39
  %39 = load double, double* %ey.addr, align 8
  %40 = load double, double* %sy.addr, align 8
  %sub41 = fsub double %39, %40
  %41 = load double, double* %ey.addr, align 8
  %42 = load double, double* %sy.addr, align 8
  %sub42 = fsub double %41, %42
  %mul43 = fmul double %sub41, %sub42
  %add44 = fadd double %mul40, %mul43
  %call45 = call double @sqrt(double %add44) #4
  %dist46 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  store double %call45, double* %dist46, align 8
  %dist47 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  %43 = load double, double* %dist47, align 8
  %cmp48 = fcmp ogt double %43, 0.000000e+00
  br i1 %cmp48, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %sw.bb.37
  %44 = load double, double* %ex.addr, align 8
  %45 = load double, double* %sx.addr, align 8
  %sub50 = fsub double %44, %45
  %dist51 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  %46 = load double, double* %dist51, align 8
  %div = fdiv double %sub50, %46
  %vec = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 11
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %div, double* %arrayidx, align 8
  %47 = load double, double* %ey.addr, align 8
  %48 = load double, double* %sy.addr, align 8
  %sub52 = fsub double %47, %48
  %dist53 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  %49 = load double, double* %dist53, align 8
  %div54 = fdiv double %sub52, %49
  %vec55 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 11
  %arrayidx56 = getelementptr inbounds [2 x double], [2 x double]* %vec55, i32 0, i64 1
  store double %div54, double* %arrayidx56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.49, %sw.bb.37
  br label %sw.epilog.72

sw.bb.58:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %50 = load double, double* %ex.addr, align 8
  %51 = load double, double* %sx.addr, align 8
  %sub59 = fsub double %50, %51
  %52 = load double, double* %ex.addr, align 8
  %53 = load double, double* %sx.addr, align 8
  %sub60 = fsub double %52, %53
  %mul61 = fmul double %sub59, %sub60
  %54 = load double, double* %ey.addr, align 8
  %55 = load double, double* %sy.addr, align 8
  %sub62 = fsub double %54, %55
  %56 = load double, double* %ey.addr, align 8
  %57 = load double, double* %sy.addr, align 8
  %sub63 = fsub double %56, %57
  %mul64 = fmul double %sub62, %sub63
  %add65 = fadd double %mul61, %mul64
  %call66 = call double @sqrt(double %add65) #4
  %dist67 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  store double %call66, double* %dist67, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %60 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %dist68 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 10
  %61 = load double, double* %dist68, align 8
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gradient_precalc_shapeburst(%struct._GimpImage* %58, %struct._GimpDrawable* %59, %struct._PixelRegion* %60, double %61, %struct._GimpProgress* %62)
  br label %sw.epilog.72

sw.default.69:                                    ; preds = %sw.epilog
  br label %do.body.70

do.body.70:                                       ; preds = %sw.default.69
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 944, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gradient_fill_region, i32 0, i32 0), i8* null) #9
  unreachable

do.end.71:                                        ; No predecessors!
  br label %sw.epilog.72

sw.epilog.72:                                     ; preds = %do.end.71, %sw.bb.58, %if.end.57, %cond.end, %sw.bb.21
  %63 = load double, double* %offset.addr, align 8
  %offset73 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 3
  store double %63, double* %offset73, align 8
  %64 = load double, double* %sx.addr, align 8
  %sx74 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 4
  store double %64, double* %sx74, align 8
  %65 = load double, double* %sy.addr, align 8
  %sy75 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 5
  store double %65, double* %sy75, align 8
  %66 = load i32, i32* %blend_mode.addr, align 4
  %blend_mode76 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 6
  store i32 %66, i32* %blend_mode76, align 4
  %67 = load i32, i32* %gradient_type.addr, align 4
  %gradient_type77 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 7
  store i32 %67, i32* %gradient_type77, align 4
  %68 = load i32, i32* %repeat.addr, align 4
  %repeat78 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 12
  store i32 %68, i32* %repeat78, align 4
  %69 = load i32, i32* %supersample.addr, align 4
  %tobool79 = icmp ne i32 %69, 0
  br i1 %tobool79, label %if.then.80, label %if.else.95

if.then.80:                                       ; preds = %sw.epilog.72
  %70 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %PR81 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 0
  store %struct._PixelRegion* %70, %struct._PixelRegion** %PR81, align 8
  %71 = load i32, i32* %width.addr, align 4
  %72 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %72, i32 0, i32 10
  %73 = load i32, i32* %bytes, align 4
  %mul82 = mul nsw i32 %71, %73
  %conv = sext i32 %mul82 to i64
  %call83 = call noalias i8* @g_malloc(i64 %conv)
  %row_data = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 1
  store i8* %call83, i8** %row_data, align 8
  %74 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes84 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %74, i32 0, i32 10
  %75 = load i32, i32* %bytes84, align 4
  %bytes85 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 2
  store i32 %75, i32* %bytes85, align 4
  %76 = load i32, i32* %width.addr, align 4
  %width86 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 3
  store i32 %76, i32* %width86, align 4
  %call87 = call %struct._GRand* @g_rand_new()
  %dither_rand = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 4
  store %struct._GRand* %call87, %struct._GRand** %dither_rand, align 8
  %77 = load i32, i32* %width.addr, align 4
  %sub88 = sub nsw i32 %77, 1
  %78 = load i32, i32* %height.addr, align 4
  %sub89 = sub nsw i32 %78, 1
  %79 = load i32, i32* %max_depth.addr, align 4
  %80 = load double, double* %threshold.addr, align 8
  %81 = bitcast %struct.RenderBlendData* %rbd to i8*
  %82 = bitcast %struct.PutPixelData* %ppd to i8*
  %83 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool90 = icmp ne %struct._GimpProgress* %83, null
  %cond91 = select i1 %tobool90, void (i32, i32, i32, i8*)* @gimp_progress_update_and_flush, void (i32, i32, i32, i8*)* null
  %84 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %85 = bitcast %struct._GimpProgress* %84 to i8*
  %call92 = call i64 @gimp_adaptive_supersample_area(i32 0, i32 0, i32 %sub88, i32 %sub89, i32 %79, double %80, void (double, double, %struct._GimpRGB*, i8*)* @gradient_render_pixel, i8* %81, void (i32, i32, %struct._GimpRGB*, i8*)* @gradient_put_pixel, i8* %82, void (i32, i32, i32, i8*)* %cond91, i8* %85)
  %dither_rand93 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 4
  %86 = load %struct._GRand*, %struct._GRand** %dither_rand93, align 8
  call void @g_rand_free(%struct._GRand* %86)
  %row_data94 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %ppd, i32 0, i32 1
  %87 = load i8*, i8** %row_data94, align 8
  call void @g_free(i8* %87)
  br label %if.end.120

if.else.95:                                       ; preds = %sw.epilog.72
  store void (i8*, double)* null, void (i8*, double)** %progress_func, align 8
  %88 = load i32, i32* %dither.addr, align 4
  %tobool96 = icmp ne i32 %88, 0
  br i1 %tobool96, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %if.else.95
  %call98 = call %struct._GRand* @g_rand_new()
  %seed = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 13
  store %struct._GRand* %call98, %struct._GRand** %seed, align 8
  %89 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes99 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %89, i32 0, i32 10
  %90 = load i32, i32* %bytes99, align 4
  %cmp100 = icmp sge i32 %90, 3
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.then.97
  store void ()* bitcast (void (%struct.RenderBlendData*, %struct._PixelRegion*)* @gradient_fill_single_region_rgb_dither to void ()*), void ()** %func, align 8
  br label %if.end.104

if.else.103:                                      ; preds = %if.then.97
  store void ()* bitcast (void (%struct.RenderBlendData*, %struct._PixelRegion*)* @gradient_fill_single_region_gray_dither to void ()*), void ()** %func, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.102
  br label %if.end.112

if.else.105:                                      ; preds = %if.else.95
  %91 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %bytes106 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %91, i32 0, i32 10
  %92 = load i32, i32* %bytes106, align 4
  %cmp107 = icmp sge i32 %92, 3
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %if.else.105
  store void ()* bitcast (void (%struct.RenderBlendData*, %struct._PixelRegion*)* @gradient_fill_single_region_rgb to void ()*), void ()** %func, align 8
  br label %if.end.111

if.else.110:                                      ; preds = %if.else.105
  store void ()* bitcast (void (%struct.RenderBlendData*, %struct._PixelRegion*)* @gradient_fill_single_region_gray to void ()*), void ()** %func, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.109
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.104
  %93 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool113 = icmp ne %struct._GimpProgress* %93, null
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.112
  store void (i8*, double)* bitcast (void (%struct._GimpProgress*, double)* @gimp_progress_set_value to void (i8*, double)*), void (i8*, double)** %progress_func, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.112
  %94 = load void ()*, void ()** %func, align 8
  %95 = bitcast %struct.RenderBlendData* %rbd to i8*
  %96 = load void (i8*, double)*, void (i8*, double)** %progress_func, align 8
  %97 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %98 = bitcast %struct._GimpProgress* %97 to i8*
  %99 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  call void (void ()*, i8*, void (i8*, double)*, i8*, i32, ...) @pixel_regions_process_parallel_progress(void ()* %94, i8* %95, void (i8*, double)* %96, i8* %98, i32 1, %struct._PixelRegion* %99)
  %100 = load i32, i32* %dither.addr, align 4
  %tobool116 = icmp ne i32 %100, 0
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.115
  %seed118 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 13
  %101 = load %struct._GRand*, %struct._GRand** %seed118, align 8
  call void @g_rand_free(%struct._GRand* %101)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.115
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.80
  %gradient121 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %rbd, i32 0, i32 0
  %102 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient121, align 8
  %103 = bitcast %struct._GimpGradient* %102 to i8*
  call void @g_object_unref(i8* %103)
  ret void
}

declare void @tile_manager_unref(%struct._TileManager*) #3

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #3

declare i32 @gimp_gradient_has_fg_bg_segments(%struct._GimpGradient*) #3

declare %struct._GimpGradient* @gimp_gradient_flatten(%struct._GimpGradient*, %struct._GimpContext*) #3

declare i8* @g_object_ref(i8*) #3

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #3

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #3

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind
declare double @sqrt(double) #6

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_precalc_shapeburst(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._PixelRegion* %PR, double %dist, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %dist.addr = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  %tempR = alloca %struct._PixelRegion, align 8
  %max_iteration = alloca float, align 4
  %distp = alloca float*, align 8
  %size = alloca i32, align 4
  %pr = alloca i8*, align 8
  %white = alloca [1 x i8], align 1
  %maskR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %drawableR = alloca %struct._PixelRegion, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  store double %dist, double* %dist.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = bitcast [1 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gradient_precalc_shapeburst.white, i32 0, i32 0), i64 1, i32 1, i1 false)
  %1 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %1, i32 0, i32 8
  %2 = load i32, i32* %w, align 4
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 9
  %4 = load i32, i32* %h, align 4
  %call = call %struct._TileManager* @tile_manager_new(i32 %2, i32 %4, i32 4)
  store %struct._TileManager* %call, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 8
  %6 = load i32, i32* %w1, align 4
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  %8 = load i32, i32* %h2, align 4
  %call3 = call %struct._TileManager* @tile_manager_new(i32 %6, i32 %8, i32 1)
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempR, i32 0, i32 1
  store %struct._TileManager* %call3, %struct._TileManager** %tiles, align 8
  %tiles4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempR, i32 0, i32 1
  %9 = load %struct._TileManager*, %struct._TileManager** %tiles4, align 8
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w5, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 9
  %13 = load i32, i32* %h6, align 4
  call void @pixel_region_init(%struct._PixelRegion* %tempR, %struct._TileManager* %9, i32 0, i32 0, i32 %11, i32 %13, i32 1)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call7 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %14)
  store %struct._GimpChannel* %call7, %struct._GimpChannel** %mask, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call8 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %15)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %18, i32* %x, i32* %y, i32* %width, i32* %height)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %21, i32* %off_x, i32* %off_y)
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_drawable_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpDrawable*
  %call16 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %24)
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %25, %26
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %off_y, align 4
  %add17 = add nsw i32 %27, %28
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskR, %struct._TileManager* %call16, i32 %add, i32 %add17, i32 %29, i32 %30, i32 0)
  call void @copy_region(%struct._PixelRegion* %maskR, %struct._PixelRegion* %tempR)
  br label %if.end.27

if.else:                                          ; preds = %entry
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %31)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.else
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call21 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %32)
  %33 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %33, i32 0, i32 6
  %34 = load i32, i32* %x22, align 4
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %35, i32 0, i32 7
  %36 = load i32, i32* %y23, align 4
  %37 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w24 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %37, i32 0, i32 8
  %38 = load i32, i32* %w24, align 4
  %39 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %39, i32 0, i32 9
  %40 = load i32, i32* %h25, align 4
  call void @pixel_region_init(%struct._PixelRegion* %drawableR, %struct._TileManager* %call21, i32 %34, i32 %36, i32 %38, i32 %40, i32 0)
  call void @extract_alpha_region(%struct._PixelRegion* %drawableR, %struct._PixelRegion* null, %struct._PixelRegion* %tempR)
  br label %if.end

if.else.26:                                       ; preds = %if.else
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %white, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %tempR, i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.else.26, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %tiles28 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempR, i32 0, i32 1
  %41 = load %struct._TileManager*, %struct._TileManager** %tiles28, align 8
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w29 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %42, i32 0, i32 8
  %43 = load i32, i32* %w29, align 4
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h30 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %44, i32 0, i32 9
  %45 = load i32, i32* %h30, align 4
  call void @pixel_region_init(%struct._PixelRegion* %tempR, %struct._TileManager* %41, i32 0, i32 0, i32 %43, i32 %45, i32 1)
  %46 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %47 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w31 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %47, i32 0, i32 8
  %48 = load i32, i32* %w31, align 4
  %49 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h32 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %49, i32 0, i32 9
  %50 = load i32, i32* %h32, align 4
  call void @pixel_region_init(%struct._PixelRegion* @distR, %struct._TileManager* %46, i32 0, i32 0, i32 %48, i32 %50, i32 1)
  %51 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool33 = icmp ne %struct._GimpProgress* %51, null
  %cond = select i1 %tobool33, void (i32, i32, i32, i8*)* @gimp_progress_update_and_flush, void (i32, i32, i32, i8*)* null
  %52 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %53 = bitcast %struct._GimpProgress* %52 to i8*
  %call34 = call float @shapeburst_region(%struct._PixelRegion* %tempR, %struct._PixelRegion* @distR, void (i32, i32, i32, i8*)* %cond, i8* %53)
  store float %call34, float* %max_iteration, align 4
  %54 = load float, float* %max_iteration, align 4
  %cmp = fcmp ogt float %54, 0.000000e+00
  br i1 %cmp, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %if.end.27
  %55 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %56 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w36 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %56, i32 0, i32 8
  %57 = load i32, i32* %w36, align 4
  %58 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h37 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %58, i32 0, i32 9
  %59 = load i32, i32* %h37, align 4
  call void @pixel_region_init(%struct._PixelRegion* @distR, %struct._TileManager* %55, i32 0, i32 0, i32 %57, i32 %59, i32 1)
  %call38 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* @distR)
  %60 = bitcast %struct._PixelRegionIterator* %call38 to i8*
  store i8* %60, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %61 = load i8*, i8** %pr, align 8
  %cmp39 = icmp ne i8* %61, null
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i8*, i8** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 0), align 8
  %63 = bitcast i8* %62 to float*
  store float* %63, float** %distp, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %mul = mul nsw i32 %64, %65
  store i32 %mul, i32* %size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %66 = load i32, i32* %size, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %size, align 4
  %tobool40 = icmp ne i32 %66, 0
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load float, float* %max_iteration, align 4
  %68 = load float*, float** %distp, align 8
  %incdec.ptr = getelementptr inbounds float, float* %68, i32 1
  store float* %incdec.ptr, float** %distp, align 8
  %69 = load float, float* %68, align 4
  %div = fdiv float %69, %67
  store float %div, float* %68, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %70 = load i8*, i8** %pr, align 8
  %71 = bitcast i8* %70 to %struct._PixelRegionIterator*
  %call41 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %71)
  %72 = bitcast %struct._PixelRegionIterator* %call41 to i8*
  store i8* %72, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %74 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %74, i32 0, i32 8
  %75 = load i32, i32* %w42, align 4
  %76 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h43 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %76, i32 0, i32 9
  %77 = load i32, i32* %h43, align 4
  call void @pixel_region_init(%struct._PixelRegion* @distR, %struct._TileManager* %73, i32 0, i32 0, i32 %75, i32 %77, i32 0)
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.end.27
  %tiles45 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempR, i32 0, i32 1
  %78 = load %struct._TileManager*, %struct._TileManager** %tiles45, align 8
  call void @tile_manager_unref(%struct._TileManager* %78)
  ret void
}

declare noalias i8* @g_malloc(i64) #3

declare %struct._GRand* @g_rand_new() #3

declare i64 @gimp_adaptive_supersample_area(i32, i32, i32, i32, i32, double, void (double, double, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, i32, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gradient_render_pixel(double %x, double %y, %struct._GimpRGB* %color, i8* %render_data) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %render_data.addr = alloca i8*, align 8
  %rbd = alloca %struct.RenderBlendData*, align 8
  %factor = alloca double, align 8
  %ifactor = alloca i32, align 4
  %hsv = alloca %struct._GimpHSV, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %render_data, i8** %render_data.addr, align 8
  %0 = load i8*, i8** %render_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.RenderBlendData*
  store %struct.RenderBlendData* %1, %struct.RenderBlendData** %rbd, align 8
  %2 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %gradient_type = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %2, i32 0, i32 7
  %3 = load i32, i32* %gradient_type, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.28
    i32 5, label %sw.bb.38
    i32 6, label %sw.bb.48
    i32 7, label %sw.bb.50
    i32 8, label %sw.bb.52
    i32 9, label %sw.bb.54
    i32 10, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %4, i32 0, i32 10
  %5 = load double, double* %dist, align 8
  %6 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %6, i32 0, i32 11
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i32 0
  %7 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %7, i32 0, i32 3
  %8 = load double, double* %offset, align 8
  %9 = load double, double* %x.addr, align 8
  %10 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %10, i32 0, i32 4
  %11 = load double, double* %sx, align 8
  %sub = fsub double %9, %11
  %12 = load double, double* %y.addr, align 8
  %13 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %13, i32 0, i32 5
  %14 = load double, double* %sy, align 8
  %sub1 = fsub double %12, %14
  %call = call double @gradient_calc_linear_factor(double %5, double* %arraydecay, double %8, double %sub, double %sub1)
  store double %call, double* %factor, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %15 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist3 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %15, i32 0, i32 10
  %16 = load double, double* %dist3, align 8
  %17 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec4 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %17, i32 0, i32 11
  %arraydecay5 = getelementptr inbounds [2 x double], [2 x double]* %vec4, i32 0, i32 0
  %18 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset6 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %18, i32 0, i32 3
  %19 = load double, double* %offset6, align 8
  %20 = load double, double* %x.addr, align 8
  %21 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx7 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %21, i32 0, i32 4
  %22 = load double, double* %sx7, align 8
  %sub8 = fsub double %20, %22
  %23 = load double, double* %y.addr, align 8
  %24 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy9 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %24, i32 0, i32 5
  %25 = load double, double* %sy9, align 8
  %sub10 = fsub double %23, %25
  %call11 = call double @gradient_calc_bilinear_factor(double %16, double* %arraydecay5, double %19, double %sub8, double %sub10)
  store double %call11, double* %factor, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %26 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist13 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %26, i32 0, i32 10
  %27 = load double, double* %dist13, align 8
  %28 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset14 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %28, i32 0, i32 3
  %29 = load double, double* %offset14, align 8
  %30 = load double, double* %x.addr, align 8
  %31 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx15 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %31, i32 0, i32 4
  %32 = load double, double* %sx15, align 8
  %sub16 = fsub double %30, %32
  %33 = load double, double* %y.addr, align 8
  %34 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy17 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %34, i32 0, i32 5
  %35 = load double, double* %sy17, align 8
  %sub18 = fsub double %33, %35
  %call19 = call double @gradient_calc_radial_factor(double %27, double %29, double %sub16, double %sub18)
  store double %call19, double* %factor, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %36 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist21 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %36, i32 0, i32 10
  %37 = load double, double* %dist21, align 8
  %38 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset22 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %38, i32 0, i32 3
  %39 = load double, double* %offset22, align 8
  %40 = load double, double* %x.addr, align 8
  %41 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx23 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %41, i32 0, i32 4
  %42 = load double, double* %sx23, align 8
  %sub24 = fsub double %40, %42
  %43 = load double, double* %y.addr, align 8
  %44 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy25 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %44, i32 0, i32 5
  %45 = load double, double* %sy25, align 8
  %sub26 = fsub double %43, %45
  %call27 = call double @gradient_calc_square_factor(double %37, double %39, double %sub24, double %sub26)
  store double %call27, double* %factor, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %46 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist29 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %46, i32 0, i32 10
  %47 = load double, double* %dist29, align 8
  %48 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec30 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %48, i32 0, i32 11
  %arraydecay31 = getelementptr inbounds [2 x double], [2 x double]* %vec30, i32 0, i32 0
  %49 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset32 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %49, i32 0, i32 3
  %50 = load double, double* %offset32, align 8
  %51 = load double, double* %x.addr, align 8
  %52 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx33 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %52, i32 0, i32 4
  %53 = load double, double* %sx33, align 8
  %sub34 = fsub double %51, %53
  %54 = load double, double* %y.addr, align 8
  %55 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy35 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %55, i32 0, i32 5
  %56 = load double, double* %sy35, align 8
  %sub36 = fsub double %54, %56
  %call37 = call double @gradient_calc_conical_sym_factor(double %47, double* %arraydecay31, double %50, double %sub34, double %sub36)
  store double %call37, double* %factor, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %57 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist39 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %57, i32 0, i32 10
  %58 = load double, double* %dist39, align 8
  %59 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec40 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %59, i32 0, i32 11
  %arraydecay41 = getelementptr inbounds [2 x double], [2 x double]* %vec40, i32 0, i32 0
  %60 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset42 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %60, i32 0, i32 3
  %61 = load double, double* %offset42, align 8
  %62 = load double, double* %x.addr, align 8
  %63 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx43 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %63, i32 0, i32 4
  %64 = load double, double* %sx43, align 8
  %sub44 = fsub double %62, %64
  %65 = load double, double* %y.addr, align 8
  %66 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy45 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %66, i32 0, i32 5
  %67 = load double, double* %sy45, align 8
  %sub46 = fsub double %65, %67
  %call47 = call double @gradient_calc_conical_asym_factor(double %58, double* %arraydecay41, double %61, double %sub44, double %sub46)
  store double %call47, double* %factor, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %68 = load double, double* %x.addr, align 8
  %69 = load double, double* %y.addr, align 8
  %call49 = call double @gradient_calc_shapeburst_angular_factor(double %68, double %69)
  store double %call49, double* %factor, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %70 = load double, double* %x.addr, align 8
  %71 = load double, double* %y.addr, align 8
  %call51 = call double @gradient_calc_shapeburst_spherical_factor(double %70, double %71)
  store double %call51, double* %factor, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %72 = load double, double* %x.addr, align 8
  %73 = load double, double* %y.addr, align 8
  %call53 = call double @gradient_calc_shapeburst_dimpled_factor(double %72, double %73)
  store double %call53, double* %factor, align 8
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %74 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist55 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %74, i32 0, i32 10
  %75 = load double, double* %dist55, align 8
  %76 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec56 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %76, i32 0, i32 11
  %arraydecay57 = getelementptr inbounds [2 x double], [2 x double]* %vec56, i32 0, i32 0
  %77 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset58 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %77, i32 0, i32 3
  %78 = load double, double* %offset58, align 8
  %79 = load double, double* %x.addr, align 8
  %80 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx59 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %80, i32 0, i32 4
  %81 = load double, double* %sx59, align 8
  %sub60 = fsub double %79, %81
  %82 = load double, double* %y.addr, align 8
  %83 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy61 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %83, i32 0, i32 5
  %84 = load double, double* %sy61, align 8
  %sub62 = fsub double %82, %84
  %call63 = call double @gradient_calc_spiral_factor(double %75, double* %arraydecay57, double %78, double %sub60, double %sub62, i32 1)
  store double %call63, double* %factor, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %85 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %dist65 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %85, i32 0, i32 10
  %86 = load double, double* %dist65, align 8
  %87 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %vec66 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %87, i32 0, i32 11
  %arraydecay67 = getelementptr inbounds [2 x double], [2 x double]* %vec66, i32 0, i32 0
  %88 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %offset68 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %88, i32 0, i32 3
  %89 = load double, double* %offset68, align 8
  %90 = load double, double* %x.addr, align 8
  %91 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sx69 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %91, i32 0, i32 4
  %92 = load double, double* %sx69, align 8
  %sub70 = fsub double %90, %92
  %93 = load double, double* %y.addr, align 8
  %94 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %sy71 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %94, i32 0, i32 5
  %95 = load double, double* %sy71, align 8
  %sub72 = fsub double %93, %95
  %call73 = call double @gradient_calc_spiral_factor(double %86, double* %arraydecay67, double %89, double %sub70, double %sub72, i32 0)
  store double %call73, double* %factor, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 725, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gradient_render_pixel, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end.138

sw.epilog:                                        ; preds = %sw.bb.64, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.38, %sw.bb.28, %sw.bb.20, %sw.bb.12, %sw.bb.2, %sw.bb
  %96 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %repeat = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %96, i32 0, i32 12
  %97 = load i32, i32* %repeat, align 4
  switch i32 %97, label %sw.epilog.91 [
    i32 0, label %sw.bb.74
    i32 1, label %sw.bb.80
    i32 2, label %sw.bb.83
  ]

sw.bb.74:                                         ; preds = %sw.epilog
  %98 = load double, double* %factor, align 8
  %cmp = fcmp ogt double %98, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.74
  br label %cond.end.78

cond.false:                                       ; preds = %sw.bb.74
  %99 = load double, double* %factor, align 8
  %cmp75 = fcmp olt double %99, 0.000000e+00
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false
  br label %cond.end

cond.false.77:                                    ; preds = %cond.false
  %100 = load double, double* %factor, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.77, %cond.true.76
  %cond = phi double [ 0.000000e+00, %cond.true.76 ], [ %100, %cond.false.77 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end, %cond.true
  %cond79 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond79, double* %factor, align 8
  br label %sw.epilog.91

sw.bb.80:                                         ; preds = %sw.epilog
  %101 = load double, double* %factor, align 8
  %102 = load double, double* %factor, align 8
  %call81 = call double @floor(double %102) #7
  %sub82 = fsub double %101, %call81
  store double %sub82, double* %factor, align 8
  br label %sw.epilog.91

sw.bb.83:                                         ; preds = %sw.epilog
  %103 = load double, double* %factor, align 8
  %cmp84 = fcmp olt double %103, 0.000000e+00
  br i1 %cmp84, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.83
  %104 = load double, double* %factor, align 8
  %sub85 = fsub double -0.000000e+00, %104
  store double %sub85, double* %factor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.83
  %105 = load double, double* %factor, align 8
  %conv = fptoui double %105 to i32
  store i32 %conv, i32* %ifactor, align 4
  %106 = load double, double* %factor, align 8
  %107 = load double, double* %factor, align 8
  %call86 = call double @floor(double %107) #7
  %sub87 = fsub double %106, %call86
  store double %sub87, double* %factor, align 8
  %108 = load i32, i32* %ifactor, align 4
  %and = and i32 %108, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end
  %109 = load double, double* %factor, align 8
  %sub89 = fsub double 1.000000e+00, %109
  store double %sub89, double* %factor, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end
  br label %sw.epilog.91

sw.epilog.91:                                     ; preds = %sw.epilog, %if.end.90, %sw.bb.80, %cond.end.78
  %110 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %blend_mode = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %110, i32 0, i32 6
  %111 = load i32, i32* %blend_mode, align 4
  %cmp92 = icmp eq i32 %111, 3
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %sw.epilog.91
  %112 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %gradient = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %112, i32 0, i32 0
  %113 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %114 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %context = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %114, i32 0, i32 1
  %115 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %116 = load double, double* %factor, align 8
  %117 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %reverse = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %117, i32 0, i32 2
  %118 = load i32, i32* %reverse, align 4
  %119 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call95 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %113, %struct._GimpContext* %115, %struct._GimpGradientSegment* null, double %116, i32 %118, %struct._GimpRGB* %119)
  br label %if.end.138

if.else:                                          ; preds = %sw.epilog.91
  %120 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %reverse96 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %120, i32 0, i32 2
  %121 = load i32, i32* %reverse96, align 4
  %tobool97 = icmp ne i32 %121, 0
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.else
  %122 = load double, double* %factor, align 8
  %sub99 = fsub double 1.000000e+00, %122
  store double %sub99, double* %factor, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.else
  %123 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %123, i32 0, i32 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg, i32 0, i32 0
  %124 = load double, double* %r, align 8
  %125 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %bg = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %125, i32 0, i32 9
  %r101 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %bg, i32 0, i32 0
  %126 = load double, double* %r101, align 8
  %127 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg102 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %127, i32 0, i32 8
  %r103 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg102, i32 0, i32 0
  %128 = load double, double* %r103, align 8
  %sub104 = fsub double %126, %128
  %129 = load double, double* %factor, align 8
  %mul = fmul double %sub104, %129
  %add = fadd double %124, %mul
  %130 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r105 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %130, i32 0, i32 0
  store double %add, double* %r105, align 8
  %131 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg106 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %131, i32 0, i32 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg106, i32 0, i32 1
  %132 = load double, double* %g, align 8
  %133 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %bg107 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %133, i32 0, i32 9
  %g108 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %bg107, i32 0, i32 1
  %134 = load double, double* %g108, align 8
  %135 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg109 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %135, i32 0, i32 8
  %g110 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg109, i32 0, i32 1
  %136 = load double, double* %g110, align 8
  %sub111 = fsub double %134, %136
  %137 = load double, double* %factor, align 8
  %mul112 = fmul double %sub111, %137
  %add113 = fadd double %132, %mul112
  %138 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g114 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %138, i32 0, i32 1
  store double %add113, double* %g114, align 8
  %139 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg115 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %139, i32 0, i32 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg115, i32 0, i32 2
  %140 = load double, double* %b, align 8
  %141 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %bg116 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %141, i32 0, i32 9
  %b117 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %bg116, i32 0, i32 2
  %142 = load double, double* %b117, align 8
  %143 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg118 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %143, i32 0, i32 8
  %b119 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg118, i32 0, i32 2
  %144 = load double, double* %b119, align 8
  %sub120 = fsub double %142, %144
  %145 = load double, double* %factor, align 8
  %mul121 = fmul double %sub120, %145
  %add122 = fadd double %140, %mul121
  %146 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b123 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %146, i32 0, i32 2
  store double %add122, double* %b123, align 8
  %147 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg124 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %147, i32 0, i32 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg124, i32 0, i32 3
  %148 = load double, double* %a, align 8
  %149 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %bg125 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %149, i32 0, i32 9
  %a126 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %bg125, i32 0, i32 3
  %150 = load double, double* %a126, align 8
  %151 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %fg127 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %151, i32 0, i32 8
  %a128 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %fg127, i32 0, i32 3
  %152 = load double, double* %a128, align 8
  %sub129 = fsub double %150, %152
  %153 = load double, double* %factor, align 8
  %mul130 = fmul double %sub129, %153
  %add131 = fadd double %148, %mul130
  %154 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a132 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %154, i32 0, i32 3
  store double %add131, double* %a132, align 8
  %155 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd, align 8
  %blend_mode133 = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %155, i32 0, i32 6
  %156 = load i32, i32* %blend_mode133, align 4
  %cmp134 = icmp eq i32 %156, 1
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.100
  %157 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %158 = bitcast %struct._GimpRGB* %157 to %struct._GimpHSV*
  %159 = bitcast %struct._GimpHSV* %hsv to i8*
  %160 = bitcast %struct._GimpHSV* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 32, i32 8, i1 false)
  %161 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %161)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.100
  br label %if.end.138

if.end.138:                                       ; preds = %do.end, %if.end.137, %if.then.94
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_put_pixel(i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %put_pixel_data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %put_pixel_data.addr = alloca i8*, align 8
  %ppd = alloca %struct.PutPixelData*, align 8
  %dest = alloca i8*, align 8
  %i = alloca i32, align 4
  %gray = alloca double, align 8
  %i58 = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %put_pixel_data, i8** %put_pixel_data.addr, align 8
  %0 = load i8*, i8** %put_pixel_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PutPixelData*
  store %struct.PutPixelData* %1, %struct.PutPixelData** %ppd, align 8
  %2 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %row_data = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %2, i32 0, i32 1
  %3 = load i8*, i8** %row_data, align 8
  %4 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %bytes = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %4, i32 0, i32 2
  %5 = load i32, i32* %bytes, align 4
  %6 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %5, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %7 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %bytes1 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %7, i32 0, i32 2
  %8 = load i32, i32* %bytes1, align 4
  %cmp = icmp sge i32 %8, 3
  br i1 %cmp, label %if.then, label %if.else.53

if.then:                                          ; preds = %entry
  %9 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %dither_rand = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %9, i32 0, i32 4
  %10 = load %struct._GRand*, %struct._GRand** %dither_rand, align 8
  %tobool = icmp ne %struct._GRand* %10, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %dither_rand3 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %11, i32 0, i32 4
  %12 = load %struct._GRand*, %struct._GRand** %dither_rand3, align 8
  %call = call i32 @g_rand_int(%struct._GRand* %12)
  store i32 %call, i32* %i, align 4
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 0
  %14 = load double, double* %r, align 8
  %mul4 = fmul double %14, 2.550000e+02
  %15 = load i32, i32* %i, align 4
  %and = and i32 %15, 255
  %conv = sitofp i32 %and to double
  %div = fdiv double %conv, 2.560000e+02
  %add = fadd double %mul4, %div
  %conv5 = fptoui double %add to i8
  %16 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv5, i8* %16, align 1
  %17 = load i32, i32* %i, align 4
  %shr = ashr i32 %17, 8
  store i32 %shr, i32* %i, align 4
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i32 0, i32 1
  %19 = load double, double* %g, align 8
  %mul6 = fmul double %19, 2.550000e+02
  %20 = load i32, i32* %i, align 4
  %and7 = and i32 %20, 255
  %conv8 = sitofp i32 %and7 to double
  %div9 = fdiv double %conv8, 2.560000e+02
  %add10 = fadd double %mul6, %div9
  %conv11 = fptoui double %add10 to i8
  %21 = load i8*, i8** %dest, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr12, i8** %dest, align 8
  store i8 %conv11, i8* %21, align 1
  %22 = load i32, i32* %i, align 4
  %shr13 = ashr i32 %22, 8
  store i32 %shr13, i32* %i, align 4
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 2
  %24 = load double, double* %b, align 8
  %mul14 = fmul double %24, 2.550000e+02
  %25 = load i32, i32* %i, align 4
  %and15 = and i32 %25, 255
  %conv16 = sitofp i32 %and15 to double
  %div17 = fdiv double %conv16, 2.560000e+02
  %add18 = fadd double %mul14, %div17
  %conv19 = fptoui double %add18 to i8
  %26 = load i8*, i8** %dest, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %dest, align 8
  store i8 %conv19, i8* %26, align 1
  %27 = load i32, i32* %i, align 4
  %shr21 = ashr i32 %27, 8
  store i32 %shr21, i32* %i, align 4
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %28, i32 0, i32 3
  %29 = load double, double* %a, align 8
  %mul22 = fmul double %29, 2.550000e+02
  %30 = load i32, i32* %i, align 4
  %and23 = and i32 %30, 255
  %conv24 = sitofp i32 %and23 to double
  %div25 = fdiv double %conv24, 2.560000e+02
  %add26 = fadd double %mul22, %div25
  %conv27 = fptoui double %add26 to i8
  %31 = load i8*, i8** %dest, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr28, i8** %dest, align 8
  store i8 %conv27, i8* %31, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r29 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %32, i32 0, i32 0
  %33 = load double, double* %r29, align 8
  %mul30 = fmul double %33, 2.550000e+02
  %add31 = fadd double %mul30, 5.000000e-01
  %conv32 = fptosi double %add31 to i32
  %conv33 = trunc i32 %conv32 to i8
  %34 = load i8*, i8** %dest, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr34, i8** %dest, align 8
  store i8 %conv33, i8* %34, align 1
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g35 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 1
  %36 = load double, double* %g35, align 8
  %mul36 = fmul double %36, 2.550000e+02
  %add37 = fadd double %mul36, 5.000000e-01
  %conv38 = fptosi double %add37 to i32
  %conv39 = trunc i32 %conv38 to i8
  %37 = load i8*, i8** %dest, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr40, i8** %dest, align 8
  store i8 %conv39, i8* %37, align 1
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b41 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 2
  %39 = load double, double* %b41, align 8
  %mul42 = fmul double %39, 2.550000e+02
  %add43 = fadd double %mul42, 5.000000e-01
  %conv44 = fptosi double %add43 to i32
  %conv45 = trunc i32 %conv44 to i8
  %40 = load i8*, i8** %dest, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr46, i8** %dest, align 8
  store i8 %conv45, i8* %40, align 1
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a47 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 3
  %42 = load double, double* %a47, align 8
  %mul48 = fmul double %42, 2.550000e+02
  %add49 = fadd double %mul48, 5.000000e-01
  %conv50 = fptosi double %add49 to i32
  %conv51 = trunc i32 %conv50 to i8
  %43 = load i8*, i8** %dest, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr52, i8** %dest, align 8
  store i8 %conv51, i8* %43, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.90

if.else.53:                                       ; preds = %entry
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call54 = call double @gimp_rgb_luminance(%struct._GimpRGB* %44)
  store double %call54, double* %gray, align 8
  %45 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %dither_rand55 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %45, i32 0, i32 4
  %46 = load %struct._GRand*, %struct._GRand** %dither_rand55, align 8
  %tobool56 = icmp ne %struct._GRand* %46, null
  br i1 %tobool56, label %if.then.57, label %if.else.77

if.then.57:                                       ; preds = %if.else.53
  %47 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %dither_rand59 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %47, i32 0, i32 4
  %48 = load %struct._GRand*, %struct._GRand** %dither_rand59, align 8
  %call60 = call i32 @g_rand_int(%struct._GRand* %48)
  store i32 %call60, i32* %i58, align 4
  %49 = load double, double* %gray, align 8
  %mul61 = fmul double %49, 2.550000e+02
  %50 = load i32, i32* %i58, align 4
  %and62 = and i32 %50, 255
  %conv63 = sitofp i32 %and62 to double
  %div64 = fdiv double %conv63, 2.560000e+02
  %add65 = fadd double %mul61, %div64
  %conv66 = fptoui double %add65 to i8
  %51 = load i8*, i8** %dest, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr67, i8** %dest, align 8
  store i8 %conv66, i8* %51, align 1
  %52 = load i32, i32* %i58, align 4
  %shr68 = ashr i32 %52, 8
  store i32 %shr68, i32* %i58, align 4
  %53 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a69 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %53, i32 0, i32 3
  %54 = load double, double* %a69, align 8
  %mul70 = fmul double %54, 2.550000e+02
  %55 = load i32, i32* %i58, align 4
  %and71 = and i32 %55, 255
  %conv72 = sitofp i32 %and71 to double
  %div73 = fdiv double %conv72, 2.560000e+02
  %add74 = fadd double %mul70, %div73
  %conv75 = fptoui double %add74 to i8
  %56 = load i8*, i8** %dest, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr76, i8** %dest, align 8
  store i8 %conv75, i8* %56, align 1
  br label %if.end.89

if.else.77:                                       ; preds = %if.else.53
  %57 = load double, double* %gray, align 8
  %mul78 = fmul double %57, 2.550000e+02
  %add79 = fadd double %mul78, 5.000000e-01
  %conv80 = fptosi double %add79 to i32
  %conv81 = trunc i32 %conv80 to i8
  %58 = load i8*, i8** %dest, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr82, i8** %dest, align 8
  store i8 %conv81, i8* %58, align 1
  %59 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a83 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %59, i32 0, i32 3
  %60 = load double, double* %a83, align 8
  %mul84 = fmul double %60, 2.550000e+02
  %add85 = fadd double %mul84, 5.000000e-01
  %conv86 = fptosi double %add85 to i32
  %conv87 = trunc i32 %conv86 to i8
  %61 = load i8*, i8** %dest, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr88, i8** %dest, align 8
  store i8 %conv87, i8* %61, align 1
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.77, %if.then.57
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end
  %62 = load i32, i32* %x.addr, align 4
  %63 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %width = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %63, i32 0, i32 3
  %64 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %64, 1
  %cmp91 = icmp eq i32 %62, %sub
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.90
  %65 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %PR = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %65, i32 0, i32 0
  %66 = load %struct._PixelRegion*, %struct._PixelRegion** %PR, align 8
  %67 = load i32, i32* %y.addr, align 4
  %68 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %width94 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %68, i32 0, i32 3
  %69 = load i32, i32* %width94, align 4
  %70 = load %struct.PutPixelData*, %struct.PutPixelData** %ppd, align 8
  %row_data95 = getelementptr inbounds %struct.PutPixelData, %struct.PutPixelData* %70, i32 0, i32 1
  %71 = load i8*, i8** %row_data95, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %66, i32 0, i32 %67, i32 %69, i8* %71)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.90
  ret void
}

declare void @gimp_progress_update_and_flush(i32, i32, i32, i8*) #3

declare void @g_rand_free(%struct._GRand*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gradient_fill_single_region_rgb_dither(%struct.RenderBlendData* %rbd, %struct._PixelRegion* %PR) #0 {
entry:
  %rbd.addr = alloca %struct.RenderBlendData*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %dither_rand = alloca %struct._GRand*, align 8
  %dest = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %i = alloca i32, align 4
  store %struct.RenderBlendData* %rbd, %struct.RenderBlendData** %rbd.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %0 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %seed = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %0, i32 0, i32 13
  %1 = load %struct._GRand*, %struct._GRand** %seed, align 8
  %call = call i32 @g_rand_int(%struct._GRand* %1)
  %call1 = call %struct._GRand* @g_rand_new_with_seed(i32 %call)
  store %struct._GRand* %call1, %struct._GRand** %dither_rand, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 6
  %5 = load i32, i32* %x, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 8
  %7 = load i32, i32* %w, align 4
  %add = add nsw i32 %5, %7
  store i32 %add, i32* %endx, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 7
  %9 = load i32, i32* %y, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 9
  %11 = load i32, i32* %h, align 4
  %add2 = add nsw i32 %9, %11
  store i32 %add2, i32* %endy, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 7
  %13 = load i32, i32* %y5, align 4
  store i32 %13, i32* %y4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %14 = load i32, i32* %y4, align 4
  %15 = load i32, i32* %endy, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 6
  %17 = load i32, i32* %x6, align 4
  store i32 %17, i32* %x3, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x3, align 4
  %19 = load i32, i32* %endx, align 4
  %cmp8 = icmp slt i32 %18, %19
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %20 = load %struct._GRand*, %struct._GRand** %dither_rand, align 8
  %call10 = call i32 @g_rand_int(%struct._GRand* %20)
  store i32 %call10, i32* %i, align 4
  %21 = load i32, i32* %x3, align 4
  %conv = sitofp i32 %21 to double
  %22 = load i32, i32* %y4, align 4
  %conv11 = sitofp i32 %22 to double
  %23 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %24 = bitcast %struct.RenderBlendData* %23 to i8*
  call void @gradient_render_pixel(double %conv, double %conv11, %struct._GimpRGB* %color, i8* %24)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %25 = load double, double* %r, align 8
  %mul = fmul double %25, 2.550000e+02
  %26 = load i32, i32* %i, align 4
  %and = and i32 %26, 255
  %conv12 = sitofp i32 %and to double
  %div = fdiv double %conv12, 2.560000e+02
  %add13 = fadd double %mul, %div
  %conv14 = fptoui double %add13 to i8
  %27 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv14, i8* %27, align 1
  %28 = load i32, i32* %i, align 4
  %shr = ashr i32 %28, 8
  store i32 %shr, i32* %i, align 4
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %29 = load double, double* %g, align 8
  %mul15 = fmul double %29, 2.550000e+02
  %30 = load i32, i32* %i, align 4
  %and16 = and i32 %30, 255
  %conv17 = sitofp i32 %and16 to double
  %div18 = fdiv double %conv17, 2.560000e+02
  %add19 = fadd double %mul15, %div18
  %conv20 = fptoui double %add19 to i8
  %31 = load i8*, i8** %dest, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr21, i8** %dest, align 8
  store i8 %conv20, i8* %31, align 1
  %32 = load i32, i32* %i, align 4
  %shr22 = ashr i32 %32, 8
  store i32 %shr22, i32* %i, align 4
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %33 = load double, double* %b, align 8
  %mul23 = fmul double %33, 2.550000e+02
  %34 = load i32, i32* %i, align 4
  %and24 = and i32 %34, 255
  %conv25 = sitofp i32 %and24 to double
  %div26 = fdiv double %conv25, 2.560000e+02
  %add27 = fadd double %mul23, %div26
  %conv28 = fptoui double %add27 to i8
  %35 = load i8*, i8** %dest, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %dest, align 8
  store i8 %conv28, i8* %35, align 1
  %36 = load i32, i32* %i, align 4
  %shr30 = ashr i32 %36, 8
  store i32 %shr30, i32* %i, align 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %37 = load double, double* %a, align 8
  %mul31 = fmul double %37, 2.550000e+02
  %38 = load i32, i32* %i, align 4
  %and32 = and i32 %38, 255
  %conv33 = sitofp i32 %and32 to double
  %div34 = fdiv double %conv33, 2.560000e+02
  %add35 = fadd double %mul31, %div34
  %conv36 = fptoui double %add35 to i8
  %39 = load i8*, i8** %dest, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr37, i8** %dest, align 8
  store i8 %conv36, i8* %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %40 = load i32, i32* %x3, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %x3, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %41 = load i32, i32* %y4, align 4
  %inc39 = add nsw i32 %41, 1
  store i32 %inc39, i32* %y4, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %42 = load %struct._GRand*, %struct._GRand** %dither_rand, align 8
  call void @g_rand_free(%struct._GRand* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_fill_single_region_gray_dither(%struct.RenderBlendData* %rbd, %struct._PixelRegion* %PR) #0 {
entry:
  %rbd.addr = alloca %struct.RenderBlendData*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %dither_rand = alloca %struct._GRand*, align 8
  %dest = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %gray = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.RenderBlendData* %rbd, %struct.RenderBlendData** %rbd.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %0 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %seed = getelementptr inbounds %struct.RenderBlendData, %struct.RenderBlendData* %0, i32 0, i32 13
  %1 = load %struct._GRand*, %struct._GRand** %seed, align 8
  %call = call i32 @g_rand_int(%struct._GRand* %1)
  %call1 = call %struct._GRand* @g_rand_new_with_seed(i32 %call)
  store %struct._GRand* %call1, %struct._GRand** %dither_rand, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %dest, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 6
  %5 = load i32, i32* %x, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 8
  %7 = load i32, i32* %w, align 4
  %add = add nsw i32 %5, %7
  store i32 %add, i32* %endx, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 7
  %9 = load i32, i32* %y, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 9
  %11 = load i32, i32* %h, align 4
  %add2 = add nsw i32 %9, %11
  store i32 %add2, i32* %endy, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 7
  %13 = load i32, i32* %y5, align 4
  store i32 %13, i32* %y4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %14 = load i32, i32* %y4, align 4
  %15 = load i32, i32* %endy, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x6 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 6
  %17 = load i32, i32* %x6, align 4
  store i32 %17, i32* %x3, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %x3, align 4
  %19 = load i32, i32* %endx, align 4
  %cmp8 = icmp slt i32 %18, %19
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %20 = load %struct._GRand*, %struct._GRand** %dither_rand, align 8
  %call10 = call i32 @g_rand_int(%struct._GRand* %20)
  store i32 %call10, i32* %i, align 4
  %21 = load i32, i32* %x3, align 4
  %conv = sitofp i32 %21 to double
  %22 = load i32, i32* %y4, align 4
  %conv11 = sitofp i32 %22 to double
  %23 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %24 = bitcast %struct.RenderBlendData* %23 to i8*
  call void @gradient_render_pixel(double %conv, double %conv11, %struct._GimpRGB* %color, i8* %24)
  %call12 = call double @gimp_rgb_luminance(%struct._GimpRGB* %color)
  store double %call12, double* %gray, align 8
  %25 = load double, double* %gray, align 8
  %mul = fmul double %25, 2.550000e+02
  %26 = load i32, i32* %i, align 4
  %and = and i32 %26, 255
  %conv13 = sitofp i32 %and to double
  %div = fdiv double %conv13, 2.560000e+02
  %add14 = fadd double %mul, %div
  %conv15 = fptoui double %add14 to i8
  %27 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv15, i8* %27, align 1
  %28 = load i32, i32* %i, align 4
  %shr = ashr i32 %28, 8
  store i32 %shr, i32* %i, align 4
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %29 = load double, double* %a, align 8
  %mul16 = fmul double %29, 2.550000e+02
  %30 = load i32, i32* %i, align 4
  %and17 = and i32 %30, 255
  %conv18 = sitofp i32 %and17 to double
  %div19 = fdiv double %conv18, 2.560000e+02
  %add20 = fadd double %mul16, %div19
  %conv21 = fptoui double %add20 to i8
  %31 = load i8*, i8** %dest, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr22, i8** %dest, align 8
  store i8 %conv21, i8* %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %32 = load i32, i32* %x3, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %x3, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %33 = load i32, i32* %y4, align 4
  %inc24 = add nsw i32 %33, 1
  store i32 %inc24, i32* %y4, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %34 = load %struct._GRand*, %struct._GRand** %dither_rand, align 8
  call void @g_rand_free(%struct._GRand* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_fill_single_region_rgb(%struct.RenderBlendData* %rbd, %struct._PixelRegion* %PR) #0 {
entry:
  %rbd.addr = alloca %struct.RenderBlendData*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %dest = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct.RenderBlendData* %rbd, %struct.RenderBlendData** %rbd.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 6
  %3 = load i32, i32* %x, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %endx, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 7
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 9
  %9 = load i32, i32* %h, align 4
  %add1 = add nsw i32 %7, %9
  store i32 %add1, i32* %endy, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 7
  %11 = load i32, i32* %y4, align 4
  store i32 %11, i32* %y3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %12 = load i32, i32* %y3, align 4
  %13 = load i32, i32* %endy, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 6
  %15 = load i32, i32* %x5, align 4
  store i32 %15, i32* %x2, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %endx, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %x2, align 4
  %conv = sitofp i32 %18 to double
  %19 = load i32, i32* %y3, align 4
  %conv9 = sitofp i32 %19 to double
  %20 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %21 = bitcast %struct.RenderBlendData* %20 to i8*
  call void @gradient_render_pixel(double %conv, double %conv9, %struct._GimpRGB* %color, i8* %21)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %22 = load double, double* %r, align 8
  %mul = fmul double %22, 2.550000e+02
  %add10 = fadd double %mul, 5.000000e-01
  %conv11 = fptosi double %add10 to i32
  %conv12 = trunc i32 %conv11 to i8
  %23 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %conv12, i8* %23, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %24 = load double, double* %g, align 8
  %mul13 = fmul double %24, 2.550000e+02
  %add14 = fadd double %mul13, 5.000000e-01
  %conv15 = fptosi double %add14 to i32
  %conv16 = trunc i32 %conv15 to i8
  %25 = load i8*, i8** %dest, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %dest, align 8
  store i8 %conv16, i8* %25, align 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %26 = load double, double* %b, align 8
  %mul18 = fmul double %26, 2.550000e+02
  %add19 = fadd double %mul18, 5.000000e-01
  %conv20 = fptosi double %add19 to i32
  %conv21 = trunc i32 %conv20 to i8
  %27 = load i8*, i8** %dest, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr22, i8** %dest, align 8
  store i8 %conv21, i8* %27, align 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %28 = load double, double* %a, align 8
  %mul23 = fmul double %28, 2.550000e+02
  %add24 = fadd double %mul23, 5.000000e-01
  %conv25 = fptosi double %add24 to i32
  %conv26 = trunc i32 %conv25 to i8
  %29 = load i8*, i8** %dest, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr27, i8** %dest, align 8
  store i8 %conv26, i8* %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %30 = load i32, i32* %x2, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %x2, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %31 = load i32, i32* %y3, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %y3, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_fill_single_region_gray(%struct.RenderBlendData* %rbd, %struct._PixelRegion* %PR) #0 {
entry:
  %rbd.addr = alloca %struct.RenderBlendData*, align 8
  %PR.addr = alloca %struct._PixelRegion*, align 8
  %dest = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct.RenderBlendData* %rbd, %struct.RenderBlendData** %rbd.addr, align 8
  store %struct._PixelRegion* %PR, %struct._PixelRegion** %PR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %dest, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 6
  %3 = load i32, i32* %x, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %endx, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 7
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 9
  %9 = load i32, i32* %h, align 4
  %add1 = add nsw i32 %7, %9
  store i32 %add1, i32* %endy, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %y4 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 7
  %11 = load i32, i32* %y4, align 4
  store i32 %11, i32* %y3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %12 = load i32, i32* %y3, align 4
  %13 = load i32, i32* %endy, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %PR.addr, align 8
  %x5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 6
  %15 = load i32, i32* %x5, align 4
  store i32 %15, i32* %x2, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %endx, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %x2, align 4
  %conv = sitofp i32 %18 to double
  %19 = load i32, i32* %y3, align 4
  %conv9 = sitofp i32 %19 to double
  %20 = load %struct.RenderBlendData*, %struct.RenderBlendData** %rbd.addr, align 8
  %21 = bitcast %struct.RenderBlendData* %20 to i8*
  call void @gradient_render_pixel(double %conv, double %conv9, %struct._GimpRGB* %color, i8* %21)
  %call = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %color)
  %22 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %call, i8* %22, align 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %23 = load double, double* %a, align 8
  %mul = fmul double %23, 2.550000e+02
  %add10 = fadd double %mul, 5.000000e-01
  %conv11 = fptosi double %add10 to i32
  %conv12 = trunc i32 %conv11 to i8
  %24 = load i8*, i8** %dest, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr13, i8** %dest, align 8
  store i8 %conv12, i8* %24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %25 = load i32, i32* %x2, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x2, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %26 = load i32, i32* %y3, align 4
  %inc15 = add nsw i32 %26, 1
  store i32 %inc15, i32* %y3, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare void @pixel_regions_process_parallel_progress(void ()*, i8*, void (i8*, double)*, i8*, i32, ...) #3

declare void @g_object_unref(i8*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare void @extract_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare float @shapeburst_region(%struct._PixelRegion*, %struct._PixelRegion*, void (i32, i32, i32, i8*)*, i8*) #3

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #3

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #3

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_linear_factor(double %dist, double* %vec, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %vec.addr = alloca double*, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double* %vec, double** %vec.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %offset.addr, align 8
  %div = fdiv double %1, 1.000000e+02
  store double %div, double* %offset.addr, align 8
  %2 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %x.addr, align 8
  %mul = fmul double %3, %4
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %5, i64 1
  %6 = load double, double* %arrayidx1, align 8
  %7 = load double, double* %y.addr, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  store double %add, double* %r, align 8
  %8 = load double, double* %r, align 8
  %9 = load double, double* %dist.addr, align 8
  %div3 = fdiv double %8, %9
  store double %div3, double* %rat, align 8
  %10 = load double, double* %rat, align 8
  %cmp4 = fcmp oge double %10, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %11 = load double, double* %rat, align 8
  %12 = load double, double* %offset.addr, align 8
  %cmp5 = fcmp olt double %11, %12
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store double 0.000000e+00, double* %retval
  br label %return

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load double, double* %offset.addr, align 8
  %cmp8 = fcmp oeq double %13, 1.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %14 = load double, double* %rat, align 8
  %cmp10 = fcmp oge double %14, 1.000000e+00
  %cond = select i1 %cmp10, double 1.000000e+00, double 0.000000e+00
  store double %cond, double* %retval
  br label %return

if.else.11:                                       ; preds = %if.else.7
  %15 = load double, double* %rat, align 8
  %cmp12 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.11
  %16 = load double, double* %rat, align 8
  %17 = load double, double* %offset.addr, align 8
  %sub = fsub double 1.000000e+00, %17
  %div14 = fdiv double %16, %sub
  store double %div14, double* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.11
  %18 = load double, double* %rat, align 8
  %19 = load double, double* %offset.addr, align 8
  %sub16 = fsub double %18, %19
  %20 = load double, double* %offset.addr, align 8
  %sub17 = fsub double 1.000000e+00, %20
  %div18 = fdiv double %sub16, %sub17
  store double %div18, double* %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.13, %if.then.9, %if.then.6, %if.then
  %21 = load double, double* %retval
  ret double %21
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_bilinear_factor(double %dist, double* %vec, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %vec.addr = alloca double*, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double* %vec, double** %vec.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %offset.addr, align 8
  %div = fdiv double %1, 1.000000e+02
  store double %div, double* %offset.addr, align 8
  %2 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %x.addr, align 8
  %mul = fmul double %3, %4
  %5 = load double*, double** %vec.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %5, i64 1
  %6 = load double, double* %arrayidx1, align 8
  %7 = load double, double* %y.addr, align 8
  %mul2 = fmul double %6, %7
  %add = fadd double %mul, %mul2
  store double %add, double* %r, align 8
  %8 = load double, double* %r, align 8
  %9 = load double, double* %dist.addr, align 8
  %div3 = fdiv double %8, %9
  store double %div3, double* %rat, align 8
  %10 = load double, double* %rat, align 8
  %call = call double @fabs(double %10) #7
  %11 = load double, double* %offset.addr, align 8
  %cmp4 = fcmp olt double %call, %11
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store double 0.000000e+00, double* %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %12 = load double, double* %offset.addr, align 8
  %cmp7 = fcmp oeq double %12, 1.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.6
  %13 = load double, double* %rat, align 8
  %cmp9 = fcmp oeq double %13, 1.000000e+00
  %cond = select i1 %cmp9, double 1.000000e+00, double 0.000000e+00
  store double %cond, double* %retval
  br label %return

if.else.10:                                       ; preds = %if.else.6
  %14 = load double, double* %rat, align 8
  %call11 = call double @fabs(double %14) #7
  %15 = load double, double* %offset.addr, align 8
  %sub = fsub double %call11, %15
  %16 = load double, double* %offset.addr, align 8
  %sub12 = fsub double 1.000000e+00, %16
  %div13 = fdiv double %sub, %sub12
  store double %div13, double* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.8, %if.then.5, %if.then
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_radial_factor(double %dist, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %offset.addr, align 8
  %div = fdiv double %1, 1.000000e+02
  store double %div, double* %offset.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %mul = fmul double %2, %3
  %4 = load double, double* %y.addr, align 8
  %5 = load double, double* %y.addr, align 8
  %mul1 = fmul double %4, %5
  %add = fadd double %mul, %mul1
  %call = call double @sqrt(double %add) #4
  store double %call, double* %r, align 8
  %6 = load double, double* %r, align 8
  %7 = load double, double* %dist.addr, align 8
  %div2 = fdiv double %6, %7
  store double %div2, double* %rat, align 8
  %8 = load double, double* %rat, align 8
  %9 = load double, double* %offset.addr, align 8
  %cmp3 = fcmp olt double %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store double 0.000000e+00, double* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %10 = load double, double* %offset.addr, align 8
  %cmp6 = fcmp oeq double %10, 1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else.5
  %11 = load double, double* %rat, align 8
  %cmp8 = fcmp oge double %11, 1.000000e+00
  %cond = select i1 %cmp8, double 1.000000e+00, double 0.000000e+00
  store double %cond, double* %retval
  br label %return

if.else.9:                                        ; preds = %if.else.5
  %12 = load double, double* %rat, align 8
  %13 = load double, double* %offset.addr, align 8
  %sub = fsub double %12, %13
  %14 = load double, double* %offset.addr, align 8
  %sub10 = fsub double 1.000000e+00, %14
  %div11 = fdiv double %sub, %sub10
  store double %div11, double* %retval
  br label %return

return:                                           ; preds = %if.else.9, %if.then.7, %if.then.4, %if.then
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_square_factor(double %dist, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %offset.addr, align 8
  %div = fdiv double %1, 1.000000e+02
  store double %div, double* %offset.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %conv = fptosi double %2 to i32
  %call = call i32 @abs(i32 %conv) #7
  %3 = load double, double* %y.addr, align 8
  %conv1 = fptosi double %3 to i32
  %call2 = call i32 @abs(i32 %conv1) #7
  %cmp3 = icmp sgt i32 %call, %call2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %4 = load double, double* %x.addr, align 8
  %conv5 = fptosi double %4 to i32
  %call6 = call i32 @abs(i32 %conv5) #7
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %5 = load double, double* %y.addr, align 8
  %conv7 = fptosi double %5 to i32
  %call8 = call i32 @abs(i32 %conv7) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ %call8, %cond.false ]
  %conv9 = sitofp i32 %cond to double
  store double %conv9, double* %r, align 8
  %6 = load double, double* %r, align 8
  %7 = load double, double* %dist.addr, align 8
  %div10 = fdiv double %6, %7
  store double %div10, double* %rat, align 8
  %8 = load double, double* %rat, align 8
  %9 = load double, double* %offset.addr, align 8
  %cmp11 = fcmp olt double %8, %9
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %cond.end
  store double 0.000000e+00, double* %retval
  br label %return

if.else.14:                                       ; preds = %cond.end
  %10 = load double, double* %offset.addr, align 8
  %cmp15 = fcmp oeq double %10, 1.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %if.else.14
  %11 = load double, double* %rat, align 8
  %cmp18 = fcmp oge double %11, 1.000000e+00
  %cond20 = select i1 %cmp18, double 1.000000e+00, double 0.000000e+00
  store double %cond20, double* %retval
  br label %return

if.else.21:                                       ; preds = %if.else.14
  %12 = load double, double* %rat, align 8
  %13 = load double, double* %offset.addr, align 8
  %sub = fsub double %12, %13
  %14 = load double, double* %offset.addr, align 8
  %sub22 = fsub double 1.000000e+00, %14
  %div23 = fdiv double %sub, %sub22
  store double %div23, double* %retval
  br label %return

return:                                           ; preds = %if.else.21, %if.then.17, %if.then.13, %if.then
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_conical_sym_factor(double %dist, double* %axis, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %axis.addr = alloca double*, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %vec = alloca [2 x double], align 16
  %r = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double* %axis, double** %axis.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load double, double* %y.addr, align 8
  %cmp2 = fcmp une double %2, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else.31

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %mul = fmul double %3, %4
  %5 = load double, double* %y.addr, align 8
  %6 = load double, double* %y.addr, align 8
  %mul4 = fmul double %5, %6
  %add = fadd double %mul, %mul4
  %call = call double @sqrt(double %add) #4
  store double %call, double* %r, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %r, align 8
  %div = fdiv double %7, %8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  store double %div, double* %arrayidx, align 8
  %9 = load double, double* %y.addr, align 8
  %10 = load double, double* %r, align 8
  %div5 = fdiv double %9, %10
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  store double %div5, double* %arrayidx6, align 8
  %11 = load double*, double** %axis.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %11, i64 0
  %12 = load double, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 0
  %13 = load double, double* %arrayidx8, align 8
  %mul9 = fmul double %12, %13
  %14 = load double*, double** %axis.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %vec, i32 0, i64 1
  %16 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %15, %16
  %add13 = fadd double %mul9, %mul12
  store double %add13, double* %rat, align 8
  %17 = load double, double* %rat, align 8
  %cmp14 = fcmp ogt double %17, 1.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.3
  store double 1.000000e+00, double* %rat, align 8
  br label %if.end.19

if.else.16:                                       ; preds = %if.then.3
  %18 = load double, double* %rat, align 8
  %cmp17 = fcmp olt double %18, -1.000000e+00
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else.16
  store double -1.000000e+00, double* %rat, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.15
  %19 = load double, double* %rat, align 8
  %call20 = call double @acos(double %19) #4
  %div21 = fdiv double %call20, 0x400921FB54442D18
  store double %div21, double* %rat, align 8
  %20 = load double, double* %rat, align 8
  %21 = load double, double* %offset.addr, align 8
  %div22 = fdiv double %21, 1.000000e+01
  %add23 = fadd double %div22, 1.000000e+00
  %call24 = call double @pow(double %20, double %add23) #4
  store double %call24, double* %rat, align 8
  %22 = load double, double* %rat, align 8
  %cmp25 = fcmp ogt double %22, 1.000000e+00
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  br label %cond.end.29

cond.false:                                       ; preds = %if.end.19
  %23 = load double, double* %rat, align 8
  %cmp26 = fcmp olt double %23, 0.000000e+00
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %24 = load double, double* %rat, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi double [ 0.000000e+00, %cond.true.27 ], [ %24, %cond.false.28 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end, %cond.true
  %cond30 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond30, double* %retval
  br label %return

if.else.31:                                       ; preds = %lor.lhs.false
  store double 5.000000e-01, double* %retval
  br label %return

return:                                           ; preds = %if.else.31, %cond.end.29, %if.then
  %25 = load double, double* %retval
  ret double %25
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_conical_asym_factor(double %dist, double* %axis, double %offset, double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %axis.addr = alloca double*, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %ang0 = alloca double, align 8
  %ang1 = alloca double, align 8
  %ang = alloca double, align 8
  %rat = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double* %axis, double** %axis.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load double, double* %y.addr, align 8
  %cmp2 = fcmp une double %2, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else.19

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %3 = load double*, double** %axis.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 0
  %4 = load double, double* %arrayidx, align 8
  %5 = load double*, double** %axis.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %5, i64 1
  %6 = load double, double* %arrayidx4, align 8
  %call = call double @atan2(double %4, double %6) #4
  %add = fadd double %call, 0x400921FB54442D18
  store double %add, double* %ang0, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %y.addr, align 8
  %call5 = call double @atan2(double %7, double %8) #4
  %add6 = fadd double %call5, 0x400921FB54442D18
  store double %add6, double* %ang1, align 8
  %9 = load double, double* %ang1, align 8
  %10 = load double, double* %ang0, align 8
  %sub = fsub double %9, %10
  store double %sub, double* %ang, align 8
  %11 = load double, double* %ang, align 8
  %cmp7 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.3
  %12 = load double, double* %ang, align 8
  %add9 = fadd double %12, 0x401921FB54442D18
  store double %add9, double* %ang, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.3
  %13 = load double, double* %ang, align 8
  %div = fdiv double %13, 0x401921FB54442D18
  store double %div, double* %rat, align 8
  %14 = load double, double* %rat, align 8
  %15 = load double, double* %offset.addr, align 8
  %div10 = fdiv double %15, 1.000000e+01
  %add11 = fadd double %div10, 1.000000e+00
  %call12 = call double @pow(double %14, double %add11) #4
  store double %call12, double* %rat, align 8
  %16 = load double, double* %rat, align 8
  %cmp13 = fcmp ogt double %16, 1.000000e+00
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.17

cond.false:                                       ; preds = %if.end
  %17 = load double, double* %rat, align 8
  %cmp14 = fcmp olt double %17, 0.000000e+00
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %18 = load double, double* %rat, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ 0.000000e+00, %cond.true.15 ], [ %18, %cond.false.16 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond18, double* %retval
  br label %return

if.else.19:                                       ; preds = %lor.lhs.false
  store double 5.000000e-01, double* %retval
  br label %return

return:                                           ; preds = %if.else.19, %cond.end.17, %if.then
  %19 = load double, double* %retval
  ret double %19
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_shapeburst_angular_factor(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %tile = alloca %struct._Tile*, align 8
  %value = alloca float, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 7.000000e-01
  %cmp = fcmp ogt double %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv2 = sitofp i32 %2 to double
  %sub3 = fsub double %conv2, 7.000000e-01
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  %cmp4 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %4, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ %sub3, %cond.true ], [ %cond, %cond.end ]
  %conv10 = fptosi double %cond9 to i32
  store i32 %conv10, i32* %ix, align 4
  %5 = load double, double* %y.addr, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv11 = sitofp i32 %6 to double
  %sub12 = fsub double %conv11, 7.000000e-01
  %cmp13 = fcmp ogt double %5, %sub12
  br i1 %cmp13, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.8
  %7 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv16 = sitofp i32 %7 to double
  %sub17 = fsub double %conv16, 7.000000e-01
  br label %cond.end.25

cond.false.18:                                    ; preds = %cond.end.8
  %8 = load double, double* %y.addr, align 8
  %cmp19 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %y.addr, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ 0.000000e+00, %cond.true.21 ], [ %9, %cond.false.22 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.15
  %cond26 = phi double [ %sub17, %cond.true.15 ], [ %cond24, %cond.end.23 ]
  %conv27 = fptosi double %cond26 to i32
  store i32 %conv27, i32* %iy, align 4
  %10 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %11 = load i32, i32* %ix, align 4
  %12 = load i32, i32* %iy, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %10, i32 %11, i32 %12, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %13 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %14 = load i32, i32* %ix, align 4
  %15 = load i32, i32* %iy, align 4
  %call28 = call i8* @tile_data_pointer(%struct._Tile* %13, i32 %14, i32 %15)
  %16 = bitcast i8* %call28 to float*
  %17 = load float, float* %16, align 4
  %conv29 = fpext float %17 to double
  %sub30 = fsub double 1.000000e+00, %conv29
  %conv31 = fptrunc double %sub30 to float
  store float %conv31, float* %value, align 4
  %18 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %18, i32 0)
  %19 = load float, float* %value, align 4
  %conv32 = fpext float %19 to double
  ret double %conv32
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_shapeburst_spherical_factor(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %tile = alloca %struct._Tile*, align 8
  %value = alloca float, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 7.000000e-01
  %cmp = fcmp ogt double %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv2 = sitofp i32 %2 to double
  %sub3 = fsub double %conv2, 7.000000e-01
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  %cmp4 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %4, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ %sub3, %cond.true ], [ %cond, %cond.end ]
  %conv10 = fptosi double %cond9 to i32
  store i32 %conv10, i32* %ix, align 4
  %5 = load double, double* %y.addr, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv11 = sitofp i32 %6 to double
  %sub12 = fsub double %conv11, 7.000000e-01
  %cmp13 = fcmp ogt double %5, %sub12
  br i1 %cmp13, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.8
  %7 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv16 = sitofp i32 %7 to double
  %sub17 = fsub double %conv16, 7.000000e-01
  br label %cond.end.25

cond.false.18:                                    ; preds = %cond.end.8
  %8 = load double, double* %y.addr, align 8
  %cmp19 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %y.addr, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ 0.000000e+00, %cond.true.21 ], [ %9, %cond.false.22 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.15
  %cond26 = phi double [ %sub17, %cond.true.15 ], [ %cond24, %cond.end.23 ]
  %conv27 = fptosi double %cond26 to i32
  store i32 %conv27, i32* %iy, align 4
  %10 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %11 = load i32, i32* %ix, align 4
  %12 = load i32, i32* %iy, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %10, i32 %11, i32 %12, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %13 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %14 = load i32, i32* %ix, align 4
  %15 = load i32, i32* %iy, align 4
  %call28 = call i8* @tile_data_pointer(%struct._Tile* %13, i32 %14, i32 %15)
  %16 = bitcast i8* %call28 to float*
  %17 = load float, float* %16, align 4
  store float %17, float* %value, align 4
  %18 = load float, float* %value, align 4
  %conv29 = fpext float %18 to double
  %mul = fmul double 0x3FF921FB54442D18, %conv29
  %call30 = call double @sin(double %mul) #4
  %sub31 = fsub double 1.000000e+00, %call30
  %conv32 = fptrunc double %sub31 to float
  store float %conv32, float* %value, align 4
  %19 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %19, i32 0)
  %20 = load float, float* %value, align 4
  %conv33 = fpext float %20 to double
  ret double %conv33
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_shapeburst_dimpled_factor(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %tile = alloca %struct._Tile*, align 8
  %value = alloca float, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 7.000000e-01
  %cmp = fcmp ogt double %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 8), align 4
  %conv2 = sitofp i32 %2 to double
  %sub3 = fsub double %conv2, 7.000000e-01
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %3 = load double, double* %x.addr, align 8
  %cmp4 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi double [ 0.000000e+00, %cond.true.6 ], [ %4, %cond.false.7 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi double [ %sub3, %cond.true ], [ %cond, %cond.end ]
  %conv10 = fptosi double %cond9 to i32
  store i32 %conv10, i32* %ix, align 4
  %5 = load double, double* %y.addr, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv11 = sitofp i32 %6 to double
  %sub12 = fsub double %conv11, 7.000000e-01
  %cmp13 = fcmp ogt double %5, %sub12
  br i1 %cmp13, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.8
  %7 = load i32, i32* getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 9), align 4
  %conv16 = sitofp i32 %7 to double
  %sub17 = fsub double %conv16, 7.000000e-01
  br label %cond.end.25

cond.false.18:                                    ; preds = %cond.end.8
  %8 = load double, double* %y.addr, align 8
  %cmp19 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.18
  %9 = load double, double* %y.addr, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi double [ 0.000000e+00, %cond.true.21 ], [ %9, %cond.false.22 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.15
  %cond26 = phi double [ %sub17, %cond.true.15 ], [ %cond24, %cond.end.23 ]
  %conv27 = fptosi double %cond26 to i32
  store i32 %conv27, i32* %iy, align 4
  %10 = load %struct._TileManager*, %struct._TileManager** getelementptr inbounds (%struct._PixelRegion, %struct._PixelRegion* @distR, i32 0, i32 1), align 8
  %11 = load i32, i32* %ix, align 4
  %12 = load i32, i32* %iy, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %10, i32 %11, i32 %12, i32 1, i32 0)
  store %struct._Tile* %call, %struct._Tile** %tile, align 8
  %13 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %14 = load i32, i32* %ix, align 4
  %15 = load i32, i32* %iy, align 4
  %call28 = call i8* @tile_data_pointer(%struct._Tile* %13, i32 %14, i32 %15)
  %16 = bitcast i8* %call28 to float*
  %17 = load float, float* %16, align 4
  store float %17, float* %value, align 4
  %18 = load float, float* %value, align 4
  %conv29 = fpext float %18 to double
  %mul = fmul double 0x3FF921FB54442D18, %conv29
  %call30 = call double @cos(double %mul) #4
  %conv31 = fptrunc double %call30 to float
  store float %conv31, float* %value, align 4
  %19 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %19, i32 0)
  %20 = load float, float* %value, align 4
  %conv32 = fpext float %20 to double
  ret double %conv32
}

; Function Attrs: nounwind uwtable
define internal double @gradient_calc_spiral_factor(double %dist, double* %axis, double %offset, double %x, double %y, i32 %clockwise) #0 {
entry:
  %retval = alloca double, align 8
  %dist.addr = alloca double, align 8
  %axis.addr = alloca double*, align 8
  %offset.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %clockwise.addr = alloca i32, align 4
  %ang0 = alloca double, align 8
  %ang1 = alloca double, align 8
  %ang = alloca double, align 8
  %r = alloca double, align 8
  store double %dist, double* %dist.addr, align 8
  store double* %axis, double** %axis.addr, align 8
  store double %offset, double* %offset.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %clockwise, i32* %clockwise.addr, align 4
  %0 = load double, double* %dist.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %2 = load double, double* %y.addr, align 8
  %cmp2 = fcmp une double %2, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else.21

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %3 = load double*, double** %axis.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 0
  %4 = load double, double* %arrayidx, align 8
  %5 = load double*, double** %axis.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %5, i64 1
  %6 = load double, double* %arrayidx4, align 8
  %call = call double @atan2(double %4, double %6) #4
  %add = fadd double %call, 0x400921FB54442D18
  store double %add, double* %ang0, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %y.addr, align 8
  %call5 = call double @atan2(double %7, double %8) #4
  %add6 = fadd double %call5, 0x400921FB54442D18
  store double %add6, double* %ang1, align 8
  %9 = load i32, i32* %clockwise.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.then.3
  %10 = load double, double* %ang1, align 8
  %11 = load double, double* %ang0, align 8
  %sub = fsub double %10, %11
  store double %sub, double* %ang, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.then.3
  %12 = load double, double* %ang0, align 8
  %13 = load double, double* %ang1, align 8
  %sub9 = fsub double %12, %13
  store double %sub9, double* %ang, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  %14 = load double, double* %ang, align 8
  %cmp10 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %15 = load double, double* %ang, align 8
  %add12 = fadd double %15, 0x401921FB54442D18
  store double %add12, double* %ang, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %x.addr, align 8
  %mul = fmul double %16, %17
  %18 = load double, double* %y.addr, align 8
  %19 = load double, double* %y.addr, align 8
  %mul14 = fmul double %18, %19
  %add15 = fadd double %mul, %mul14
  %call16 = call double @sqrt(double %add15) #4
  %20 = load double, double* %dist.addr, align 8
  %div = fdiv double %call16, %20
  store double %div, double* %r, align 8
  %21 = load double, double* %ang, align 8
  %div17 = fdiv double %21, 0x401921FB54442D18
  %22 = load double, double* %r, align 8
  %add18 = fadd double %div17, %22
  %23 = load double, double* %offset.addr, align 8
  %add19 = fadd double %add18, %23
  %call20 = call double @fmod(double %add19, double 1.000000e+00) #4
  store double %call20, double* %retval
  br label %return

if.else.21:                                       ; preds = %lor.lhs.false
  store double 5.000000e-01, double* %retval
  br label %return

return:                                           ; preds = %if.else.21, %if.end.13, %if.then
  %24 = load double, double* %retval
  ret double %24
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #3

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #3

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind
declare double @acos(double) #6

; Function Attrs: nounwind
declare double @pow(double, double) #6

; Function Attrs: nounwind
declare double @atan2(double, double) #6

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #3

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #3

declare void @tile_release(%struct._Tile*, i32) #3

; Function Attrs: nounwind
declare double @sin(double) #6

; Function Attrs: nounwind
declare double @cos(double) #6

; Function Attrs: nounwind
declare double @fmod(double, double) #6

declare i32 @g_rand_int(%struct._GRand*) #3

declare double @gimp_rgb_luminance(%struct._GimpRGB*) #3

declare void @pixel_region_set_row(%struct._PixelRegion*, i32, i32, i32, i8*) #3

declare %struct._GRand* @g_rand_new_with_seed(i32) #3

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
