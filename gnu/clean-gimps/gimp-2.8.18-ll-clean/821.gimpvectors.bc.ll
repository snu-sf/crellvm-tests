; ModuleID = './app/vectors/gimpvectors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpVectorsClass = type { %struct._GimpItemClass, void (%struct._GimpVectors*)*, void (%struct._GimpVectors*)*, void (%struct._GimpVectors*, %struct._GimpStroke*)*, void (%struct._GimpVectors*, %struct._GimpStroke*)*, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpCoords*)*, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpStroke*)*, double (%struct._GimpVectors*, %struct._GimpStroke*)*, %struct._GimpAnchor* (%struct._GimpVectors*, %struct._GimpCoords*, %struct._GimpStroke**)*, void (%struct._GimpVectors*, %struct._GimpAnchor*)*, double (%struct._GimpVectors*, %struct._GimpAnchor*)*, double (%struct._GimpVectors*, %struct._GimpCoords*)*, i32 (%struct._GimpVectors*, %struct._GimpStroke*, double, i32, %struct._GimpCoords*)*, %struct.cairo_path* (%struct._GimpVectors*)* }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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
%struct._GdkPixbuf = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GeglNode = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpUndo = type opaque
%struct._GimpPaintCore = type opaque
%struct._GimpChannel = type opaque

@gimp_vectors_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpVectors\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_vectors_new = private unnamed_addr constant [17 x i8] c"gimp_vectors_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_vectors_get_parent = private unnamed_addr constant [24 x i8] c"gimp_vectors_get_parent\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_VECTORS (vectors)\00", align 1
@__func__.gimp_vectors_freeze = private unnamed_addr constant [20 x i8] c"gimp_vectors_freeze\00", align 1
@gimp_vectors_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_vectors_thaw = private unnamed_addr constant [18 x i8] c"gimp_vectors_thaw\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vectors->freeze_count > 0\00", align 1
@__func__.gimp_vectors_copy_strokes = private unnamed_addr constant [26 x i8] c"gimp_vectors_copy_strokes\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GIMP_IS_VECTORS (src_vectors)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GIMP_IS_VECTORS (dest_vectors)\00", align 1
@__func__.gimp_vectors_add_strokes = private unnamed_addr constant [25 x i8] c"gimp_vectors_add_strokes\00", align 1
@__func__.gimp_vectors_stroke_add = private unnamed_addr constant [24 x i8] c"gimp_vectors_stroke_add\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"GIMP_IS_STROKE (stroke)\00", align 1
@__func__.gimp_vectors_stroke_remove = private unnamed_addr constant [27 x i8] c"gimp_vectors_stroke_remove\00", align 1
@__func__.gimp_vectors_get_n_strokes = private unnamed_addr constant [27 x i8] c"gimp_vectors_get_n_strokes\00", align 1
@__func__.gimp_vectors_stroke_get = private unnamed_addr constant [24 x i8] c"gimp_vectors_stroke_get\00", align 1
@__func__.gimp_vectors_stroke_get_by_ID = private unnamed_addr constant [30 x i8] c"gimp_vectors_stroke_get_by_ID\00", align 1
@__func__.gimp_vectors_stroke_get_next = private unnamed_addr constant [29 x i8] c"gimp_vectors_stroke_get_next\00", align 1
@__func__.gimp_vectors_stroke_get_length = private unnamed_addr constant [31 x i8] c"gimp_vectors_stroke_get_length\00", align 1
@__func__.gimp_vectors_anchor_get = private unnamed_addr constant [24 x i8] c"gimp_vectors_anchor_get\00", align 1
@__func__.gimp_vectors_anchor_delete = private unnamed_addr constant [27 x i8] c"gimp_vectors_anchor_delete\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"anchor != NULL\00", align 1
@__func__.gimp_vectors_get_length = private unnamed_addr constant [24 x i8] c"gimp_vectors_get_length\00", align 1
@__func__.gimp_vectors_get_distance = private unnamed_addr constant [26 x i8] c"gimp_vectors_get_distance\00", align 1
@__func__.gimp_vectors_bounds = private unnamed_addr constant [20 x i8] c"gimp_vectors_bounds\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"x1 != NULL && y1 != NULL && x2 != NULL && y2 != NULL\00", align 1
@__func__.gimp_vectors_interpolate = private unnamed_addr constant [25 x i8] c"gimp_vectors_interpolate\00", align 1
@__func__.gimp_vectors_get_bezier = private unnamed_addr constant [24 x i8] c"gimp_vectors_get_bezier\00", align 1
@gimp_vectors_parent_class = internal global i8* null, align 8
@GimpVectors_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"gimp-path\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"undo-type\04Rename Path\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"undo-type\04Move Path\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"undo-type\04Scale Path\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"undo-type\04Resize Path\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"undo-type\04Flip Path\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"undo-type\04Rotate Path\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"undo-type\04Transform Path\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"undo-type\04Stroke Path\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"undo-type\04Path to Selection\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"undo-type\04Reorder Path\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"undo-type\04Raise Path\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"undo-type\04Raise Path to Top\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"undo-type\04Lower Path\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"undo-type\04Lower Path to Bottom\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Path cannot be raised higher.\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Path cannot be lowered more.\00", align 1
@__func__.gimp_vectors_duplicate = private unnamed_addr constant [23 x i8] c"gimp_vectors_duplicate\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"g_type_is_a (new_type, GIMP_TYPE_VECTORS)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Move Path\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Flip Path\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Rotate Path\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Transform Path\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Not enough points to stroke\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"gimpvectors.c\00", align 1
@__func__.gimp_vectors_stroke = private unnamed_addr constant [20 x i8] c"gimp_vectors_stroke\00", align 1
@__func__.gimp_vectors_real_stroke_get_next = private unnamed_addr constant [34 x i8] c"gimp_vectors_real_stroke_get_next\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"stroke != NULL\00", align 1
@__func__.gimp_vectors_real_stroke_get_length = private unnamed_addr constant [36 x i8] c"gimp_vectors_real_stroke_get_length\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"gimp_vectors_get_length: default implementation\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"gimp_vectors_get_distance: default implementation\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"gimp_vectors_interpolate: default implementation\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_vectors_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_vectors_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 680, void (i8*, i8*)* bitcast (void (i8*)* @gimp_vectors_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpVectors*)* @gimp_vectors_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_vectors_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_vectors_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_vectors_parent_class, align 8
  %1 = load i32, i32* @GimpVectors_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpVectors_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectorsClass*
  call void @gimp_vectors_class_init(%struct._GimpVectorsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_init(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %2, i32 0, i32 0)
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %3, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %strokes, align 8
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %last_stroke_ID = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %4, i32 0, i32 2
  store i32 0, i32* %last_stroke_ID, align 4
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %5, i32 0, i32 3
  store i32 0, i32* %freeze_count, align 4
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %precision = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %6, i32 0, i32 4
  store double 2.000000e-01, double* %precision, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %7, i32 0, i32 5
  store %struct.cairo_path* null, %struct.cairo_path** %bezier_desc, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_valid = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 6
  store i32 0, i32* %bounds_valid, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %image, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_vectors_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_vectors_get_type() #7
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call13 = call i32 @gimp_image_get_height(%struct._GimpImage* %16)
  %call14 = call %struct._GimpItem* @gimp_item_new(i64 %call11, %struct._GimpImage* %13, i8* %14, i32 0, i32 0, i32 %call12, i32 %call13)
  %17 = bitcast %struct._GimpItem* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_vectors_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpVectors*
  store %struct._GimpVectors* %18, %struct._GimpVectors** %vectors, align 8
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  store %struct._GimpVectors* %19, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpItem* @gimp_item_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_vectors_get_parent(%struct._GimpVectors* %vectors) #3 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_get_parent, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %15)
  %16 = bitcast %struct._GimpViewable* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_vectors_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpVectors*
  store %struct._GimpVectors* %17, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %18
}

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_vectors_freeze(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_vectors_freeze, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %13, i32 0, i32 3
  %14 = load i32, i32* %freeze_count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %freeze_count, align 4
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count11 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %15, i32 0, i32 3
  %16 = load i32, i32* %freeze_count11, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %18 = bitcast %struct._GimpVectors* %17 to i8*
  %19 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_vectors_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %18, i32 %19, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_vectors_thaw(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_vectors_thaw, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %13, i32 0, i32 3
  %14 = load i32, i32* %freeze_count, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_vectors_thaw, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.21

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count17 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %15, i32 0, i32 3
  %16 = load i32, i32* %freeze_count17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %freeze_count17, align 4
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %freeze_count18 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %17, i32 0, i32 3
  %18 = load i32, i32* %freeze_count18, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %20 = bitcast %struct._GimpVectors* %19 to i8*
  %21 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_vectors_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %20, i32 %21, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vectors_copy_strokes(%struct._GimpVectors* %src_vectors, %struct._GimpVectors* %dest_vectors) #3 {
entry:
  %src_vectors.addr = alloca %struct._GimpVectors*, align 8
  %dest_vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %src_vectors, %struct._GimpVectors** %src_vectors.addr, align 8
  store %struct._GimpVectors* %dest_vectors, %struct._GimpVectors** %dest_vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %src_vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_vectors_copy_strokes, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_vectors_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_vectors_copy_strokes, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %26)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool39 = icmp ne %struct._GList* %28, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end.38
  %29 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %strokes41 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %strokes41, align 8
  call void @g_list_free_full(%struct._GList* %30, void (i8*)* @g_object_unref)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.38
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %strokes43 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %31, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %strokes43, align 8
  %32 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %last_stroke_ID = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %32, i32 0, i32 2
  store i32 0, i32* %last_stroke_ID, align 4
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %src_vectors.addr, align 8
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  call void @gimp_vectors_add_strokes(%struct._GimpVectors* %33, %struct._GimpVectors* %34)
  %35 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %35)
  br label %return

return:                                           ; preds = %if.end.42, %if.else.36, %if.else.9
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_vectors_add_strokes(%struct._GimpVectors* %src_vectors, %struct._GimpVectors* %dest_vectors) #3 {
entry:
  %src_vectors.addr = alloca %struct._GimpVectors*, align 8
  %dest_vectors.addr = alloca %struct._GimpVectors*, align 8
  %current_lstroke = alloca %struct._GList*, align 8
  %strokes_copy = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %src_vectors, %struct._GimpVectors** %src_vectors.addr, align 8
  store %struct._GimpVectors* %dest_vectors, %struct._GimpVectors** %dest_vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %src_vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_add_strokes, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_vectors_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_add_strokes, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %26)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %src_vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %strokes, align 8
  %call39 = call %struct._GList* @g_list_copy(%struct._GList* %28)
  store %struct._GList* %call39, %struct._GList** %strokes_copy, align 8
  %29 = load %struct._GList*, %struct._GList** %strokes_copy, align 8
  store %struct._GList* %29, %struct._GList** %current_lstroke, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %do.end.38
  %30 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %tobool40 = icmp ne %struct._GList* %30, null
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct._GimpStroke*
  %call41 = call %struct._GimpStroke* @gimp_stroke_duplicate(%struct._GimpStroke* %33)
  %34 = bitcast %struct._GimpStroke* %call41 to i8*
  %35 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %data42 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0
  store i8* %34, i8** %data42, align 8
  %36 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %last_stroke_ID = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %36, i32 0, i32 2
  %37 = load i32, i32* %last_stroke_ID, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %last_stroke_ID, align 4
  %38 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data43, align 8
  %40 = bitcast i8* %39 to %struct._GimpStroke*
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %last_stroke_ID44 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %41, i32 0, i32 2
  %42 = load i32, i32* %last_stroke_ID44, align 4
  call void @gimp_stroke_set_ID(%struct._GimpStroke* %40, i32 %42)
  %43 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %tobool45 = icmp ne %struct._GList* %43, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %44 = load %struct._GList*, %struct._GList** %current_lstroke, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %45, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %current_lstroke, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %strokes46 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %strokes46, align 8
  %48 = load %struct._GList*, %struct._GList** %strokes_copy, align 8
  %call47 = call %struct._GList* @g_list_concat(%struct._GList* %47, %struct._GList* %48)
  %49 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  %strokes48 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %49, i32 0, i32 1
  store %struct._GList* %call47, %struct._GList** %strokes48, align 8
  %50 = load %struct._GimpVectors*, %struct._GimpVectors** %dest_vectors.addr, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %50)
  br label %return

return:                                           ; preds = %while.end, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare %struct._GimpStroke* @gimp_stroke_duplicate(%struct._GimpStroke*) #1

declare void @gimp_stroke_set_ID(%struct._GimpStroke*, i32) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_vectors_stroke_add(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_stroke_add, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_stroke_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_stroke_add, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %26)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %28 = bitcast %struct._GimpVectors* %27 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpVectorsClass*
  %stroke_add = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %30, i32 0, i32 3
  %31 = load void (%struct._GimpVectors*, %struct._GimpStroke*)*, void (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_add, align 8
  %32 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void %31(%struct._GimpVectors* %32, %struct._GimpStroke* %33)
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %34)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_vectors_stroke_remove(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_stroke_remove, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_stroke_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_stroke_remove, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %26)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %28 = bitcast %struct._GimpVectors* %27 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpVectorsClass*
  %stroke_remove = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %30, i32 0, i32 4
  %31 = load void (%struct._GimpVectors*, %struct._GimpStroke*)*, void (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_remove, align 8
  %32 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void %31(%struct._GimpVectors* %32, %struct._GimpStroke* %33)
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %34)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_get_n_strokes(%struct._GimpVectors* %vectors) #3 {
entry:
  %retval = alloca i32, align 4
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_get_n_strokes, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %strokes, align 8
  %call11 = call i32 @g_list_length(%struct._GList* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_vectors_stroke_get(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_stroke_get, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %stroke_get = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 5
  %17 = load %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpCoords*)*, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpCoords*)** %stroke_get, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call12 = call %struct._GimpStroke* %17(%struct._GimpVectors* %18, %struct._GimpCoords* %19)
  store %struct._GimpStroke* %call12, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %20
}

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_vectors_stroke_get_by_ID(%struct._GimpVectors* %vectors, i32 %id) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %id.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_vectors_stroke_get_by_ID, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpStroke*
  %call12 = call i32 @gimp_stroke_get_ID(%struct._GimpStroke* %18)
  %19 = load i32, i32* %id.addr, align 4
  %cmp13 = icmp eq i32 %call12, %19
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %for.body
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data15, align 8
  %22 = bitcast i8* %21 to %struct._GimpStroke*
  store %struct._GimpStroke* %22, %struct._GimpStroke** %retval
  br label %return

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %23, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.else.9
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %26
}

declare i32 @gimp_stroke_get_ID(%struct._GimpStroke*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %vectors, %struct._GimpStroke* %prev) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %prev.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %prev, %struct._GimpStroke** %prev.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_vectors_stroke_get_next, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %stroke_get_next = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 6
  %17 = load %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpStroke*)*, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_get_next, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %prev.addr, align 8
  %call12 = call %struct._GimpStroke* %17(%struct._GimpVectors* %18, %struct._GimpStroke* %19)
  store %struct._GimpStroke* %call12, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %20
}

; Function Attrs: nounwind uwtable
define double @gimp_vectors_stroke_get_length(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca double, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_vectors_stroke_get_length, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_stroke_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_vectors_stroke_get_length, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %27 = bitcast %struct._GimpVectors* %26 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %29 = bitcast %struct._GTypeClass* %28 to %struct._GimpVectorsClass*
  %stroke_get_length = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %29, i32 0, i32 7
  %30 = load double (%struct._GimpVectors*, %struct._GimpStroke*)*, double (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_get_length, align 8
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %32 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call40 = call double %30(%struct._GimpVectors* %31, %struct._GimpStroke* %32)
  store double %call40, double* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %33 = load double, double* %retval
  ret double %33
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_vectors_anchor_get(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord, %struct._GimpStroke** %ret_stroke) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %ret_stroke.addr = alloca %struct._GimpStroke**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store %struct._GimpStroke** %ret_stroke, %struct._GimpStroke*** %ret_stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_anchor_get, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %anchor_get = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 8
  %17 = load %struct._GimpAnchor* (%struct._GimpVectors*, %struct._GimpCoords*, %struct._GimpStroke**)*, %struct._GimpAnchor* (%struct._GimpVectors*, %struct._GimpCoords*, %struct._GimpStroke**)** %anchor_get, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %20 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %call12 = call %struct._GimpAnchor* %17(%struct._GimpVectors* %18, %struct._GimpCoords* %19, %struct._GimpStroke** %20)
  store %struct._GimpAnchor* %call12, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %21
}

; Function Attrs: nounwind uwtable
define void @gimp_vectors_anchor_delete(%struct._GimpVectors* %vectors, %struct._GimpAnchor* %anchor) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_anchor_delete, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %cmp12 = icmp ne %struct._GimpAnchor* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_vectors_anchor_delete, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %15 = bitcast %struct._GimpVectors* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpVectorsClass*
  %anchor_delete = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %17, i32 0, i32 9
  %18 = load void (%struct._GimpVectors*, %struct._GimpAnchor*)*, void (%struct._GimpVectors*, %struct._GimpAnchor*)** %anchor_delete, align 8
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  call void %18(%struct._GimpVectors* %19, %struct._GimpAnchor* %20)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vectors_anchor_select(%struct._GimpVectors* %vectors, %struct._GimpStroke* %target_stroke, %struct._GimpAnchor* %anchor, i32 %selected, i32 %exclusive) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %target_stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %selected.addr = alloca i32, align 4
  %exclusive.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %target_stroke, %struct._GimpStroke** %target_stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store i32 %exclusive, i32* %exclusive.addr, align 4
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.4, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStroke*
  store %struct._GimpStroke* %5, %struct._GimpStroke** %stroke, align 8
  %6 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %target_stroke.addr, align 8
  %cmp = icmp eq %struct._GimpStroke* %7, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpAnchor* [ %9, %cond.true ], [ null, %cond.false ]
  %10 = load i32, i32* %selected.addr, align 4
  %11 = load i32, i32* %exclusive.addr, align 4
  call void @gimp_stroke_anchor_select(%struct._GimpStroke* %6, %struct._GimpAnchor* %cond, i32 %10, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %12, null
  br i1 %tobool1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %for.inc
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi %struct._GList* [ %14, %cond.true.2 ], [ null, %cond.false.3 ]
  store %struct._GList* %cond5, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_stroke_anchor_select(%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32) #1

; Function Attrs: nounwind uwtable
define double @gimp_vectors_get_length(%struct._GimpVectors* %vectors, %struct._GimpAnchor* %start) #3 {
entry:
  %retval = alloca double, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %start.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpAnchor* %start, %struct._GimpAnchor** %start.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_get_length, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %get_length = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 10
  %17 = load double (%struct._GimpVectors*, %struct._GimpAnchor*)*, double (%struct._GimpVectors*, %struct._GimpAnchor*)** %get_length, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %start.addr, align 8
  %call12 = call double %17(%struct._GimpVectors* %18, %struct._GimpAnchor* %19)
  store double %call12, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define double @gimp_vectors_get_distance(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord) #3 {
entry:
  %retval = alloca double, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_vectors_get_distance, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %get_distance = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 11
  %17 = load double (%struct._GimpVectors*, %struct._GimpCoords*)*, double (%struct._GimpVectors*, %struct._GimpCoords*)** %get_distance, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call12 = call double %17(%struct._GimpVectors* %18, %struct._GimpCoords* %19)
  store double %call12, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_bounds(%struct._GimpVectors* %vectors, double* %x1, double* %y1, double* %x2, double* %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %x1.addr = alloca double*, align 8
  %y1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y2.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %stroke_coords = alloca %struct._GArray*, align 8
  %closed = alloca i32, align 4
  %point = alloca %struct._GimpCoords, align 8
  %i = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store double* %x1, double** %x1.addr, align 8
  store double* %y1, double** %y1.addr, align 8
  store double* %x2, double** %x2.addr, align 8
  store double* %y2, double** %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_vectors_bounds, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %x1.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.20

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double*, double** %y1.addr, align 8
  %cmp14 = icmp ne double* %14, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.20

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %15 = load double*, double** %x2.addr, align 8
  %cmp16 = icmp ne double* %15, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.20

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %16 = load double*, double** %y2.addr, align 8
  %cmp18 = icmp ne double* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %if.end.21

if.else.20:                                       ; preds = %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_vectors_bounds, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_valid = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %17, i32 0, i32 6
  %18 = load i32, i32* %bounds_valid, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.end.94, label %if.then.24

if.then.24:                                       ; preds = %do.end.22
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_empty = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %19, i32 0, i32 7
  store i32 1, i32* %bounds_empty, align 4
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %20, i32 0, i32 10
  store double 0.000000e+00, double* %bounds_x2, align 8
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %21, i32 0, i32 8
  store double 0.000000e+00, double* %bounds_x1, align 8
  %22 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x226 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %22, i32 0, i32 10
  store double 0.000000e+00, double* %bounds_x226, align 8
  %23 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x127 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %23, i32 0, i32 8
  store double 0.000000e+00, double* %bounds_x127, align 8
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call28 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %24, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call28, %struct._GimpStroke** %stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.then.24
  %25 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool29 = icmp ne %struct._GimpStroke* %25, null
  br i1 %tobool29, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call32 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %26, double 1.000000e+00, i32* %closed)
  store %struct._GArray* %call32, %struct._GArray** %stroke_coords, align 8
  %27 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %tobool33 = icmp ne %struct._GArray* %27, null
  br i1 %tobool33, label %if.then.34, label %if.end.89

if.then.34:                                       ; preds = %for.body
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_empty37 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %28, i32 0, i32 7
  %29 = load i32, i32* %bounds_empty37, align 4
  %tobool38 = icmp ne i32 %29, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.45

land.lhs.true.39:                                 ; preds = %if.then.34
  %30 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 1
  %31 = load i32, i32* %len, align 4
  %cmp40 = icmp ugt i32 %31, 0
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %land.lhs.true.39
  %32 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %32, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i64 0
  %35 = bitcast %struct._GimpCoords* %point to i8*
  %36 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 64, i32 8, i1 false)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %37 = load double, double* %x, align 8
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x242 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %38, i32 0, i32 10
  store double %37, double* %bounds_x242, align 8
  %39 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x143 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %39, i32 0, i32 8
  store double %37, double* %bounds_x143, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %40 = load double, double* %y, align 8
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %41, i32 0, i32 11
  store double %40, double* %bounds_y2, align 8
  %42 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %42, i32 0, i32 9
  store double %40, double* %bounds_y1, align 8
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_empty44 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %43, i32 0, i32 7
  store i32 0, i32* %bounds_empty44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %land.lhs.true.39, %if.then.34
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.end.45
  %44 = load i32, i32* %i, align 4
  %45 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %len47 = getelementptr inbounds %struct._GArray, %struct._GArray* %45, i32 0, i32 1
  %46 = load i32, i32* %len47, align 4
  %cmp48 = icmp ult i32 %44, %46
  br i1 %cmp48, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %data50 = getelementptr inbounds %struct._GArray, %struct._GArray* %48, i32 0, i32 0
  %49 = load i8*, i8** %data50, align 8
  %50 = bitcast i8* %49 to %struct._GimpCoords*
  %arrayidx51 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i64 %idxprom
  %51 = bitcast %struct._GimpCoords* %point to i8*
  %52 = bitcast %struct._GimpCoords* %arrayidx51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 64, i32 8, i1 false)
  %53 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x152 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %53, i32 0, i32 8
  %54 = load double, double* %bounds_x152, align 8
  %x53 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %55 = load double, double* %x53, align 8
  %cmp54 = fcmp olt double %54, %55
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.49
  %56 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x155 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %56, i32 0, i32 8
  %57 = load double, double* %bounds_x155, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.49
  %x56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %58 = load double, double* %x56, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %57, %cond.true ], [ %58, %cond.false ]
  %59 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x157 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %59, i32 0, i32 8
  store double %cond, double* %bounds_x157, align 8
  %60 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y158 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %60, i32 0, i32 9
  %61 = load double, double* %bounds_y158, align 8
  %y59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %62 = load double, double* %y59, align 8
  %cmp60 = fcmp olt double %61, %62
  br i1 %cmp60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y162 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %63, i32 0, i32 9
  %64 = load double, double* %bounds_y162, align 8
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end
  %y64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %65 = load double, double* %y64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.61
  %cond66 = phi double [ %64, %cond.true.61 ], [ %65, %cond.false.63 ]
  %66 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y167 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %66, i32 0, i32 9
  store double %cond66, double* %bounds_y167, align 8
  %67 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x268 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %67, i32 0, i32 10
  %68 = load double, double* %bounds_x268, align 8
  %x69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %69 = load double, double* %x69, align 8
  %cmp70 = fcmp ogt double %68, %69
  br i1 %cmp70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %cond.end.65
  %70 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x272 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %70, i32 0, i32 10
  %71 = load double, double* %bounds_x272, align 8
  br label %cond.end.75

cond.false.73:                                    ; preds = %cond.end.65
  %x74 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %72 = load double, double* %x74, align 8
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.71
  %cond76 = phi double [ %71, %cond.true.71 ], [ %72, %cond.false.73 ]
  %73 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x277 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %73, i32 0, i32 10
  store double %cond76, double* %bounds_x277, align 8
  %74 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y278 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %74, i32 0, i32 11
  %75 = load double, double* %bounds_y278, align 8
  %y79 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %76 = load double, double* %y79, align 8
  %cmp80 = fcmp ogt double %75, %76
  br i1 %cmp80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.end.75
  %77 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y282 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %77, i32 0, i32 11
  %78 = load double, double* %bounds_y282, align 8
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.end.75
  %y84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %79 = load double, double* %y84, align 8
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.81
  %cond86 = phi double [ %78, %cond.true.81 ], [ %79, %cond.false.83 ]
  %80 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y287 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %80, i32 0, i32 11
  store double %cond86, double* %bounds_y287, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.85
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %82 = load %struct._GArray*, %struct._GArray** %stroke_coords, align 8
  %call88 = call i8* @g_array_free(%struct._GArray* %82, i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %for.body
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %83 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %84 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call91 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %83, %struct._GimpStroke* %84)
  store %struct._GimpStroke* %call91, %struct._GimpStroke** %stroke, align 8
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %85 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_valid93 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %85, i32 0, i32 6
  store i32 1, i32* %bounds_valid93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.92, %do.end.22
  %86 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x195 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %86, i32 0, i32 8
  %87 = load double, double* %bounds_x195, align 8
  %88 = load double*, double** %x1.addr, align 8
  store double %87, double* %88, align 8
  %89 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y196 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %89, i32 0, i32 9
  %90 = load double, double* %bounds_y196, align 8
  %91 = load double*, double** %y1.addr, align 8
  store double %90, double* %91, align 8
  %92 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_x297 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %92, i32 0, i32 10
  %93 = load double, double* %bounds_x297, align 8
  %94 = load double*, double** %x2.addr, align 8
  store double %93, double* %94, align 8
  %95 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_y298 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %95, i32 0, i32 11
  %96 = load double, double* %bounds_y298, align 8
  %97 = load double*, double** %y2.addr, align 8
  store double %96, double* %97, align 8
  %98 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_empty99 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %98, i32 0, i32 7
  %99 = load i32, i32* %bounds_empty99, align 4
  %tobool100 = icmp ne i32 %99, 0
  %lnot = xor i1 %tobool100, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.else.20, %if.else.9
  %100 = load i32, i32* %retval
  ret i32 %100
}

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_array_free(%struct._GArray*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_interpolate(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke, double %precision, i32 %max_points, %struct._GimpCoords* %ret_coords) #3 {
entry:
  %retval = alloca i32, align 4
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %max_points.addr = alloca i32, align 4
  %ret_coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store i32 %max_points, i32* %max_points.addr, align 4
  store %struct._GimpCoords* %ret_coords, %struct._GimpCoords** %ret_coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_vectors_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %14 = bitcast %struct._GimpVectors* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpVectorsClass*
  %interpolate = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %16, i32 0, i32 12
  %17 = load i32 (%struct._GimpVectors*, %struct._GimpStroke*, double, i32, %struct._GimpCoords*)*, i32 (%struct._GimpVectors*, %struct._GimpStroke*, double, i32, %struct._GimpCoords*)** %interpolate, align 8
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %20 = load double, double* %precision.addr, align 8
  %21 = load i32, i32* %max_points.addr, align 4
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_coords.addr, align 8
  %call12 = call i32 %17(%struct._GimpVectors* %18, %struct._GimpStroke* %19, double %20, i32 %21, %struct._GimpCoords* %22)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_vectors_get_bezier(%struct._GimpVectors* %vectors) #3 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_vectors_get_bezier, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %13, i32 0, i32 5
  %14 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc, align 8
  %tobool11 = icmp ne %struct.cairo_path* %14, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call13 = call %struct.cairo_path* @gimp_vectors_make_bezier(%struct._GimpVectors* %15)
  %16 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc14 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %16, i32 0, i32 5
  store %struct.cairo_path* %call13, %struct.cairo_path** %bezier_desc14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc16 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %17, i32 0, i32 5
  %18 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc16, align 8
  store %struct.cairo_path* %18, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  %19 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.cairo_path* @gimp_vectors_make_bezier(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpVectorsClass*
  %make_bezier = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %3, i32 0, i32 13
  %4 = load %struct.cairo_path* (%struct._GimpVectors*)*, %struct.cairo_path* (%struct._GimpVectors*)** %make_bezier, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call = call %struct.cairo_path* %4(%struct._GimpVectors* %5)
  ret %struct.cairo_path* %call
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_class_init(%struct._GimpVectorsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpVectorsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  store %struct._GimpVectorsClass* %klass, %struct._GimpVectorsClass** %klass.addr, align 8
  %0 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpVectorsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpVectorsClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpVectorsClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpVectorsClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpVectorsClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i64 %14, i32 2, i32 576, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_vectors_signals, i32 0, i64 0), align 4
  %15 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpVectorsClass* %15 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i64 %17, i32 1, i32 584, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_vectors_signals, i32 0, i64 1), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_vectors_finalize, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %19, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_vectors_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_vectors_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8** %default_stock_id, align 8
  %22 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 6
  store i32 (%struct._GimpItem*)* @gimp_vectors_is_attached, i32 (%struct._GimpItem*)** %is_attached, align 8
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* @gimp_vectors_get_tree, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %24 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %24, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_vectors_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %25 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 10
  store void (%struct._GimpItem*, %struct._GimpImage*)* @gimp_vectors_convert, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %26 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %26, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_vectors_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %27 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_vectors_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_vectors_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_vectors_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %30 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_vectors_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %31 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %31, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_vectors_transform, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 18
  store i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)* @gimp_vectors_stroke, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 19
  store void (%struct._GimpItem*, i32, i32, i32, double, double)* @gimp_vectors_to_selection, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %34 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %34, i32 0, i32 21
  store i8* %call10, i8** %default_name, align 8
  %call11 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i64 10)
  %35 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %35, i32 0, i32 22
  store i8* %call11, i8** %rename_desc, align 8
  %call12 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i64 10)
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 23
  store i8* %call12, i8** %translate_desc, align 8
  %call13 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i64 10)
  %37 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %37, i32 0, i32 24
  store i8* %call13, i8** %scale_desc, align 8
  %call14 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i64 10)
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 25
  store i8* %call14, i8** %resize_desc, align 8
  %call15 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i64 10)
  %39 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 26
  store i8* %call15, i8** %flip_desc, align 8
  %call16 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i64 10)
  %40 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %40, i32 0, i32 27
  store i8* %call16, i8** %rotate_desc, align 8
  %call17 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i64 10)
  %41 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 28
  store i8* %call17, i8** %transform_desc, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i64 10)
  %42 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %42, i32 0, i32 30
  store i8* %call18, i8** %stroke_desc, align 8
  %call19 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i64 10)
  %43 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %43, i32 0, i32 29
  store i8* %call19, i8** %to_selection_desc, align 8
  %call20 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i64 10)
  %44 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %reorder_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %44, i32 0, i32 31
  store i8* %call20, i8** %reorder_desc, align 8
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i64 10)
  %45 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %45, i32 0, i32 32
  store i8* %call21, i8** %raise_desc, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i64 10)
  %46 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_to_top_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %46, i32 0, i32 33
  store i8* %call22, i8** %raise_to_top_desc, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i64 10)
  %47 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %47, i32 0, i32 34
  store i8* %call23, i8** %lower_desc, align 8
  %call24 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i64 10)
  %48 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_to_bottom_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %48, i32 0, i32 35
  store i8* %call24, i8** %lower_to_bottom_desc, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #5
  %49 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %49, i32 0, i32 36
  store i8* %call25, i8** %raise_failed, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0)) #5
  %50 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %50, i32 0, i32 37
  store i8* %call26, i8** %lower_failed, align 8
  %51 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %freeze = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %51, i32 0, i32 1
  store void (%struct._GimpVectors*)* @gimp_vectors_real_freeze, void (%struct._GimpVectors*)** %freeze, align 8
  %52 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %thaw = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %52, i32 0, i32 2
  store void (%struct._GimpVectors*)* @gimp_vectors_real_thaw, void (%struct._GimpVectors*)** %thaw, align 8
  %53 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %stroke_add = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %53, i32 0, i32 3
  store void (%struct._GimpVectors*, %struct._GimpStroke*)* @gimp_vectors_real_stroke_add, void (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_add, align 8
  %54 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %stroke_remove = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %54, i32 0, i32 4
  store void (%struct._GimpVectors*, %struct._GimpStroke*)* @gimp_vectors_real_stroke_remove, void (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_remove, align 8
  %55 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %stroke_get = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %55, i32 0, i32 5
  store %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpCoords*)* @gimp_vectors_real_stroke_get, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpCoords*)** %stroke_get, align 8
  %56 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %stroke_get_next = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %56, i32 0, i32 6
  store %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpStroke*)* @gimp_vectors_real_stroke_get_next, %struct._GimpStroke* (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_get_next, align 8
  %57 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %stroke_get_length = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %57, i32 0, i32 7
  store double (%struct._GimpVectors*, %struct._GimpStroke*)* @gimp_vectors_real_stroke_get_length, double (%struct._GimpVectors*, %struct._GimpStroke*)** %stroke_get_length, align 8
  %58 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %anchor_get = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %58, i32 0, i32 8
  store %struct._GimpAnchor* (%struct._GimpVectors*, %struct._GimpCoords*, %struct._GimpStroke**)* @gimp_vectors_real_anchor_get, %struct._GimpAnchor* (%struct._GimpVectors*, %struct._GimpCoords*, %struct._GimpStroke**)** %anchor_get, align 8
  %59 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %anchor_delete = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %59, i32 0, i32 9
  store void (%struct._GimpVectors*, %struct._GimpAnchor*)* @gimp_vectors_real_anchor_delete, void (%struct._GimpVectors*, %struct._GimpAnchor*)** %anchor_delete, align 8
  %60 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %get_length = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %60, i32 0, i32 10
  store double (%struct._GimpVectors*, %struct._GimpAnchor*)* @gimp_vectors_real_get_length, double (%struct._GimpVectors*, %struct._GimpAnchor*)** %get_length, align 8
  %61 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %get_distance = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %61, i32 0, i32 11
  store double (%struct._GimpVectors*, %struct._GimpCoords*)* @gimp_vectors_real_get_distance, double (%struct._GimpVectors*, %struct._GimpCoords*)** %get_distance, align 8
  %62 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %interpolate = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %62, i32 0, i32 12
  store i32 (%struct._GimpVectors*, %struct._GimpStroke*, double, i32, %struct._GimpCoords*)* @gimp_vectors_real_interpolate, i32 (%struct._GimpVectors*, %struct._GimpStroke*, double, i32, %struct._GimpCoords*)** %interpolate, align 8
  %63 = load %struct._GimpVectorsClass*, %struct._GimpVectorsClass** %klass.addr, align 8
  %make_bezier = getelementptr inbounds %struct._GimpVectorsClass, %struct._GimpVectorsClass* %63, i32 0, i32 13
  store %struct.cairo_path* (%struct._GimpVectors*)* @gimp_vectors_real_make_bezier, %struct.cairo_path* (%struct._GimpVectors*)** %make_bezier, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %bezier_desc = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %3, i32 0, i32 5
  %4 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc, align 8
  %tobool = icmp ne %struct.cairo_path* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %bezier_desc2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %5, i32 0, i32 5
  %6 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc2, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %6)
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %bezier_desc3 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %7, i32 0, i32 5
  store %struct.cairo_path* null, %struct.cairo_path** %bezier_desc3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes6 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %strokes6, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* @g_object_unref)
  %12 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes7 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %12, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %strokes7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_vectors_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  store i64 0, i64* %memsize, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %10 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %9, i64* %10)
  %add = add i64 %call4, 24
  %11 = load i64, i64* %memsize, align 8
  %add5 = add i64 %11, %add
  store i64 %add5, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %memsize, align 8
  %16 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call7 = call i64 @gimp_object_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call7)
  %18 = bitcast %struct._GTypeClass* %call8 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  %19 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %21 = load i64*, i64** %gui_size.addr, align 8
  %call9 = call i64 %19(%struct._GimpObject* %20, i64* %21)
  %add10 = add nsw i64 %15, %call9
  ret i64 %add10
}

declare %struct._TempBuf* @gimp_vectors_get_new_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vectors_is_attached(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_image_get_type() #7
  store i64 %call1, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %14)
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_have(%struct._GimpContainer* %call9, %struct._GimpObject* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %18 = phi i1 [ false, %if.end.7 ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItemTree* @gimp_vectors_get_tree(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_is_attached(%struct._GimpItem* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %1)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpItemTree* @gimp_image_get_vectors_tree(%struct._GimpImage* %2)
  store %struct._GimpItemTree* %call2, %struct._GimpItemTree** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %retval
  ret %struct._GimpItemTree* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_vectors_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %new_type.addr, align 8
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_vectors_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call2)
  %3 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %3, i32 0, i32 9
  %4 = load %struct._GimpItem* (%struct._GimpItem*, i64)*, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = load i64, i64* %new_type.addr, align 8
  %call4 = call %struct._GimpItem* %4(%struct._GimpItem* %5, i64 %6)
  store %struct._GimpItem* %call4, %struct._GimpItem** %new_item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_vectors_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else.8:                                        ; preds = %do.end
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else.8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else.8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_vectors_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpVectors*
  store %struct._GimpVectors* %22, %struct._GimpVectors** %vectors, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_vectors_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpVectors*
  store %struct._GimpVectors* %25, %struct._GimpVectors** %new_vectors, align 8
  %26 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  call void @gimp_vectors_copy_strokes(%struct._GimpVectors* %26, %struct._GimpVectors* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %if.end.15
  %28 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %28, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else
  %29 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %29
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call = call i32 @gimp_image_get_width(%struct._GimpImage* %1)
  %2 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call1 = call i32 @gimp_image_get_height(%struct._GimpImage* %2)
  call void @gimp_item_set_size(%struct._GimpItem* %0, i32 %call, i32 %call1)
  %3 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %5, i32 0, i32 10
  %6 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %6(%struct._GimpItem* %7, %struct._GimpImage* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %3)
  %4 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0)) #5
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call2, i8* %call3, %struct._GimpVectors* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %8, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %9, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GimpStroke*
  store %struct._GimpStroke* %12, %struct._GimpStroke** %stroke, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %14 = load i32, i32* %offset_x.addr, align 4
  %conv = sitofp i32 %14 to double
  %15 = load i32, i32* %offset_y.addr, align 4
  %conv6 = sitofp i32 %15 to double
  call void @gimp_stroke_translate(%struct._GimpStroke* %13, double %conv, double %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %16, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %4)
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call i32 @gimp_item_is_attached(%struct._GimpItem* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %6, i8* null, %struct._GimpVectors* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %10, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GimpStroke*
  store %struct._GimpStroke* %13, %struct._GimpStroke** %stroke, align 8
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %15 = load i32, i32* %new_width.addr, align 4
  %conv = sitofp i32 %15 to double
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call6 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %conv7 = sitofp i32 %call6 to double
  %div = fdiv double %conv, %conv7
  %17 = load i32, i32* %new_height.addr, align 4
  %conv8 = sitofp i32 %17 to double
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  %conv10 = sitofp i32 %call9 to double
  %div11 = fdiv double %conv8, %conv10
  call void @gimp_stroke_scale(%struct._GimpStroke* %14, double %div, double %div11)
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %20 = load i32, i32* %new_offset_x.addr, align 4
  %conv12 = sitofp i32 %20 to double
  %21 = load i32, i32* %new_offset_y.addr, align 4
  %conv13 = sitofp i32 %21 to double
  call void @gimp_stroke_translate(%struct._GimpStroke* %19, double %conv12, double %conv13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %22, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call15 = call i64 @gimp_item_get_type() #7
  %call16 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call15)
  %27 = bitcast %struct._GTypeClass* %call16 to %struct._GimpItemClass*
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 13
  %28 = load void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_get_width(%struct._GimpImage* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_height(%struct._GimpImage* %31)
  %32 = load i32, i32* %interpolation_type.addr, align 4
  %33 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %28(%struct._GimpItem* %29, i32 %call17, i32 %call18, i32 0, i32 0, i32 %32, %struct._GimpProgress* %33)
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %4)
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call i32 @gimp_item_is_attached(%struct._GimpItem* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %6, i8* null, %struct._GimpVectors* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %10, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GimpStroke*
  store %struct._GimpStroke* %13, %struct._GimpStroke** %stroke, align 8
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %15 = load i32, i32* %offset_x.addr, align 4
  %conv = sitofp i32 %15 to double
  %16 = load i32, i32* %offset_y.addr, align 4
  %conv6 = sitofp i32 %16 to double
  call void @gimp_stroke_translate(%struct._GimpStroke* %14, double %conv, double %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %17, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** @gimp_vectors_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call8)
  %22 = bitcast %struct._GTypeClass* %call9 to %struct._GimpItemClass*
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 14
  %23 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_width(%struct._GimpImage* %26)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_get_height(%struct._GimpImage* %27)
  call void %23(%struct._GimpItem* %24, %struct._GimpContext* %25, i32 %call10, i32 %call11, i32 0, i32 0)
  %28 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %3 = load i32, i32* %flip_type.addr, align 4
  %4 = load double, double* %axis.addr, align 8
  call void @gimp_transform_matrix_flip(%struct._GimpMatrix3* %matrix, i32 %3, double %4)
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %5)
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %6)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #5
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call2, i8* %call3, %struct._GimpVectors* %7)
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GimpStroke*
  store %struct._GimpStroke* %13, %struct._GimpStroke** %stroke, align 8
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %14, %struct._GimpMatrix3* %matrix)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %15, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %17, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %list = alloca %struct._GList*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %3 = load i32, i32* %rotate_type.addr, align 4
  %4 = load double, double* %center_x.addr, align 8
  %5 = load double, double* %center_y.addr, align 8
  call void @gimp_transform_matrix_rotate(%struct._GimpMatrix3* %matrix, i32 %3, double %4, double %5)
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %6)
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)) #5
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call2, i8* %call3, %struct._GimpVectors* %8)
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpStroke*
  store %struct._GimpStroke* %14, %struct._GimpStroke** %stroke, align 8
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %15, %struct._GimpMatrix3* %matrix)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %16, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %local_matrix = alloca %struct._GimpMatrix3, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_freeze(%struct._GimpVectors* %3)
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %4)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #5
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call4 = call %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage* %call2, i8* %call3, %struct._GimpVectors* %5)
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %7 = bitcast %struct._GimpMatrix3* %local_matrix to i8*
  %8 = bitcast %struct._GimpMatrix3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 72, i32 8, i1 false)
  %9 = load i32, i32* %direction.addr, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %local_matrix)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpStroke*
  store %struct._GimpStroke* %15, %struct._GimpStroke** %stroke, align 8
  %16 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %16, %struct._GimpMatrix3* %local_matrix)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %17, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_vectors_thaw(%struct._GimpVectors* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vectors_stroke(%struct._GimpItem* %item, %struct._GimpDrawable* %drawable, %struct._GimpStrokeOptions* %stroke_options, i32 %push_undo, %struct._GimpProgress* %progress, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %stroke_options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %push_undo.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %retval2 = alloca i32, align 4
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %emulate_dynamics = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpStrokeOptions* %stroke_options, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  store i32 0, i32* %retval2, align 4
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @gimp_error_quark() #7
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %5, i32 %call3, i32 0, i8* %call4)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call5 = call i32 @gimp_stroke_options_get_method(%struct._GimpStrokeOptions* %6)
  switch i32 %call5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %9 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %10 = load i32, i32* %push_undo.addr, align 4
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_drawable_stroke_vectors(%struct._GimpDrawable* %7, %struct._GimpStrokeOptions* %8, %struct._GimpVectors* %9, i32 %10, %struct._GError** %11)
  store i32 %call6, i32* %retval2, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %12 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %13 = bitcast %struct._GimpStrokeOptions* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_context_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContext*
  %call10 = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %14)
  store %struct._GimpPaintInfo* %call10, %struct._GimpPaintInfo** %paint_info, align 8
  %15 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %15, i32 0, i32 2
  %16 = load i64, i64* %paint_type, align 8
  %call11 = call i8* (i64, i8*, ...) @g_object_new(i64 %16, i8* null)
  %17 = bitcast i8* %call11 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %17, %struct._GimpPaintCore** %core, align 8
  %18 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call12 = call %struct._GimpPaintOptions* @gimp_stroke_options_get_paint_options(%struct._GimpStrokeOptions* %18)
  store %struct._GimpPaintOptions* %call12, %struct._GimpPaintOptions** %paint_options, align 8
  %19 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call13 = call i32 @gimp_stroke_options_get_emulate_dynamics(%struct._GimpStrokeOptions* %19)
  store i32 %call13, i32* %emulate_dynamics, align 4
  %20 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %23 = load i32, i32* %emulate_dynamics, align 4
  %24 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %25 = load i32, i32* %push_undo.addr, align 4
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_paint_core_stroke_vectors(%struct._GimpPaintCore* %20, %struct._GimpDrawable* %21, %struct._GimpPaintOptions* %22, i32 %23, %struct._GimpVectors* %24, i32 %25, %struct._GError** %26)
  store i32 %call14, i32* %retval2, align 4
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %28 = bitcast %struct._GimpPaintCore* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 592, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_vectors_stroke, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb
  %29 = load i32, i32* %retval2, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_to_selection(%struct._GimpItem* %item, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %2, %struct._GimpVectors** %vectors, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = bitcast %struct._GimpItem* %5 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpItemClass*
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %8, i32 0, i32 29
  %9 = load i8*, i8** %to_selection_desc, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %11 = load i32, i32* %op.addr, align 4
  %12 = load i32, i32* %antialias.addr, align 4
  %13 = load i32, i32* %feather.addr, align 4
  %14 = load double, double* %feather_radius_x.addr, align 8
  %15 = load double, double* %feather_radius_x.addr, align 8
  call void @gimp_channel_select_vectors(%struct._GimpChannel* %call3, i8* %9, %struct._GimpVectors* %10, i32 %11, i32 %12, i32 %13, double %14, double %15, i32 1)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_real_freeze(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 5
  %1 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc, align 8
  %tobool = icmp ne %struct.cairo_path* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %2, i32 0, i32 5
  %3 = load %struct.cairo_path*, %struct.cairo_path** %bezier_desc1, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %3)
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bezier_desc2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %4, i32 0, i32 5
  store %struct.cairo_path* null, %struct.cairo_path** %bezier_desc2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %bounds_valid = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %5, i32 0, i32 6
  store i32 0, i32* %bounds_valid, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_real_thaw(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_real_stroke_add(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %3 = bitcast %struct._GimpStroke* %2 to i8*
  %call = call %struct._GList* @g_list_append(%struct._GList* %1, i8* %3)
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %4, i32 0, i32 1
  store %struct._GList* %call, %struct._GList** %strokes1, align 8
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %last_stroke_ID = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %5, i32 0, i32 2
  %6 = load i32, i32* %last_stroke_ID, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %last_stroke_ID, align 4
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %last_stroke_ID2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 2
  %9 = load i32, i32* %last_stroke_ID2, align 4
  call void @gimp_stroke_set_ID(%struct._GimpStroke* %7, i32 %9)
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %11 = bitcast %struct._GimpStroke* %10 to i8*
  %call3 = call i8* @g_object_ref(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_real_stroke_remove(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %3 = bitcast %struct._GimpStroke* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes1 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %strokes1, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %call2 = call %struct._GList* @g_list_delete_link(%struct._GList* %6, %struct._GList* %7)
  %8 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes3 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %8, i32 0, i32 1
  store %struct._GList* %call2, %struct._GList** %strokes3, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %10 = bitcast %struct._GimpStroke* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpStroke* @gimp_vectors_real_stroke_get(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %minstroke = alloca %struct._GimpStroke*, align 8
  %mindist = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %minstroke, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %mindist, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStroke*
  store %struct._GimpStroke* %5, %struct._GimpStroke** %stroke, align 8
  %6 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call = call %struct._GimpAnchor* @gimp_stroke_anchor_get(%struct._GimpStroke* %6, %struct._GimpCoords* %7)
  store %struct._GimpAnchor* %call, %struct._GimpAnchor** %anchor, align 8
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %tobool1 = icmp ne %struct._GimpAnchor* %8, null
  br i1 %tobool1, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %11, i32 0, i32 0
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %12 = load double, double* %x2, align 8
  %sub = fsub double %10, %12
  store double %sub, double* %dx, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position3 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %15, i32 0, i32 0
  %y4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position3, i32 0, i32 1
  %16 = load double, double* %y4, align 8
  %sub5 = fsub double %14, %16
  store double %sub5, double* %dy, align 8
  %17 = load double, double* %mindist, align 8
  %18 = load double, double* %dx, align 8
  %19 = load double, double* %dx, align 8
  %mul = fmul double %18, %19
  %20 = load double, double* %dy, align 8
  %21 = load double, double* %dy, align 8
  %mul6 = fmul double %20, %21
  %add = fadd double %mul, %mul6
  %cmp = fcmp ogt double %17, %add
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %22 = load double, double* %dx, align 8
  %23 = load double, double* %dx, align 8
  %mul8 = fmul double %22, %23
  %24 = load double, double* %dy, align 8
  %25 = load double, double* %dy, align 8
  %mul9 = fmul double %24, %25
  %add10 = fadd double %mul8, %mul9
  store double %add10, double* %mindist, align 8
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpStroke* %26, %struct._GimpStroke** %minstroke, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %27, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %minstroke, align 8
  ret %struct._GimpStroke* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpStroke* @gimp_vectors_real_stroke_get_next(%struct._GimpVectors* %vectors, %struct._GimpStroke* %prev) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %prev.addr = alloca %struct._GimpStroke*, align 8
  %stroke = alloca %struct._GList*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %prev, %struct._GimpStroke** %prev.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %prev.addr, align 8
  %tobool = icmp ne %struct._GimpStroke* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %1, i32 0, i32 1
  %2 = load %struct._GList*, %struct._GList** %strokes, align 8
  %tobool1 = icmp ne %struct._GList* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes2 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %strokes2, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ null, %cond.false ]
  %6 = bitcast i8* %cond to %struct._GimpStroke*
  store %struct._GimpStroke* %6, %struct._GimpStroke** %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes3 = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %strokes3, align 8
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %prev.addr, align 8
  %10 = bitcast %struct._GimpStroke* %9 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %8, i8* %10)
  store %struct._GList* %call, %struct._GList** %stroke, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %11 = load %struct._GList*, %struct._GList** %stroke, align 8
  %cmp = icmp ne %struct._GList* %11, null
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else.5:                                        ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_vectors_real_stroke_get_next, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %stroke, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool6 = icmp ne %struct._GList* %13, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.12

cond.true.7:                                      ; preds = %do.end
  %14 = load %struct._GList*, %struct._GList** %stroke, align 8
  %next8 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next8, align 8
  %data9 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data9, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_stroke_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpStroke*
  br label %cond.end.13

cond.false.12:                                    ; preds = %do.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.7
  %cond14 = phi %struct._GimpStroke* [ %18, %cond.true.7 ], [ null, %cond.false.12 ]
  store %struct._GimpStroke* %cond14, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %cond.end.13, %if.else.5, %cond.end
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %19
}

; Function Attrs: nounwind uwtable
define internal double @gimp_vectors_real_stroke_get_length(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca double, align 8
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %1 = bitcast %struct._GimpVectors* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_vectors_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_vectors_real_stroke_get_length, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_stroke_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_vectors_real_stroke_get_length, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %precision = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %27, i32 0, i32 4
  %28 = load double, double* %precision, align 8
  %call39 = call double @gimp_stroke_get_length(%struct._GimpStroke* %26, double %28)
  store double %call39, double* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %29 = load double, double* %retval
  ret double %29
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpAnchor* @gimp_vectors_real_anchor_get(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord, %struct._GimpStroke** %ret_stroke) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %ret_stroke.addr = alloca %struct._GimpStroke**, align 8
  %minanchor = alloca %struct._GimpAnchor*, align 8
  %mindist = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store %struct._GimpStroke** %ret_stroke, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %minanchor, align 8
  store double -1.000000e+00, double* %mindist, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStroke*
  store %struct._GimpStroke* %5, %struct._GimpStroke** %stroke, align 8
  %6 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call = call %struct._GimpAnchor* @gimp_stroke_anchor_get(%struct._GimpStroke* %6, %struct._GimpCoords* %7)
  store %struct._GimpAnchor* %call, %struct._GimpAnchor** %anchor, align 8
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %tobool1 = icmp ne %struct._GimpAnchor* %8, null
  br i1 %tobool1, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %11, i32 0, i32 0
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %12 = load double, double* %x2, align 8
  %sub = fsub double %10, %12
  store double %sub, double* %dx, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position3 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %15, i32 0, i32 0
  %y4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position3, i32 0, i32 1
  %16 = load double, double* %y4, align 8
  %sub5 = fsub double %14, %16
  store double %sub5, double* %dy, align 8
  %17 = load double, double* %mindist, align 8
  %18 = load double, double* %dx, align 8
  %19 = load double, double* %dx, align 8
  %mul = fmul double %18, %19
  %20 = load double, double* %dy, align 8
  %21 = load double, double* %dy, align 8
  %mul6 = fmul double %20, %21
  %add = fadd double %mul, %mul6
  %cmp = fcmp ogt double %17, %add
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %22 = load double, double* %mindist, align 8
  %cmp7 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %23 = load double, double* %dx, align 8
  %24 = load double, double* %dx, align 8
  %mul9 = fmul double %23, %24
  %25 = load double, double* %dy, align 8
  %26 = load double, double* %dy, align 8
  %mul10 = fmul double %25, %26
  %add11 = fadd double %mul9, %mul10
  store double %add11, double* %mindist, align 8
  %27 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  store %struct._GimpAnchor* %27, %struct._GimpAnchor** %minanchor, align 8
  %28 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  %tobool12 = icmp ne %struct._GimpStroke** %28, null
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.8
  %29 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %30 = load %struct._GimpStroke**, %struct._GimpStroke*** %ret_stroke.addr, align 8
  store %struct._GimpStroke* %29, %struct._GimpStroke** %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %lor.lhs.false
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool16 = icmp ne %struct._GList* %31, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpAnchor*, %struct._GimpAnchor** %minanchor, align 8
  ret %struct._GimpAnchor* %34
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_real_anchor_delete(%struct._GimpVectors* %vectors, %struct._GimpAnchor* %anchor) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_vectors_real_get_length(%struct._GimpVectors* %vectors, %struct._GimpAnchor* %start) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %start.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpAnchor* %start, %struct._GimpAnchor** %start.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0))
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define internal double @gimp_vectors_real_get_distance(%struct._GimpVectors* %vectors, %struct._GimpCoords* %coord) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0))
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_vectors_real_interpolate(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke, double %precision, i32 %max_points, %struct._GimpCoords* %ret_coords) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %max_points.addr = alloca i32, align 4
  %ret_coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store i32 %max_points, i32* %max_points.addr, align 4
  store %struct._GimpCoords* %ret_coords, %struct._GimpCoords** %ret_coords.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct.cairo_path* @gimp_vectors_real_make_bezier(%struct._GimpVectors* %vectors) #3 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %cmd_array = alloca %struct._GArray*, align 8
  %ret_bezdesc = alloca %struct.cairo_path*, align 8
  %bezdesc = alloca %struct.cairo_path*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct.cairo_path* null, %struct.cairo_path** %ret_bezdesc, align 8
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 16)
  store %struct._GArray* %call, %struct._GArray** %cmd_array, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %call1 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %0, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call1, %struct._GimpStroke** %stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call2 = call %struct.cairo_path* @gimp_stroke_make_bezier(%struct._GimpStroke* %2)
  store %struct.cairo_path* %call2, %struct.cairo_path** %bezdesc, align 8
  %3 = load %struct.cairo_path*, %struct.cairo_path** %bezdesc, align 8
  %tobool3 = icmp ne %struct.cairo_path* %3, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %5 = load %struct.cairo_path*, %struct.cairo_path** %bezdesc, align 8
  %data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %5, i32 0, i32 1
  %6 = load %union._cairo_path_data_t*, %union._cairo_path_data_t** %data, align 8
  %7 = bitcast %union._cairo_path_data_t* %6 to i8*
  %8 = load %struct.cairo_path*, %struct.cairo_path** %bezdesc, align 8
  %num_data = getelementptr inbounds %struct.cairo_path, %struct.cairo_path* %8, i32 0, i32 2
  %9 = load i32, i32* %num_data, align 4
  %call4 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %4, i8* %7, i32 %9)
  store %struct._GArray* %call4, %struct._GArray** %cmd_array, align 8
  %10 = load %struct.cairo_path*, %struct.cairo_path** %bezdesc, align 8
  call void @gimp_bezier_desc_free(%struct.cairo_path* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call5 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %11, %struct._GimpStroke* %12)
  store %struct._GimpStroke* %call5, %struct._GimpStroke** %stroke, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %13, i32 0, i32 1
  %14 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %14, 0
  br i1 %cmp, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %for.end
  %15 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %data7 = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 0
  %16 = load i8*, i8** %data7, align 8
  %17 = bitcast i8* %16 to %union._cairo_path_data_t*
  %18 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %len8 = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 1
  %19 = load i32, i32* %len8, align 4
  %call9 = call %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t* %17, i32 %19)
  store %struct.cairo_path* %call9, %struct.cairo_path** %ret_bezdesc, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %for.end
  %20 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %call11 = call i8* @g_array_free(%struct._GArray* %20, i32 0)
  %21 = load %struct.cairo_path*, %struct.cairo_path** %ret_bezdesc, align 8
  ret %struct.cairo_path* %21
}

declare void @gimp_bezier_desc_free(%struct.cairo_path*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpItemTree* @gimp_image_get_vectors_tree(%struct._GimpImage*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare void @gimp_item_set_size(%struct._GimpItem*, i32, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push_vectors_mod(%struct._GimpImage*, i8*, %struct._GimpVectors*) #1

declare void @gimp_stroke_translate(%struct._GimpStroke*, double, double) #1

declare void @gimp_stroke_scale(%struct._GimpStroke*, double, double) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_flip(%struct._GimpMatrix3*, i32, double) #1

declare void @gimp_stroke_transform(%struct._GimpStroke*, %struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_rotate(%struct._GimpMatrix3*, i32, double, double) #1

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare i32 @gimp_stroke_options_get_method(%struct._GimpStrokeOptions*) #1

declare i32 @gimp_drawable_stroke_vectors(%struct._GimpDrawable*, %struct._GimpStrokeOptions*, %struct._GimpVectors*, i32, %struct._GError**) #1

declare %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpPaintOptions* @gimp_stroke_options_get_paint_options(%struct._GimpStrokeOptions*) #1

declare i32 @gimp_stroke_options_get_emulate_dynamics(%struct._GimpStrokeOptions*) #1

declare i32 @gimp_paint_core_stroke_vectors(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, %struct._GimpVectors*, i32, %struct._GError**) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gimp_channel_select_vectors(%struct._GimpChannel*, i8*, %struct._GimpVectors*, i32, i32, i32, double, double, i32) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #1

declare %struct._GimpAnchor* @gimp_stroke_anchor_get(%struct._GimpStroke*, %struct._GimpCoords*) #1

declare double @gimp_stroke_get_length(%struct._GimpStroke*, double) #1

declare void @g_printerr(i8*, ...) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare %struct.cairo_path* @gimp_stroke_make_bezier(%struct._GimpStroke*) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t*, i32) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
