; ModuleID = './app/core/gimpdrawable-stroke.bc'
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
%struct._GimpFillOptions = type { %struct._GimpContext }
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
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpScanConvert = type opaque
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_fill_boundary = private unnamed_addr constant [28 x i8] c"gimp_drawable_fill_boundary\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"GIMP_IS_STROKE_OPTIONS (options)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"bound_segs == NULL || n_bound_segs != 0\00", align 1
@.str.5 = private unnamed_addr constant [126 x i8] c"gimp_fill_options_get_style (options) != GIMP_FILL_STYLE_PATTERN || gimp_context_get_pattern (GIMP_CONTEXT (options)) != NULL\00", align 1
@__func__.gimp_drawable_stroke_boundary = private unnamed_addr constant [30 x i8] c"gimp_drawable_stroke_boundary\00", align 1
@.str.6 = private unnamed_addr constant [146 x i8] c"gimp_fill_options_get_style (GIMP_FILL_OPTIONS (options)) != GIMP_FILL_STYLE_PATTERN || gimp_context_get_pattern (GIMP_CONTEXT (options)) != NULL\00", align 1
@__func__.gimp_drawable_fill_vectors = private unnamed_addr constant [27 x i8] c"gimp_drawable_fill_vectors\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"GIMP_IS_FILL_OPTIONS (options)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_drawable_stroke_vectors = private unnamed_addr constant [29 x i8] c"gimp_drawable_stroke_vectors\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Not enough points to stroke\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Not enough points to fill\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"undo-type\04Render Stroke\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_fill_boundary(%struct._GimpDrawable* %drawable, %struct._GimpFillOptions* %options, %struct._BoundSeg* %bound_segs, i32 %n_bound_segs, i32 %offset_x, i32 %offset_y, i32 %push_undo) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %options.addr = alloca %struct._GimpFillOptions*, align 8
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpFillOptions* %options, %struct._GimpFillOptions** %options.addr, align 8
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_fill_boundary, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.70

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_fill_boundary, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.70

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %17 = bitcast %struct._GimpFillOptions* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_stroke_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_fill_boundary, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.70

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %cmp49 = icmp eq %struct._BoundSeg* %29, null
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %30 = load i32, i32* %n_bound_segs.addr, align 4
  %cmp50 = icmp ne i32 %30, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false, %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_fill_boundary, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.70

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %31 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %call56 = call i32 @gimp_fill_options_get_style(%struct._GimpFillOptions* %31)
  %cmp57 = icmp ne i32 %call56, 1
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %do.body.55
  %32 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %33 = bitcast %struct._GimpFillOptions* %32 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_context_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call59)
  %34 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpContext*
  %call61 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %34)
  %cmp62 = icmp ne %struct._GimpPattern* %call61, null
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %lor.lhs.false.58, %do.body.55
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false.58
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_fill_boundary, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.70

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %36 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %37 = load i32, i32* %n_bound_segs.addr, align 4
  %38 = load i32, i32* %offset_x.addr, align 4
  %39 = load i32, i32* %offset_y.addr, align 4
  %call67 = call %struct._GimpScanConvert* @gimp_drawable_render_boundary(%struct._GimpDrawable* %35, %struct._BoundSeg* %36, i32 %37, i32 %38, i32 %39)
  store %struct._GimpScanConvert* %call67, %struct._GimpScanConvert** %scan_convert, align 8
  %40 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %tobool68 = icmp ne %struct._GimpScanConvert* %40, null
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.66
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %43 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %44 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_stroke_scan_convert(%struct._GimpDrawable* %41, %struct._GimpFillOptions* %42, %struct._GimpScanConvert* %43, i32 0, i32 %44)
  %45 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %45)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.9, %if.else.17, %if.else.45, %if.else.52, %if.else.64, %if.then.69, %do.end.66
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
declare i64 @gimp_stroke_options_get_type() #1

declare i32 @gimp_fill_options_get_style(%struct._GimpFillOptions*) #3

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpScanConvert* @gimp_drawable_render_boundary(%struct._GimpDrawable* %drawable, %struct._BoundSeg* %bound_segs, i32 %n_bound_segs, i32 %offset_x, i32 %offset_y) #0 {
entry:
  %retval = alloca %struct._GimpScanConvert*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %stroke_segs = alloca %struct._BoundSeg*, align 8
  %n_stroke_segs = alloca i32, align 4
  %bezier = alloca %struct.cairo_path*, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %tobool = icmp ne %struct._BoundSeg* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %2 = load i32, i32* %n_bound_segs.addr, align 4
  %call = call %struct._BoundSeg* @boundary_sort(%struct._BoundSeg* %1, i32 %2, i32* %n_stroke_segs)
  store %struct._BoundSeg* %call, %struct._BoundSeg** %stroke_segs, align 8
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %tobool1 = icmp ne %struct._BoundSeg* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %5 = load i32, i32* %n_bound_segs.addr, align 4
  %6 = load i32, i32* %n_stroke_segs, align 4
  %call3 = call %struct.cairo_path* @gimp_bezier_desc_new_from_bound_segs(%struct._BoundSeg* %4, i32 %5, i32 %6)
  store %struct.cairo_path* %call3, %struct.cairo_path** %bezier, align 8
  %7 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %8 = bitcast %struct._BoundSeg* %7 to i8*
  call void @g_free(i8* %8)
  %9 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %tobool4 = icmp ne %struct.cairo_path* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %call6 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call6, %struct._GimpScanConvert** %scan_convert, align 8
  %10 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %11 = load i32, i32* %offset_x.addr, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %offset_y.addr, align 4
  %conv7 = sitofp i32 %12 to double
  call void @gimp_bezier_desc_translate(%struct.cairo_path* %10, double %conv, double %conv7)
  %13 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %14 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  call void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert* %13, %struct.cairo_path* %14)
  %15 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %15)
  %16 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  store %struct._GimpScanConvert* %16, %struct._GimpScanConvert** %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  store %struct._GimpScanConvert* null, %struct._GimpScanConvert** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.5
  %17 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %retval
  ret %struct._GimpScanConvert* %17
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_stroke_scan_convert(%struct._GimpDrawable* %drawable, %struct._GimpFillOptions* %options, %struct._GimpScanConvert* %scan_convert, i32 %do_stroke, i32 %push_undo) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %options.addr = alloca %struct._GimpFillOptions*, align 8
  %scan_convert.addr = alloca %struct._GimpScanConvert*, align 8
  %do_stroke.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %base = alloca %struct._TileManager*, align 8
  %mask = alloca %struct._TileManager*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %bytes = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %bg = alloca [1 x i8], align 1
  %maskPR = alloca %struct._PixelRegion, align 8
  %basePR = alloca %struct._PixelRegion, align 8
  %stroke_options = alloca %struct._GimpStrokeOptions*, align 8
  %width = alloca double, align 8
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %tmp_col = alloca [4 x i8], align 1
  %col = alloca [4 x i8], align 1
  %pattern = alloca %struct._GimpPattern*, align 8
  %pat_buf = alloca %struct._TempBuf*, align 8
  %new_buf = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpFillOptions* %options, %struct._GimpFillOptions** %options.addr, align 8
  store %struct._GimpScanConvert* %scan_convert, %struct._GimpScanConvert** %scan_convert.addr, align 8
  store i32 %do_stroke, i32* %do_stroke.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpFillOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = bitcast [1 x i8]* %bg to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1, i32 1, i1 false)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %7)
  %call6 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_get_width(%struct._GimpItem* %10)
  store i32 %call9, i32* %w, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_height(%struct._GimpItem* %13)
  store i32 %call12, i32* %h, align 4
  br label %if.end.18

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %16, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %do_stroke.addr, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.18
  %18 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %19 = bitcast %struct._GimpFillOptions* %18 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_stroke_options_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %20, %struct._GimpStrokeOptions** %stroke_options, align 8
  %21 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call23 = call double @gimp_stroke_options_get_width(%struct._GimpStrokeOptions* %21)
  store double %call23, double* %width, align 8
  %22 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call24 = call i32 @gimp_stroke_options_get_unit(%struct._GimpStrokeOptions* %22)
  store i32 %call24, i32* %unit, align 4
  %23 = load i32, i32* %unit, align 4
  %cmp = icmp ne i32 %23, 0
  br i1 %cmp, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.20
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %24, double* %xres, double* %yres)
  %25 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert.addr, align 8
  %26 = load double, double* %yres, align 8
  %27 = load double, double* %xres, align 8
  %div = fdiv double %26, %27
  call void @gimp_scan_convert_set_pixel_ratio(%struct._GimpScanConvert* %25, double %div)
  %28 = load double, double* %width, align 8
  %29 = load i32, i32* %unit, align 4
  %30 = load double, double* %yres, align 8
  %call26 = call double @gimp_units_to_pixels(double %28, i32 %29, double %30)
  store double %call26, double* %width, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.20
  %31 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert.addr, align 8
  %32 = load double, double* %width, align 8
  %33 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call28 = call i32 @gimp_stroke_options_get_join_style(%struct._GimpStrokeOptions* %33)
  %34 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call29 = call i32 @gimp_stroke_options_get_cap_style(%struct._GimpStrokeOptions* %34)
  %35 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call30 = call double @gimp_stroke_options_get_miter_limit(%struct._GimpStrokeOptions* %35)
  %36 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call31 = call double @gimp_stroke_options_get_dash_offset(%struct._GimpStrokeOptions* %36)
  %37 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options, align 8
  %call32 = call %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions* %37)
  call void @gimp_scan_convert_stroke(%struct._GimpScanConvert* %31, double %32, i32 %call28, i32 %call29, double %call30, double %call31, %struct._GArray* %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.27, %if.end.18
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %h, align 4
  %call34 = call %struct._TileManager* @tile_manager_new(i32 %38, i32 %39, i32 1)
  store %struct._TileManager* %call34, %struct._TileManager** %mask, align 8
  %40 = load %struct._TileManager*, %struct._TileManager** %mask, align 8
  %41 = load i32, i32* %w, align 4
  %42 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %40, i32 0, i32 0, i32 %41, i32 %42, i32 1)
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %bg, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %maskPR, i8* %arraydecay)
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = bitcast %struct._GimpDrawable* %43 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call35)
  %45 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %45, i32* %off_x, i32* %off_y)
  %46 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert.addr, align 8
  %47 = load %struct._TileManager*, %struct._TileManager** %mask, align 8
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %48, %49
  %50 = load i32, i32* %y, align 4
  %51 = load i32, i32* %off_y, align 4
  %add37 = add nsw i32 %50, %51
  %52 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %call38 = call i32 @gimp_fill_options_get_antialias(%struct._GimpFillOptions* %52)
  call void @gimp_scan_convert_render(%struct._GimpScanConvert* %46, %struct._TileManager* %47, i32 %add, i32 %add37, i32 %call38)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call39 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %53)
  store i32 %call39, i32* %bytes, align 4
  %54 = load i32, i32* %w, align 4
  %55 = load i32, i32* %h, align 4
  %56 = load i32, i32* %bytes, align 4
  %call40 = call %struct._TileManager* @tile_manager_new(i32 %54, i32 %55, i32 %56)
  store %struct._TileManager* %call40, %struct._TileManager** %base, align 8
  %57 = load %struct._TileManager*, %struct._TileManager** %base, align 8
  %58 = load i32, i32* %w, align 4
  %59 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %basePR, %struct._TileManager* %57, i32 0, i32 0, i32 %58, i32 %59, i32 1)
  %60 = load %struct._TileManager*, %struct._TileManager** %mask, align 8
  %61 = load i32, i32* %w, align 4
  %62 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %60, i32 0, i32 0, i32 %61, i32 %62, i32 0)
  %63 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %call41 = call i32 @gimp_fill_options_get_style(%struct._GimpFillOptions* %63)
  switch i32 %call41, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.end.33
  %64 = bitcast [4 x i8]* %tmp_col to i8*
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 4, i32 1, i1 false)
  %65 = bitcast [4 x i8]* %col to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 4, i32 1, i1 false)
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %foreground = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %66, i32 0, i32 11
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 0
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %foreground, i8* %arrayidx, i8* %arrayidx42, i8* %arrayidx43)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call44 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %68)
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %67, i32 %call44, i8* %arraydecay45, i32 0, i8* %arraydecay46)
  %69 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %69, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx47, align 1
  %arraydecay48 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @color_region_mask(%struct._PixelRegion* %basePR, %struct._PixelRegion* %maskPR, i8* %arraydecay48)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.33
  %70 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call50 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %70)
  store %struct._GimpPattern* %call50, %struct._GimpPattern** %pattern, align 8
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call51 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %72)
  %73 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask52 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %73, i32 0, i32 1
  %74 = load %struct._TempBuf*, %struct._TempBuf** %mask52, align 8
  %call53 = call %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage* %71, i32 %call51, %struct._TempBuf* %74, i32* %new_buf)
  store %struct._TempBuf* %call53, %struct._TempBuf** %pat_buf, align 8
  %75 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %76 = load i32, i32* %x, align 4
  %77 = load i32, i32* %y, align 4
  call void @pattern_region(%struct._PixelRegion* %basePR, %struct._PixelRegion* %maskPR, %struct._TempBuf* %75, i32 %76, i32 %77)
  %78 = load i32, i32* %new_buf, align 4
  %tobool54 = icmp ne i32 %78, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.49
  %79 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %79)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %sw.bb.49
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.33, %if.end.56, %sw.bb
  %80 = load %struct._TileManager*, %struct._TileManager** %base, align 8
  %81 = load i32, i32* %w, align 4
  %82 = load i32, i32* %h, align 4
  call void @pixel_region_init(%struct._PixelRegion* %basePR, %struct._TileManager* %80, i32 0, i32 0, i32 %81, i32 %82, i32 0)
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %84 = load i32, i32* %push_undo.addr, align 4
  %call57 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %85 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call58 = call double @gimp_context_get_opacity(%struct._GimpContext* %85)
  %86 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call59 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %86)
  %87 = load i32, i32* %x, align 4
  %88 = load i32, i32* %y, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %83, %struct._PixelRegion* %basePR, i32 %84, i8* %call57, double %call58, i32 %call59, %struct._TileManager* null, %struct._PixelRegion* null, i32 %87, i32 %88)
  %89 = load %struct._TileManager*, %struct._TileManager** %mask, align 8
  call void @tile_manager_unref(%struct._TileManager* %89)
  %90 = load %struct._TileManager*, %struct._TileManager** %base, align 8
  call void @tile_manager_unref(%struct._TileManager* %90)
  %91 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %92 = load i32, i32* %x, align 4
  %93 = load i32, i32* %y, align 4
  %94 = load i32, i32* %w, align 4
  %95 = load i32, i32* %h, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.17
  ret void
}

declare void @gimp_scan_convert_free(%struct._GimpScanConvert*) #3

; Function Attrs: nounwind uwtable
define void @gimp_drawable_stroke_boundary(%struct._GimpDrawable* %drawable, %struct._GimpStrokeOptions* %options, %struct._BoundSeg* %bound_segs, i32 %n_bound_segs, i32 %offset_x, i32 %offset_y, i32 %push_undo) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.74

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.74

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %17 = bitcast %struct._GimpStrokeOptions* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_stroke_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.74

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %cmp49 = icmp eq %struct._BoundSeg* %29, null
  br i1 %cmp49, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.48
  %30 = load i32, i32* %n_bound_segs.addr, align 4
  %cmp50 = icmp ne i32 %30, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %lor.lhs.false, %do.body.48
  br label %if.end.53

if.else.52:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.74

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %31 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %32 = bitcast %struct._GimpStrokeOptions* %31 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_fill_options_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call56)
  %33 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpFillOptions*
  %call58 = call i32 @gimp_fill_options_get_style(%struct._GimpFillOptions* %33)
  %cmp59 = icmp ne i32 %call58, 1
  br i1 %cmp59, label %if.then.65, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %do.body.55
  %34 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %35 = bitcast %struct._GimpStrokeOptions* %34 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_context_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call61)
  %36 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpContext*
  %call63 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %36)
  %cmp64 = icmp ne %struct._GimpPattern* %call63, null
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %lor.lhs.false.60, %do.body.55
  br label %if.end.67

if.else.66:                                       ; preds = %lor.lhs.false.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.74

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %38 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %39 = load i32, i32* %n_bound_segs.addr, align 4
  %40 = load i32, i32* %offset_x.addr, align 4
  %41 = load i32, i32* %offset_y.addr, align 4
  %call69 = call %struct._GimpScanConvert* @gimp_drawable_render_boundary(%struct._GimpDrawable* %37, %struct._BoundSeg* %38, i32 %39, i32 %40, i32 %41)
  store %struct._GimpScanConvert* %call69, %struct._GimpScanConvert** %scan_convert, align 8
  %42 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %tobool70 = icmp ne %struct._GimpScanConvert* %42, null
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %do.end.68
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %45 = bitcast %struct._GimpStrokeOptions* %44 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_fill_options_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call72)
  %46 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpFillOptions*
  %47 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %48 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_stroke_scan_convert(%struct._GimpDrawable* %43, %struct._GimpFillOptions* %46, %struct._GimpScanConvert* %47, i32 1, i32 %48)
  %49 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %49)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.9, %if.else.17, %if.else.45, %if.else.52, %if.else.66, %if.then.71, %do.end.68
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_options_get_type() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_fill_vectors(%struct._GimpDrawable* %drawable, %struct._GimpFillOptions* %options, %struct._GimpVectors* %vectors, i32 %push_undo, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %options.addr = alloca %struct._GimpFillOptions*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpFillOptions* %options, %struct._GimpFillOptions** %options.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %17 = bitcast %struct._GimpFillOptions* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_fill_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %30 = bitcast %struct._GimpVectors* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_vectors_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type63, align 8
  %37 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %36, %37
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %39 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %40 = load i32, i32* %__r55, align 4
  store i32 %40, i32* %tmp70
  %41 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %call77 = call i32 @gimp_fill_options_get_style(%struct._GimpFillOptions* %42)
  %cmp78 = icmp ne i32 %call77, 1
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.76
  %43 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %44 = bitcast %struct._GimpFillOptions* %43 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_context_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call79)
  %45 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpContext*
  %call81 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %45)
  %cmp82 = icmp ne %struct._GimpPattern* %call81, null
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %lor.lhs.false, %do.body.76
  br label %if.end.85

if.else.84:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.then.83
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp88 = icmp eq %struct._GError** %46, null
  br i1 %cmp88, label %if.then.91, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %do.body.87
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %48 = load %struct._GError*, %struct._GError** %47, align 8
  %cmp90 = icmp eq %struct._GError* %48, null
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %lor.lhs.false.89, %do.body.87
  br label %if.end.93

if.else.92:                                       ; preds = %lor.lhs.false.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_vectors, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.91
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %50 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call95 = call %struct._GimpScanConvert* @gimp_drawable_render_vectors(%struct._GimpDrawable* %49, %struct._GimpVectors* %50, i32 0, %struct._GError** %51)
  store %struct._GimpScanConvert* %call95, %struct._GimpScanConvert** %scan_convert, align 8
  %52 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %tobool96 = icmp ne %struct._GimpScanConvert* %52, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %do.end.94
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = load %struct._GimpFillOptions*, %struct._GimpFillOptions** %options.addr, align 8
  %55 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %56 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_stroke_scan_convert(%struct._GimpDrawable* %53, %struct._GimpFillOptions* %54, %struct._GimpScanConvert* %55, i32 0, i32 %56)
  %57 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %57)
  store i32 1, i32* %retval
  br label %return

if.end.98:                                        ; preds = %do.end.94
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.then.97, %if.else.92, %if.else.84, %if.else.73, %if.else.45, %if.else.17, %if.else.9
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpScanConvert* @gimp_drawable_render_vectors(%struct._GimpDrawable* %drawable, %struct._GimpVectors* %vectors, i32 %do_stroke, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpScanConvert*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %do_stroke.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %bezier = alloca %struct.cairo_path*, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %do_stroke, i32* %do_stroke.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call = call %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %0)
  store %struct.cairo_path* %call, %struct.cairo_path** %bezier, align 8
  %1 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %tobool = icmp ne %struct.cairo_path* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %do_stroke.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %3 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %3, i32 0, i32 2
  %4 = load i32, i32* %num_data, align 4
  %cmp = icmp sge i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

cond.false:                                       ; preds = %land.lhs.true
  %5 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  %num_data2 = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %5, i32 0, i32 2
  %6 = load i32, i32* %num_data2, align 4
  %cmp3 = icmp sgt i32 %6, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %call4 = call %struct._GimpScanConvert* @gimp_scan_convert_new()
  store %struct._GimpScanConvert* %call4, %struct._GimpScanConvert** %scan_convert, align 8
  %7 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %8 = load %struct.cairo_path*, %struct.cairo_path** %bezier, align 8
  call void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert* %7, %struct.cairo_path* %8)
  %9 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  store %struct._GimpScanConvert* %9, %struct._GimpScanConvert** %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true, %entry
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_error_quark() #6
  %11 = load i32, i32* %do_stroke.addr, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %cond.end

cond.false.9:                                     ; preds = %if.end
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.7
  %cond = phi i8* [ %call8, %cond.true.7 ], [ %call10, %cond.false.9 ]
  call void @g_set_error_literal(%struct._GError** %10, i32 %call5, i32 0, i8* %cond)
  store %struct._GimpScanConvert* null, %struct._GimpScanConvert** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %12 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %retval
  ret %struct._GimpScanConvert* %12
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_stroke_vectors(%struct._GimpDrawable* %drawable, %struct._GimpStrokeOptions* %options, %struct._GimpVectors* %vectors, i32 %push_undo, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %scan_convert = alloca %struct._GimpScanConvert*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %17 = bitcast %struct._GimpStrokeOptions* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_stroke_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %30 = bitcast %struct._GimpVectors* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_vectors_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type63, align 8
  %37 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %36, %37
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %39 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %40 = load i32, i32* %__r55, align 4
  store i32 %40, i32* %tmp70
  %41 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %43 = bitcast %struct._GimpStrokeOptions* %42 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_fill_options_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call77)
  %44 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpFillOptions*
  %call79 = call i32 @gimp_fill_options_get_style(%struct._GimpFillOptions* %44)
  %cmp80 = icmp ne i32 %call79, 1
  br i1 %cmp80, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.76
  %45 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %46 = bitcast %struct._GimpStrokeOptions* %45 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_context_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call81)
  %47 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpContext*
  %call83 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %47)
  %cmp84 = icmp ne %struct._GimpPattern* %call83, null
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %lor.lhs.false, %do.body.76
  br label %if.end.87

if.else.86:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %48 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp90 = icmp eq %struct._GError** %48, null
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %do.body.89
  %49 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %50 = load %struct._GError*, %struct._GError** %49, align 8
  %cmp92 = icmp eq %struct._GError* %50, null
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %lor.lhs.false.91, %do.body.89
  br label %if.end.95

if.else.94:                                       ; preds = %lor.lhs.false.91
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.93
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %52 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %53 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call97 = call %struct._GimpScanConvert* @gimp_drawable_render_vectors(%struct._GimpDrawable* %51, %struct._GimpVectors* %52, i32 1, %struct._GError** %53)
  store %struct._GimpScanConvert* %call97, %struct._GimpScanConvert** %scan_convert, align 8
  %54 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %tobool98 = icmp ne %struct._GimpScanConvert* %54, null
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %do.end.96
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %56 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %57 = bitcast %struct._GimpStrokeOptions* %56 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_fill_options_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call100)
  %58 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpFillOptions*
  %59 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  %60 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_stroke_scan_convert(%struct._GimpDrawable* %55, %struct._GimpFillOptions* %58, %struct._GimpScanConvert* %59, i32 1, i32 %60)
  %61 = load %struct._GimpScanConvert*, %struct._GimpScanConvert** %scan_convert, align 8
  call void @gimp_scan_convert_free(%struct._GimpScanConvert* %61)
  store i32 1, i32* %retval
  br label %return

if.end.102:                                       ; preds = %do.end.96
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.then.99, %if.else.94, %if.else.86, %if.else.73, %if.else.45, %if.else.17, %if.else.9
  %62 = load i32, i32* %retval
  ret i32 %62
}

declare %struct._BoundSeg* @boundary_sort(%struct._BoundSeg*, i32, i32*) #3

declare %struct.cairo_path* @gimp_bezier_desc_new_from_bound_segs(%struct._BoundSeg*, i32, i32) #3

declare void @g_free(i8*) #3

declare %struct._GimpScanConvert* @gimp_scan_convert_new() #3

declare void @gimp_bezier_desc_translate(%struct.cairo_path*, double, double) #3

declare void @gimp_scan_convert_add_bezier(%struct._GimpScanConvert*, %struct.cairo_path*) #3

declare void @gimp_bezier_desc_free(%struct.cairo_path*) #3

declare %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare double @gimp_stroke_options_get_width(%struct._GimpStrokeOptions*) #3

declare i32 @gimp_stroke_options_get_unit(%struct._GimpStrokeOptions*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare void @gimp_scan_convert_set_pixel_ratio(%struct._GimpScanConvert*, double) #3

declare double @gimp_units_to_pixels(double, i32, double) #3

declare void @gimp_scan_convert_stroke(%struct._GimpScanConvert*, double, i32, i32, double, double, %struct._GArray*) #3

declare i32 @gimp_stroke_options_get_join_style(%struct._GimpStrokeOptions*) #3

declare i32 @gimp_stroke_options_get_cap_style(%struct._GimpStrokeOptions*) #3

declare double @gimp_stroke_options_get_miter_limit(%struct._GimpStrokeOptions*) #3

declare double @gimp_stroke_options_get_dash_offset(%struct._GimpStrokeOptions*) #3

declare %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @gimp_scan_convert_render(%struct._GimpScanConvert*, %struct._TileManager*, i32, i32, i32) #3

declare i32 @gimp_fill_options_get_antialias(%struct._GimpFillOptions*) #3

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #3

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #3

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare void @color_region_mask(%struct._PixelRegion*, %struct._PixelRegion*, i8*) #3

declare %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage*, i32, %struct._TempBuf*, i32*) #3

declare void @pattern_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._TempBuf*, i32, i32) #3

declare void @temp_buf_free(%struct._TempBuf*) #3

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare double @gimp_context_get_opacity(%struct._GimpContext*) #3

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

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
