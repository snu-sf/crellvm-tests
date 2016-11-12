; ModuleID = './app/paint/gimppaintcore-stroke.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
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
%struct._GError = type { i32, i32, i8* }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_paint_core_stroke = private unnamed_addr constant [23 x i8] c"gimp_paint_core_stroke\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PAINT_CORE (core)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PAINT_OPTIONS (paint_options)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"strokes != NULL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"n_strokes > 0\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_paint_core_stroke_boundary = private unnamed_addr constant [32 x i8] c"gimp_paint_core_stroke_boundary\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"bound_segs != NULL && n_bound_segs > 0\00", align 1
@default_coords = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8
@__func__.gimp_paint_core_stroke_vectors = private unnamed_addr constant [31 x i8] c"gimp_paint_core_stroke_vectors\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Not enough points to stroke\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_core_stroke(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %strokes, i32 %n_strokes, i32 %push_undo, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %strokes.addr = alloca %struct._GimpCoords*, align 8
  %n_strokes.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %strokes, %struct._GimpCoords** %strokes.addr, align 8
  store i32 %n_strokes, i32* %n_strokes.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %strokes.addr, align 8
  %cmp77 = icmp ne %struct._GimpCoords* %42, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %43 = load i32, i32* %n_strokes.addr, align 4
  %cmp83 = icmp sgt i32 %43, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.82
  br label %if.end.86

if.else.85:                                       ; preds = %do.body.82
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.84
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %do.body.88

do.body.88:                                       ; preds = %do.end.87
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp89 = icmp eq %struct._GError** %44, null
  br i1 %cmp89, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.88
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  %cmp90 = icmp eq %struct._GError* %46, null
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %lor.lhs.false, %do.body.88
  br label %if.end.93

if.else.92:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_stroke, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.91
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %47 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %strokes.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i64 0
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call95 = call i32 @gimp_paint_core_start(%struct._GimpPaintCore* %47, %struct._GimpDrawable* %48, %struct._GimpPaintOptions* %49, %struct._GimpCoords* %arrayidx, %struct._GError** %51)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.102

if.then.97:                                       ; preds = %do.end.94
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %52, i32 0, i32 5
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %strokes.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %53, i64 0
  %54 = bitcast %struct._GimpCoords* %last_coords to i8*
  %55 = bitcast %struct._GimpCoords* %arrayidx99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 64, i32 8, i1 false)
  %56 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %58 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %56, %struct._GimpDrawable* %57, %struct._GimpPaintOptions* %58, i32 0, i32 0)
  %59 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %61 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %59, %struct._GimpDrawable* %60, %struct._GimpPaintOptions* %61, i32 1, i32 0)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.97
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %n_strokes.addr, align 4
  %cmp100 = icmp slt i32 %62, %63
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom = sext i32 %67 to i64
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %strokes.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %68, i64 %idxprom
  call void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %64, %struct._GimpDrawable* %65, %struct._GimpPaintOptions* %66, %struct._GimpCoords* %arrayidx101, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %72 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %70, %struct._GimpDrawable* %71, %struct._GimpPaintOptions* %72, i32 2, i32 0)
  %73 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %75 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_paint_core_finish(%struct._GimpPaintCore* %73, %struct._GimpDrawable* %74, i32 %75)
  %76 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  call void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %76)
  store i32 1, i32* %retval
  br label %return

if.end.102:                                       ; preds = %do.end.94
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.102, %for.end, %if.else.92, %if.else.85, %if.else.79, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #1

declare i32 @gimp_paint_core_start(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_paint_core_paint(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32) #3

declare void @gimp_paint_core_interpolate(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32) #3

declare void @gimp_paint_core_finish(%struct._GimpPaintCore*, %struct._GimpDrawable*, i32) #3

declare void @gimp_paint_core_cleanup(%struct._GimpPaintCore*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_core_stroke_boundary(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %emulate_dynamics, %struct._BoundSeg* %bound_segs, i32 %n_bound_segs, i32 %offset_x, i32 %offset_y, i32 %push_undo, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %emulate_dynamics.addr = alloca i32, align 4
  %bound_segs.addr = alloca %struct._BoundSeg*, align 8
  %n_bound_segs.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %stroke_segs = alloca %struct._BoundSeg*, align 8
  %n_stroke_segs = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %coords = alloca %struct._GimpCoords*, align 8
  %initialized = alloca i32, align 4
  %n_coords = alloca i32, align 4
  %seg = alloca i32, align 4
  %s = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %emulate_dynamics, i32* %emulate_dynamics.addr, align 4
  store %struct._BoundSeg* %bound_segs, %struct._BoundSeg** %bound_segs.addr, align 8
  store i32 %n_bound_segs, i32* %n_bound_segs.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %initialized, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %cmp77 = icmp ne %struct._BoundSeg* %42, null
  br i1 %cmp77, label %land.lhs.true.78, label %if.else.81

land.lhs.true.78:                                 ; preds = %do.body.76
  %43 = load i32, i32* %n_bound_segs.addr, align 4
  %cmp79 = icmp sgt i32 %43, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true.78
  br label %if.end.82

if.else.81:                                       ; preds = %land.lhs.true.78, %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp85 = icmp eq %struct._GError** %44, null
  br i1 %cmp85, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.84
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %46 = load %struct._GError*, %struct._GError** %45, align 8
  %cmp86 = icmp eq %struct._GError* %46, null
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %lor.lhs.false, %do.body.84
  br label %if.end.89

if.else.88:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_stroke_boundary, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.87
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %47 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs.addr, align 8
  %48 = load i32, i32* %n_bound_segs.addr, align 4
  %call91 = call %struct._BoundSeg* @boundary_sort(%struct._BoundSeg* %47, i32 %48, i32* %n_stroke_segs)
  store %struct._BoundSeg* %call91, %struct._BoundSeg** %stroke_segs, align 8
  %49 = load i32, i32* %n_stroke_segs, align 4
  %cmp92 = icmp eq i32 %49, 0
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %do.end.90
  store i32 1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %do.end.90
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = bitcast %struct._GimpDrawable* %50 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_item_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call95)
  %52 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %52, i32* %off_x, i32* %off_y)
  %53 = load i32, i32* %offset_x.addr, align 4
  %54 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %54, %53
  store i32 %sub, i32* %off_x, align 4
  %55 = load i32, i32* %offset_y.addr, align 4
  %56 = load i32, i32* %off_y, align 4
  %sub97 = sub nsw i32 %56, %55
  store i32 %sub97, i32* %off_y, align 4
  %57 = load i32, i32* %n_bound_segs.addr, align 4
  %add = add nsw i32 %57, 4
  %conv = sext i32 %add to i64
  %call98 = call noalias i8* @g_malloc0_n(i64 %conv, i64 64)
  %58 = bitcast i8* %call98 to %struct._GimpCoords*
  store %struct._GimpCoords* %58, %struct._GimpCoords** %coords, align 8
  store i32 0, i32* %seg, align 4
  store i32 0, i32* %n_coords, align 4
  %59 = load i32, i32* %n_coords, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i64 %idxprom
  %61 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %62 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx99 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %62, i64 0
  %x1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx99, i32 0, i32 0
  %63 = load i32, i32* %x1, align 4
  %64 = load i32, i32* %off_x, align 4
  %sub100 = sub nsw i32 %63, %64
  %conv101 = sitofp i32 %sub100 to double
  %add102 = fadd double %conv101, 5.000000e-01
  %65 = load i32, i32* %n_coords, align 4
  %idxprom103 = sext i32 %65 to i64
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx104 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i64 %idxprom103
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx104, i32 0, i32 0
  store double %add102, double* %x, align 8
  %67 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx105 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %67, i64 0
  %y1 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx105, i32 0, i32 1
  %68 = load i32, i32* %y1, align 4
  %69 = load i32, i32* %off_y, align 4
  %sub106 = sub nsw i32 %68, %69
  %conv107 = sitofp i32 %sub106 to double
  %add108 = fadd double %conv107, 5.000000e-01
  %70 = load i32, i32* %n_coords, align 4
  %idxprom109 = sext i32 %70 to i64
  %71 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %71, i64 %idxprom109
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx110, i32 0, i32 1
  store double %add108, double* %y, align 8
  %72 = load i32, i32* %n_coords, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %n_coords, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.202, %if.end.94
  %73 = load i32, i32* %s, align 4
  %74 = load i32, i32* %n_stroke_segs, align 4
  %cmp111 = icmp slt i32 %73, %74
  br i1 %cmp111, label %for.body, label %for.end.204

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %75 = load i32, i32* %seg, align 4
  %idxprom113 = sext i32 %75 to i64
  %76 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx114 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %76, i64 %idxprom113
  %x1115 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx114, i32 0, i32 0
  %77 = load i32, i32* %x1115, align 4
  %cmp116 = icmp ne i32 %77, -1
  br i1 %cmp116, label %lor.end, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %while.cond
  %78 = load i32, i32* %seg, align 4
  %idxprom119 = sext i32 %78 to i64
  %79 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx120 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %79, i64 %idxprom119
  %x2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx120, i32 0, i32 2
  %80 = load i32, i32* %x2, align 4
  %cmp121 = icmp ne i32 %80, -1
  br i1 %cmp121, label %lor.end, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.118
  %81 = load i32, i32* %seg, align 4
  %idxprom124 = sext i32 %81 to i64
  %82 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx125 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %82, i64 %idxprom124
  %y1126 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx125, i32 0, i32 1
  %83 = load i32, i32* %y1126, align 4
  %cmp127 = icmp ne i32 %83, -1
  br i1 %cmp127, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.123
  %84 = load i32, i32* %seg, align 4
  %idxprom129 = sext i32 %84 to i64
  %85 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx130 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %85, i64 %idxprom129
  %y2 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx130, i32 0, i32 3
  %86 = load i32, i32* %y2, align 4
  %cmp131 = icmp ne i32 %86, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.123, %lor.lhs.false.118, %while.cond
  %87 = phi i1 [ true, %lor.lhs.false.123 ], [ true, %lor.lhs.false.118 ], [ true, %while.cond ], [ %cmp131, %lor.rhs ]
  br i1 %87, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %88 = load i32, i32* %n_coords, align 4
  %idxprom133 = sext i32 %88 to i64
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx134 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %89, i64 %idxprom133
  %90 = bitcast %struct._GimpCoords* %arrayidx134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %91 = load i32, i32* %seg, align 4
  %idxprom135 = sext i32 %91 to i64
  %92 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx136 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %92, i64 %idxprom135
  %x1137 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx136, i32 0, i32 0
  %93 = load i32, i32* %x1137, align 4
  %94 = load i32, i32* %off_x, align 4
  %sub138 = sub nsw i32 %93, %94
  %conv139 = sitofp i32 %sub138 to double
  %add140 = fadd double %conv139, 5.000000e-01
  %95 = load i32, i32* %n_coords, align 4
  %idxprom141 = sext i32 %95 to i64
  %96 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx142 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %96, i64 %idxprom141
  %x143 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx142, i32 0, i32 0
  store double %add140, double* %x143, align 8
  %97 = load i32, i32* %seg, align 4
  %idxprom144 = sext i32 %97 to i64
  %98 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx145 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %98, i64 %idxprom144
  %y1146 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx145, i32 0, i32 1
  %99 = load i32, i32* %y1146, align 4
  %100 = load i32, i32* %off_y, align 4
  %sub147 = sub nsw i32 %99, %100
  %conv148 = sitofp i32 %sub147 to double
  %add149 = fadd double %conv148, 5.000000e-01
  %101 = load i32, i32* %n_coords, align 4
  %idxprom150 = sext i32 %101 to i64
  %102 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx151 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %102, i64 %idxprom150
  %y152 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx151, i32 0, i32 1
  store double %add149, double* %y152, align 8
  %103 = load i32, i32* %n_coords, align 4
  %inc153 = add nsw i32 %103, 1
  store i32 %inc153, i32* %n_coords, align 4
  %104 = load i32, i32* %seg, align 4
  %inc154 = add nsw i32 %104, 1
  store i32 %inc154, i32* %seg, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %105 = load i32, i32* %n_coords, align 4
  %idxprom155 = sext i32 %105 to i64
  %106 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx156 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i64 %idxprom155
  %107 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx157 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %107, i64 0
  %108 = bitcast %struct._GimpCoords* %arrayidx156 to i8*
  %109 = bitcast %struct._GimpCoords* %arrayidx157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 64, i32 8, i1 false)
  %110 = load i32, i32* %n_coords, align 4
  %inc158 = add nsw i32 %110, 1
  store i32 %inc158, i32* %n_coords, align 4
  %111 = load i32, i32* %emulate_dynamics.addr, align 4
  %tobool159 = icmp ne i32 %111, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %while.end
  %112 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %113 = load i32, i32* %n_coords, align 4
  call void @gimp_paint_core_stroke_emulate_dynamics(%struct._GimpCoords* %112, i32 %113)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %while.end
  %114 = load i32, i32* %initialized, align 4
  %tobool162 = icmp ne i32 %114, 0
  br i1 %tobool162, label %if.then.167, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.end.161
  %115 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %116 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %117 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %118 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx164 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %118, i64 0
  %119 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call165 = call i32 @gimp_paint_core_start(%struct._GimpPaintCore* %115, %struct._GimpDrawable* %116, %struct._GimpPaintOptions* %117, %struct._GimpCoords* %arrayidx164, %struct._GError** %119)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.else.178

if.then.167:                                      ; preds = %lor.lhs.false.163, %if.end.161
  store i32 1, i32* %initialized, align 4
  %120 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %120, i32 0, i32 4
  %121 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx169 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %121, i64 0
  %122 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %123 = bitcast %struct._GimpCoords* %arrayidx169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 64, i32 8, i1 false)
  %124 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %124, i32 0, i32 5
  %125 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx170 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %125, i64 0
  %126 = bitcast %struct._GimpCoords* %last_coords to i8*
  %127 = bitcast %struct._GimpCoords* %arrayidx170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 64, i32 8, i1 false)
  %128 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %130 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %128, %struct._GimpDrawable* %129, %struct._GimpPaintOptions* %130, i32 0, i32 0)
  %131 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %132 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %133 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %131, %struct._GimpDrawable* %132, %struct._GimpPaintOptions* %133, i32 1, i32 0)
  store i32 1, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc, %if.then.167
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %n_coords, align 4
  %cmp172 = icmp slt i32 %134, %135
  br i1 %cmp172, label %for.body.174, label %for.end

for.body.174:                                     ; preds = %for.cond.171
  %136 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %137 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %138 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %139 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %139 to i64
  %140 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx176 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %140, i64 %idxprom175
  call void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %136, %struct._GimpDrawable* %137, %struct._GimpPaintOptions* %138, %struct._GimpCoords* %arrayidx176, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body.174
  %141 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %141, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.171

for.end:                                          ; preds = %for.cond.171
  %142 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %143 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %144 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %142, %struct._GimpDrawable* %143, %struct._GimpPaintOptions* %144, i32 2, i32 0)
  br label %if.end.179

if.else.178:                                      ; preds = %lor.lhs.false.163
  br label %for.end.204

if.end.179:                                       ; preds = %for.end
  store i32 0, i32* %n_coords, align 4
  %145 = load i32, i32* %seg, align 4
  %inc180 = add nsw i32 %145, 1
  store i32 %inc180, i32* %seg, align 4
  %146 = load i32, i32* %n_coords, align 4
  %idxprom181 = sext i32 %146 to i64
  %147 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx182 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %147, i64 %idxprom181
  %148 = bitcast %struct._GimpCoords* %arrayidx182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %149 = load i32, i32* %seg, align 4
  %idxprom183 = sext i32 %149 to i64
  %150 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx184 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %150, i64 %idxprom183
  %x1185 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx184, i32 0, i32 0
  %151 = load i32, i32* %x1185, align 4
  %152 = load i32, i32* %off_x, align 4
  %sub186 = sub nsw i32 %151, %152
  %conv187 = sitofp i32 %sub186 to double
  %add188 = fadd double %conv187, 5.000000e-01
  %153 = load i32, i32* %n_coords, align 4
  %idxprom189 = sext i32 %153 to i64
  %154 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx190 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %154, i64 %idxprom189
  %x191 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx190, i32 0, i32 0
  store double %add188, double* %x191, align 8
  %155 = load i32, i32* %seg, align 4
  %idxprom192 = sext i32 %155 to i64
  %156 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %arrayidx193 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %156, i64 %idxprom192
  %y1194 = getelementptr inbounds %struct._BoundSeg, %struct._BoundSeg* %arrayidx193, i32 0, i32 1
  %157 = load i32, i32* %y1194, align 4
  %158 = load i32, i32* %off_y, align 4
  %sub195 = sub nsw i32 %157, %158
  %conv196 = sitofp i32 %sub195 to double
  %add197 = fadd double %conv196, 5.000000e-01
  %159 = load i32, i32* %n_coords, align 4
  %idxprom198 = sext i32 %159 to i64
  %160 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %arrayidx199 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %160, i64 %idxprom198
  %y200 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx199, i32 0, i32 1
  store double %add197, double* %y200, align 8
  %161 = load i32, i32* %n_coords, align 4
  %inc201 = add nsw i32 %161, 1
  store i32 %inc201, i32* %n_coords, align 4
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.179
  %162 = load i32, i32* %s, align 4
  %inc203 = add nsw i32 %162, 1
  store i32 %inc203, i32* %s, align 4
  br label %for.cond

for.end.204:                                      ; preds = %if.else.178, %for.cond
  %163 = load i32, i32* %initialized, align 4
  %tobool205 = icmp ne i32 %163, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %for.end.204
  %164 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %165 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %166 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_paint_core_finish(%struct._GimpPaintCore* %164, %struct._GimpDrawable* %165, i32 %166)
  %167 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  call void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %167)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %for.end.204
  %168 = load %struct._GimpCoords*, %struct._GimpCoords** %coords, align 8
  %169 = bitcast %struct._GimpCoords* %168 to i8*
  call void @g_free(i8* %169)
  %170 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %171 = bitcast %struct._BoundSeg* %170 to i8*
  call void @g_free(i8* %171)
  %172 = load i32, i32* %initialized, align 4
  store i32 %172, i32* %retval
  br label %return

return:                                           ; preds = %if.end.207, %if.then.93, %if.else.88, %if.else.81, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %173 = load i32, i32* %retval
  ret i32 %173
}

declare %struct._BoundSeg* @boundary_sort(%struct._BoundSeg*, i32, i32*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_stroke_emulate_dynamics(%struct._GimpCoords* %coords, i32 %length) #0 {
entry:
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %length.addr = alloca i32, align 4
  %ramp_length = alloca i32, align 4
  %slope = alloca double, align 8
  %i = alloca i32, align 4
  %slope23 = alloca double, align 8
  %i26 = alloca i32, align 4
  %i42 = alloca i32, align 4
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %div = sdiv i32 %0, 3
  store i32 %div, i32* %ramp_length, align 4
  %1 = load i32, i32* %ramp_length, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ramp_length, align 4
  %conv = sitofp i32 %2 to double
  %div1 = fdiv double 1.000000e+00, %conv
  store double %div1, double* %slope, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %ramp_length, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %conv4 = sitofp i32 %5 to double
  %6 = load double, double* %slope, align 8
  %mul = fmul double %conv4, %6
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i64 %idxprom
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx, i32 0, i32 2
  store double %mul, double* %pressure, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %length.addr, align 4
  %11 = load i32, i32* %ramp_length, align 4
  %sub = sub nsw i32 %10, %11
  store i32 %sub, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.17, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %length.addr, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body.8, label %for.end.19

for.body.8:                                       ; preds = %for.cond.5
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %length.addr, align 4
  %16 = load i32, i32* %ramp_length, align 4
  %sub9 = sub nsw i32 %15, %16
  %sub10 = sub nsw i32 %14, %sub9
  %conv11 = sitofp i32 %sub10 to double
  %17 = load double, double* %slope, align 8
  %mul12 = fmul double %conv11, %17
  %sub13 = fsub double 1.000000e+00, %mul12
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i64 %idxprom14
  %pressure16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx15, i32 0, i32 2
  store double %sub13, double* %pressure16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.8
  %20 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.5

for.end.19:                                       ; preds = %for.cond.5
  br label %if.end

if.end:                                           ; preds = %for.end.19, %entry
  %21 = load i32, i32* %length.addr, align 4
  %cmp20 = icmp sgt i32 %21, 0
  br i1 %cmp20, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.end
  %22 = load i32, i32* %length.addr, align 4
  %conv24 = sitofp i32 %22 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  store double %div25, double* %slope23, align 8
  store i32 0, i32* %i26, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.35, %if.then.22
  %23 = load i32, i32* %i26, align 4
  %24 = load i32, i32* %length.addr, align 4
  %cmp28 = icmp slt i32 %23, %24
  br i1 %cmp28, label %for.body.30, label %for.end.37

for.body.30:                                      ; preds = %for.cond.27
  %25 = load i32, i32* %i26, align 4
  %conv31 = sitofp i32 %25 to double
  %26 = load double, double* %slope23, align 8
  %mul32 = fmul double %conv31, %26
  %27 = load i32, i32* %i26, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i64 %idxprom33
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx34, i32 0, i32 6
  store double %mul32, double* %velocity, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.30
  %29 = load i32, i32* %i26, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i26, align 4
  br label %for.cond.27

for.end.37:                                       ; preds = %for.cond.27
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %if.end
  %30 = load i32, i32* %length.addr, align 4
  %cmp39 = icmp sgt i32 %30, 1
  br i1 %cmp39, label %if.then.41, label %if.end.61

if.then.41:                                       ; preds = %if.end.38
  store i32 1, i32* %i42, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.54, %if.then.41
  %31 = load i32, i32* %i42, align 4
  %32 = load i32, i32* %length.addr, align 4
  %cmp44 = icmp slt i32 %31, %32
  br i1 %cmp44, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.43
  %33 = load i32, i32* %i42, align 4
  %sub47 = sub nsw i32 %33, 1
  %idxprom48 = sext i32 %sub47 to i64
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i64 %idxprom48
  %35 = load i32, i32* %i42, align 4
  %idxprom50 = sext i32 %35 to i64
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i64 %idxprom50
  %call = call double @gimp_coords_direction(%struct._GimpCoords* %arrayidx49, %struct._GimpCoords* %arrayidx51)
  %37 = load i32, i32* %i42, align 4
  %idxprom52 = sext i32 %37 to i64
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i64 %idxprom52
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx53, i32 0, i32 7
  store double %call, double* %direction, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.46
  %39 = load i32, i32* %i42, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %i42, align 4
  br label %for.cond.43

for.end.56:                                       ; preds = %for.cond.43
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i64 1
  %direction58 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx57, i32 0, i32 7
  %41 = load double, double* %direction58, align 8
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %42, i64 0
  %direction60 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx59, i32 0, i32 7
  store double %41, double* %direction60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %for.end.56, %if.end.38
  ret void
}

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_core_stroke_vectors(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %emulate_dynamics, %struct._GimpVectors* %vectors, i32 %push_undo, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %emulate_dynamics.addr = alloca i32, align 4
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %stroke = alloca %struct._GList*, align 8
  %initialized = alloca i32, align 4
  %due_to_lack_of_points = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %vectors_off_x = alloca i32, align 4
  %vectors_off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %__inst78 = alloca %struct._GTypeInstance*, align 8
  %__t80 = alloca i64, align 8
  %__r83 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %coords = alloca %struct._GArray*, align 8
  %closed = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %emulate_dynamics, i32* %emulate_dynamics.addr, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %initialized, align 4
  store i32 0, i32* %due_to_lack_of_points, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %43 = bitcast %struct._GimpVectors* %42 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %43, %struct._GTypeInstance** %__inst78, align 8
  %call81 = call i64 @gimp_vectors_get_type() #6
  store i64 %call81, i64* %__t80, align 8
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %tobool84 = icmp ne %struct._GTypeInstance* %44, null
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %do.body.76
  store i32 0, i32* %__r83, align 4
  br label %if.end.97

if.else.86:                                       ; preds = %do.body.76
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %tobool88 = icmp ne %struct._GTypeClass* %46, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.94

land.lhs.true.89:                                 ; preds = %if.else.86
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %g_type91 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type91, align 8
  %50 = load i64, i64* %__t80, align 8
  %cmp92 = icmp eq i64 %49, %50
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.89
  store i32 1, i32* %__r83, align 4
  br label %if.end.96

if.else.94:                                       ; preds = %land.lhs.true.89, %if.else.86
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %52 = load i64, i64* %__t80, align 8
  %call95 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %51, i64 %52) #7
  store i32 %call95, i32* %__r83, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.85
  %53 = load i32, i32* %__r83, align 4
  store i32 %53, i32* %tmp98
  %54 = load i32, i32* %tmp98
  %tobool99 = icmp ne i32 %54, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.end.97
  br label %if.end.102

if.else.101:                                      ; preds = %if.end.97
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.then.100
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp105 = icmp eq %struct._GError** %55, null
  br i1 %cmp105, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.104
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %57 = load %struct._GError*, %struct._GError** %56, align 8
  %cmp106 = icmp eq %struct._GError* %57, null
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %lor.lhs.false, %do.body.104
  br label %if.end.109

if.else.108:                                      ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_stroke_vectors, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.then.107
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %58 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %59 = bitcast %struct._GimpVectors* %58 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_item_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call111)
  %60 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %60, i32* %vectors_off_x, i32* %vectors_off_y)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %62 = bitcast %struct._GimpDrawable* %61 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_item_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call113)
  %63 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %63, i32* %off_x, i32* %off_y)
  %64 = load i32, i32* %vectors_off_x, align 4
  %65 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %65, %64
  store i32 %sub, i32* %off_x, align 4
  %66 = load i32, i32* %vectors_off_y, align 4
  %67 = load i32, i32* %off_y, align 4
  %sub115 = sub nsw i32 %67, %66
  store i32 %sub115, i32* %off_y, align 4
  %68 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %68, i32 0, i32 1
  %69 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %69, %struct._GList** %stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %do.end.110
  %70 = load %struct._GList*, %struct._GList** %stroke, align 8
  %tobool116 = icmp ne %struct._GList* %70, null
  br i1 %tobool116, label %for.body, label %for.end.178

for.body:                                         ; preds = %for.cond
  %71 = load %struct._GList*, %struct._GList** %stroke, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 0
  %72 = load i8*, i8** %data, align 8
  %73 = bitcast i8* %72 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_stroke_get_type() #6
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call119)
  %74 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpStroke*
  %call121 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %74, double 1.000000e+00, i32* %closed)
  store %struct._GArray* %call121, %struct._GArray** %coords, align 8
  %75 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool122 = icmp ne %struct._GArray* %75, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.171

land.lhs.true.123:                                ; preds = %for.body
  %76 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %76, i32 0, i32 1
  %77 = load i32, i32* %len, align 4
  %tobool124 = icmp ne i32 %77, 0
  br i1 %tobool124, label %if.then.125, label %if.else.171

if.then.125:                                      ; preds = %land.lhs.true.123
  store i32 0, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc, %if.then.125
  %78 = load i32, i32* %i, align 4
  %79 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len128 = getelementptr inbounds %struct._GArray, %struct._GArray* %79, i32 0, i32 1
  %80 = load i32, i32* %len128, align 4
  %cmp129 = icmp ult i32 %78, %80
  br i1 %cmp129, label %for.body.130, label %for.end

for.body.130:                                     ; preds = %for.cond.127
  %81 = load i32, i32* %off_x, align 4
  %conv = sitofp i32 %81 to double
  %82 = load i32, i32* %i, align 4
  %idxprom = sext i32 %82 to i64
  %83 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data131 = getelementptr inbounds %struct._GArray, %struct._GArray* %83, i32 0, i32 0
  %84 = load i8*, i8** %data131, align 8
  %85 = bitcast i8* %84 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %85, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx, i32 0, i32 0
  %86 = load double, double* %x, align 8
  %sub132 = fsub double %86, %conv
  store double %sub132, double* %x, align 8
  %87 = load i32, i32* %off_y, align 4
  %conv133 = sitofp i32 %87 to double
  %88 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %88 to i64
  %89 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data135 = getelementptr inbounds %struct._GArray, %struct._GArray* %89, i32 0, i32 0
  %90 = load i8*, i8** %data135, align 8
  %91 = bitcast i8* %90 to %struct._GimpCoords*
  %arrayidx136 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %91, i64 %idxprom134
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx136, i32 0, i32 1
  %92 = load double, double* %y, align 8
  %sub137 = fsub double %92, %conv133
  store double %sub137, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.130
  %93 = load i32, i32* %i, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.127

for.end:                                          ; preds = %for.cond.127
  %94 = load i32, i32* %emulate_dynamics.addr, align 4
  %tobool138 = icmp ne i32 %94, 0
  br i1 %tobool138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %for.end
  %95 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data140 = getelementptr inbounds %struct._GArray, %struct._GArray* %95, i32 0, i32 0
  %96 = load i8*, i8** %data140, align 8
  %97 = bitcast i8* %96 to %struct._GimpCoords*
  %98 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len141 = getelementptr inbounds %struct._GArray, %struct._GArray* %98, i32 0, i32 1
  %99 = load i32, i32* %len141, align 4
  call void @gimp_paint_core_stroke_emulate_dynamics(%struct._GimpCoords* %97, i32 %99)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %for.end
  %100 = load i32, i32* %initialized, align 4
  %tobool143 = icmp ne i32 %100, 0
  br i1 %tobool143, label %if.then.149, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %if.end.142
  %101 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %103 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %104 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data145 = getelementptr inbounds %struct._GArray, %struct._GArray* %104, i32 0, i32 0
  %105 = load i8*, i8** %data145, align 8
  %106 = bitcast i8* %105 to %struct._GimpCoords*
  %arrayidx146 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i64 0
  %107 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call147 = call i32 @gimp_paint_core_start(%struct._GimpPaintCore* %101, %struct._GimpDrawable* %102, %struct._GimpPaintOptions* %103, %struct._GimpCoords* %arrayidx146, %struct._GError** %107)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.165

if.then.149:                                      ; preds = %lor.lhs.false.144, %if.end.142
  store i32 1, i32* %initialized, align 4
  %108 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %108, i32 0, i32 4
  %109 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data150 = getelementptr inbounds %struct._GArray, %struct._GArray* %109, i32 0, i32 0
  %110 = load i8*, i8** %data150, align 8
  %111 = bitcast i8* %110 to %struct._GimpCoords*
  %arrayidx151 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %111, i64 0
  %112 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %113 = bitcast %struct._GimpCoords* %arrayidx151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 64, i32 8, i1 false)
  %114 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %114, i32 0, i32 5
  %115 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data152 = getelementptr inbounds %struct._GArray, %struct._GArray* %115, i32 0, i32 0
  %116 = load i8*, i8** %data152, align 8
  %117 = bitcast i8* %116 to %struct._GimpCoords*
  %arrayidx153 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %117, i64 0
  %118 = bitcast %struct._GimpCoords* %last_coords to i8*
  %119 = bitcast %struct._GimpCoords* %arrayidx153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 64, i32 8, i1 false)
  %120 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %122 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %120, %struct._GimpDrawable* %121, %struct._GimpPaintOptions* %122, i32 0, i32 0)
  %123 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %125 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %123, %struct._GimpDrawable* %124, %struct._GimpPaintOptions* %125, i32 1, i32 0)
  store i32 1, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.162, %if.then.149
  %126 = load i32, i32* %i, align 4
  %127 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len155 = getelementptr inbounds %struct._GArray, %struct._GArray* %127, i32 0, i32 1
  %128 = load i32, i32* %len155, align 4
  %cmp156 = icmp ult i32 %126, %128
  br i1 %cmp156, label %for.body.158, label %for.end.164

for.body.158:                                     ; preds = %for.cond.154
  %129 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %131 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %132 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %132 to i64
  %133 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data160 = getelementptr inbounds %struct._GArray, %struct._GArray* %133, i32 0, i32 0
  %134 = load i8*, i8** %data160, align 8
  %135 = bitcast i8* %134 to %struct._GimpCoords*
  %arrayidx161 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %135, i64 %idxprom159
  call void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %129, %struct._GimpDrawable* %130, %struct._GimpPaintOptions* %131, %struct._GimpCoords* %arrayidx161, i32 0)
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.158
  %136 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %136, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.154

for.end.164:                                      ; preds = %for.cond.154
  %137 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %139 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %137, %struct._GimpDrawable* %138, %struct._GimpPaintOptions* %139, i32 2, i32 0)
  br label %if.end.170

if.else.165:                                      ; preds = %lor.lhs.false.144
  %140 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool166 = icmp ne %struct._GArray* %140, null
  br i1 %tobool166, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %if.else.165
  %141 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call168 = call i8* @g_array_free(%struct._GArray* %141, i32 1)
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.else.165
  br label %for.end.178

if.end.170:                                       ; preds = %for.end.164
  br label %if.end.172

if.else.171:                                      ; preds = %land.lhs.true.123, %for.body
  store i32 1, i32* %due_to_lack_of_points, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.171, %if.end.170
  %142 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool173 = icmp ne %struct._GArray* %142, null
  br i1 %tobool173, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %if.end.172
  %143 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call175 = call i8* @g_array_free(%struct._GArray* %143, i32 1)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %if.end.172
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %144 = load %struct._GList*, %struct._GList** %stroke, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %144, i32 0, i32 1
  %145 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %145, %struct._GList** %stroke, align 8
  br label %for.cond

for.end.178:                                      ; preds = %if.end.169, %for.cond
  %146 = load i32, i32* %initialized, align 4
  %tobool179 = icmp ne i32 %146, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.end.178
  %147 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %148 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %149 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_paint_core_finish(%struct._GimpPaintCore* %147, %struct._GimpDrawable* %148, i32 %149)
  %150 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  call void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %150)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %for.end.178
  %151 = load i32, i32* %initialized, align 4
  %tobool182 = icmp ne i32 %151, 0
  br i1 %tobool182, label %if.end.191, label %land.lhs.true.183

land.lhs.true.183:                                ; preds = %if.end.181
  %152 = load i32, i32* %due_to_lack_of_points, align 4
  %tobool184 = icmp ne i32 %152, 0
  br i1 %tobool184, label %land.lhs.true.185, label %if.end.191

land.lhs.true.185:                                ; preds = %land.lhs.true.183
  %153 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %154 = load %struct._GError*, %struct._GError** %153, align 8
  %cmp186 = icmp eq %struct._GError* %154, null
  br i1 %cmp186, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %land.lhs.true.185
  %155 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call189 = call i32 @gimp_error_quark() #6
  %call190 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %155, i32 %call189, i32 0, i8* %call190)
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %land.lhs.true.185, %land.lhs.true.183, %if.end.181
  %156 = load i32, i32* %initialized, align 4
  store i32 %156, i32* %retval
  br label %return

return:                                           ; preds = %if.end.191, %if.else.108, %if.else.101, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %157 = load i32, i32* %retval
  ret i32 %157
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_get_type() #1

declare i8* @g_array_free(%struct._GArray*, i32) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare double @gimp_coords_direction(%struct._GimpCoords*, %struct._GimpCoords*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
