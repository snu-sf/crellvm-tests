; ModuleID = './app/paint/gimpperspectiveclone.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPerspectiveCloneClass = type { %struct._GimpCloneClass }
%struct._GimpCloneClass = type { %struct._GimpSourceCoreClass }
%struct._GimpSourceCoreClass = type { %struct._GimpBrushCoreClass, i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)*, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)* }
%struct._GimpBrushCoreClass = type { %struct._GimpPaintCoreClass, i32, i32, i32, void (%struct._GimpBrushCore*, %struct._GimpBrush*)*, void (%struct._GimpBrushCore*, %struct._GimpDynamics*)* }
%struct._GimpPaintCoreClass = type { %struct._GimpObjectClass, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)*, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)*, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)* }
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
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GArray = type { i8*, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GimpUndo = type opaque
%struct._GimpBrushCore = type { %struct._GimpPaintCore, %struct._GimpBrush*, %struct._GimpBrush*, %struct._GimpDynamics*, double, double, double, double, double, %struct._TempBuf*, [2 x [2 x %struct._TempBuf*]], %struct._TempBuf*, i32, %struct._TempBuf*, %struct._TempBuf*, [5 x [5 x %struct._TempBuf*]], %struct._TempBuf*, i32, double, [360 x double], [360 x double], %struct._GRand* }
%struct._GRand = type opaque
%struct._GimpSourceCore = type { %struct._GimpBrushCore, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32 }
%struct._GimpPickable = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpPerspectiveClone = type { %struct._GimpClone, double, double, double, double, %struct._GimpMatrix3, %struct._GimpMatrix3, %struct._TempBuf* }
%struct._GimpClone = type { %struct._GimpSourceCore }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpSourceOptions = type { %struct._GimpPaintOptions, i32, i32, i32 }

@gimp_perspective_clone_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpPerspectiveClone\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-perspective-clone\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Perspective Clone\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"gimp-tool-perspective-clone\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_perspective_clone_set_transform = private unnamed_addr constant [37 x i8] c"gimp_perspective_clone_set_transform\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PERSPECTIVE_CLONE (clone)\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"transform != NULL\00", align 1
@__func__.gimp_perspective_clone_get_source_point = private unnamed_addr constant [40 x i8] c"gimp_perspective_clone_get_source_point\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"newx != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"newy != NULL\00", align 1
@gimp_perspective_clone_parent_class = internal global i8* null, align 8
@GimpPerspectiveClone_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"Perspective Clone does not operate on indexed layers.\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"src-drawable\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"src-x\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"src-y\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_perspective_clone_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_perspective_clone_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_perspective_clone_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_clone_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 264, void (i8*, i8*)* bitcast (void (i8*)* @gimp_perspective_clone_class_intern_init to void (i8*, i8*)*), i32 6736, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPerspectiveClone*)* @gimp_perspective_clone_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_perspective_clone_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_perspective_clone_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_perspective_clone_parent_class, align 8
  %1 = load i32, i32* @GimpPerspectiveClone_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPerspectiveClone_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPerspectiveCloneClass*
  call void @gimp_perspective_clone_class_init(%struct._GimpPerspectiveCloneClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_init(%struct._GimpPerspectiveClone* %clone) #3 {
entry:
  %clone.addr = alloca %struct._GimpPerspectiveClone*, align 8
  store %struct._GimpPerspectiveClone* %clone, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %0 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %0, i32 0, i32 1
  store double 0.000000e+00, double* %src_x_fv, align 8
  %1 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %1, i32 0, i32 2
  store double 0.000000e+00, double* %src_y_fv, align 8
  %2 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %2, i32 0, i32 3
  store double 0.000000e+00, double* %dest_x_fv, align 8
  %3 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %3, i32 0, i32 4
  store double 0.000000e+00, double* %dest_y_fv, align 8
  %4 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %4, i32 0, i32 5
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %5 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform_inv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %5, i32 0, i32 6
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform_inv)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_perspective_clone_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_perspective_clone_get_type() #7
  %call1 = call i64 @gimp_perspective_clone_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_perspective_clone_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_perspective_clone_set_transform(%struct._GimpPerspectiveClone* %clone, %struct._GimpMatrix3* %transform) #3 {
entry:
  %clone.addr = alloca %struct._GimpPerspectiveClone*, align 8
  %transform.addr = alloca %struct._GimpMatrix3*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPerspectiveClone* %clone, %struct._GimpPerspectiveClone** %clone.addr, align 8
  store %struct._GimpMatrix3* %transform, %struct._GimpMatrix3** %transform.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveClone* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_perspective_clone_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_perspective_clone_set_transform, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %cmp12 = icmp ne %struct._GimpMatrix3* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_perspective_clone_set_transform, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform17 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %14, i32 0, i32 5
  %15 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %transform.addr, align 8
  %16 = bitcast %struct._GimpMatrix3* %transform17 to i8*
  %17 = bitcast %struct._GimpMatrix3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 72, i32 8, i1 false)
  %18 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform_inv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %18, i32 0, i32 6
  %19 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform18 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %19, i32 0, i32 5
  %20 = bitcast %struct._GimpMatrix3* %transform_inv to i8*
  %21 = bitcast %struct._GimpMatrix3* %transform18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 72, i32 8, i1 false)
  %22 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform_inv19 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %22, i32 0, i32 6
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %transform_inv19)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #1

; Function Attrs: nounwind uwtable
define void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %clone, double %x, double %y, double* %newx, double* %newy) #3 {
entry:
  %clone.addr = alloca %struct._GimpPerspectiveClone*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %newx.addr = alloca double*, align 8
  %newy.addr = alloca double*, align 8
  %temp_x = alloca double, align 8
  %temp_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPerspectiveClone* %clone, %struct._GimpPerspectiveClone** %clone.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double* %newx, double** %newx.addr, align 8
  store double* %newy, double** %newy.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveClone* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_perspective_clone_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_perspective_clone_get_source_point, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double*, double** %newx.addr, align 8
  %cmp12 = icmp ne double* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_perspective_clone_get_source_point, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load double*, double** %newy.addr, align 8
  %cmp18 = icmp ne double* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_perspective_clone_get_source_point, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform_inv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %15, i32 0, i32 6
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %y.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform_inv, double %16, double %17, double* %temp_x, double* %temp_y)
  %18 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %18, i32 0, i32 1
  %19 = load double, double* %src_x_fv, align 8
  %20 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %20, i32 0, i32 3
  %21 = load double, double* %dest_x_fv, align 8
  %sub = fsub double %19, %21
  %22 = load double, double* %temp_x, align 8
  %add = fadd double %22, %sub
  store double %add, double* %temp_x, align 8
  %23 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %23, i32 0, i32 2
  %24 = load double, double* %src_y_fv, align 8
  %25 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %25, i32 0, i32 4
  %26 = load double, double* %dest_y_fv, align 8
  %sub23 = fsub double %24, %26
  %27 = load double, double* %temp_y, align 8
  %add24 = fadd double %27, %sub23
  store double %add24, double* %temp_y, align 8
  %28 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %28, i32 0, i32 5
  %29 = load double, double* %temp_x, align 8
  %30 = load double, double* %temp_y, align 8
  %31 = load double*, double** %newx.addr, align 8
  %32 = load double*, double** %newy.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform, double %29, double %30, double* %31, double* %32)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_class_init(%struct._GimpPerspectiveCloneClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPerspectiveCloneClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %source_core_class = alloca %struct._GimpSourceCoreClass*, align 8
  store %struct._GimpPerspectiveCloneClass* %klass, %struct._GimpPerspectiveCloneClass** %klass.addr, align 8
  %0 = load %struct._GimpPerspectiveCloneClass*, %struct._GimpPerspectiveCloneClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPerspectiveCloneClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPerspectiveCloneClass*, %struct._GimpPerspectiveCloneClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPerspectiveCloneClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GimpPerspectiveCloneClass*, %struct._GimpPerspectiveCloneClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPerspectiveCloneClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_source_core_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpSourceCoreClass*
  store %struct._GimpSourceCoreClass* %8, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_perspective_clone_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %10, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_perspective_clone_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %11 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %11, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_perspective_clone_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %12 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %get_source = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %12, i32 0, i32 1
  store i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)* @gimp_perspective_clone_get_source, i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)** %get_source, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_source_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %2, %struct._GimpPerspectiveClone** %clone, align 8
  %3 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %3, i32 0, i32 7
  %4 = load %struct._TempBuf*, %struct._TempBuf** %src_area, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area2 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %5, i32 0, i32 7
  %6 = load %struct._TempBuf*, %struct._TempBuf** %src_area2, align 8
  call void @temp_buf_free(%struct._TempBuf* %6)
  %7 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area3 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %7, i32 0, i32 7
  store %struct._TempBuf* null, %struct._TempBuf** %src_area3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_perspective_clone_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_perspective_clone_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load i8*, i8** @gimp_perspective_clone_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_paint_core_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpPaintCoreClass*
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %5, i32 0, i32 1
  %6 = load i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 %6(%struct._GimpPaintCore* %7, %struct._GimpDrawable* %8, %struct._GimpPaintOptions* %9, %struct._GimpCoords* %10, %struct._GError** %11)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %12, i32 0, i32 1
  %13 = load i32, i32* %set_source, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.end.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call6 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %land.lhs.true
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_error_quark() #7
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %15, i32 %call9, i32 0, i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.8, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %dest_x = alloca i32, align 4
  %dest_y = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %4 = bitcast %struct._GimpPaintCore* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_perspective_clone_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %5, %struct._GimpPerspectiveClone** %clone, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_source_options_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %8, %struct._GimpSourceOptions** %options, align 8
  %9 = load i32, i32* %paint_state.addr, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %entry
  %10 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %10, i32 0, i32 1
  %11 = load i32, i32* %set_source, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %12 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %13 = bitcast %struct._GimpSourceCore* %12 to i8*
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._GimpDrawable* %14, i8* null)
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %17 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %17, i32 0, i32 3
  store double %16, double* %src_x, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 1
  %19 = load double, double* %y, align 8
  %20 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %20, i32 0, i32 4
  store double %19, double* %src_y, align 8
  %21 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %transform_inv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %21, i32 0, i32 6
  %22 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x6 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %22, i32 0, i32 3
  %23 = load double, double* %src_x6, align 8
  %24 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y7 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %24, i32 0, i32 4
  %25 = load double, double* %src_y7, align 8
  %26 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %26, i32 0, i32 1
  %27 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %27, i32 0, i32 2
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform_inv, double %23, double %25, double* %src_x_fv, double* %src_y_fv)
  %28 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %28, i32 0, i32 9
  store i32 1, i32* %first_stroke, align 4
  br label %if.end.12

if.else:                                          ; preds = %sw.bb
  %29 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %29, i32 0, i32 1
  %30 = load i32, i32* %align_mode, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %31 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x9 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %31, i32 0, i32 3
  %32 = load double, double* %src_x9, align 8
  %33 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %33, i32 0, i32 5
  store double %32, double* %orig_src_x, align 8
  %34 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y10 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %34, i32 0, i32 4
  %35 = load double, double* %src_y10, align 8
  %36 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %36, i32 0, i32 6
  store double %35, double* %orig_src_y, align 8
  %37 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke11 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %37, i32 0, i32 9
  store i32 1, i32* %first_stroke11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %38 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source14 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %38, i32 0, i32 1
  %39 = load i32, i32* %set_source14, align 4
  %tobool15 = icmp ne i32 %39, 0
  br i1 %tobool15, label %if.then.16, label %if.else.27

if.then.16:                                       ; preds = %sw.bb.13
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 0
  %41 = load double, double* %x17, align 8
  %42 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x18 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %42, i32 0, i32 3
  store double %41, double* %src_x18, align 8
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 1
  %44 = load double, double* %y19, align 8
  %45 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y20 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %45, i32 0, i32 4
  store double %44, double* %src_y20, align 8
  %46 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %transform_inv21 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %46, i32 0, i32 6
  %47 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x22 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %47, i32 0, i32 3
  %48 = load double, double* %src_x22, align 8
  %49 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y23 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %49, i32 0, i32 4
  %50 = load double, double* %src_y23, align 8
  %51 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_x_fv24 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %51, i32 0, i32 1
  %52 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_y_fv25 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %52, i32 0, i32 2
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform_inv21, double %48, double %50, double* %src_x_fv24, double* %src_y_fv25)
  %53 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke26 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %53, i32 0, i32 9
  store i32 1, i32* %first_stroke26, align 4
  br label %if.end.66

if.else.27:                                       ; preds = %sw.bb.13
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 0
  %55 = load double, double* %x28, align 8
  %conv = fptosi double %55 to i32
  store i32 %conv, i32* %dest_x, align 4
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 1
  %57 = load double, double* %y29, align 8
  %conv30 = fptosi double %57 to i32
  store i32 %conv30, i32* %dest_y, align 4
  %58 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode31 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %58, i32 0, i32 1
  %59 = load i32, i32* %align_mode31, align 4
  %cmp32 = icmp eq i32 %59, 2
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.27
  %60 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %60, i32 0, i32 7
  store double 0.000000e+00, double* %offset_x, align 8
  %61 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %61, i32 0, i32 8
  store double 0.000000e+00, double* %offset_y, align 8
  br label %if.end.65

if.else.35:                                       ; preds = %if.else.27
  %62 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode36 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %62, i32 0, i32 1
  %63 = load i32, i32* %align_mode36, align 4
  %cmp37 = icmp eq i32 %63, 3
  br i1 %cmp37, label %if.then.39, label %if.else.47

if.then.39:                                       ; preds = %if.else.35
  %64 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x40 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %64, i32 0, i32 3
  %65 = load double, double* %src_x40, align 8
  %66 = load i32, i32* %dest_x, align 4
  %conv41 = sitofp i32 %66 to double
  %sub = fsub double %65, %conv41
  %67 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x42 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %67, i32 0, i32 7
  store double %sub, double* %offset_x42, align 8
  %68 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y43 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %68, i32 0, i32 4
  %69 = load double, double* %src_y43, align 8
  %70 = load i32, i32* %dest_y, align 4
  %conv44 = sitofp i32 %70 to double
  %sub45 = fsub double %69, %conv44
  %71 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y46 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %71, i32 0, i32 8
  store double %sub45, double* %offset_y46, align 8
  br label %if.end.64

if.else.47:                                       ; preds = %if.else.35
  %72 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke48 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %72, i32 0, i32 9
  %73 = load i32, i32* %first_stroke48, align 4
  %tobool49 = icmp ne i32 %73, 0
  br i1 %tobool49, label %if.then.50, label %if.end.63

if.then.50:                                       ; preds = %if.else.47
  %74 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x51 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %74, i32 0, i32 3
  %75 = load double, double* %src_x51, align 8
  %76 = load i32, i32* %dest_x, align 4
  %conv52 = sitofp i32 %76 to double
  %sub53 = fsub double %75, %conv52
  %77 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x54 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %77, i32 0, i32 7
  store double %sub53, double* %offset_x54, align 8
  %78 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y55 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %78, i32 0, i32 4
  %79 = load double, double* %src_y55, align 8
  %80 = load i32, i32* %dest_y, align 4
  %conv56 = sitofp i32 %80 to double
  %sub57 = fsub double %79, %conv56
  %81 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y58 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %81, i32 0, i32 8
  store double %sub57, double* %offset_y58, align 8
  %82 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %transform_inv59 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %82, i32 0, i32 6
  %83 = load i32, i32* %dest_x, align 4
  %conv60 = sitofp i32 %83 to double
  %84 = load i32, i32* %dest_y, align 4
  %conv61 = sitofp i32 %84 to double
  %85 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %dest_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %85, i32 0, i32 3
  %86 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %dest_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %86, i32 0, i32 4
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %transform_inv59, double %conv60, double %conv61, double* %dest_x_fv, double* %dest_y_fv)
  %87 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke62 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %87, i32 0, i32 9
  store i32 0, i32* %first_stroke62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.50, %if.else.47
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.39
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.34
  %88 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %90 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %91 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_source_core_motion(%struct._GimpSourceCore* %88, %struct._GimpDrawable* %89, %struct._GimpPaintOptions* %90, %struct._GimpCoords* %91)
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.16
  br label %sw.epilog

sw.bb.67:                                         ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.67, %if.end.66, %if.end.12
  %92 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %93 = bitcast %struct._GimpPerspectiveClone* %92 to %struct._GTypeInstance*
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 80)
  %94 = bitcast %struct._GTypeInstance* %call68 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %95 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %96 = bitcast %struct._GimpPerspectiveClone* %95 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 80)
  %97 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_perspective_clone_get_source(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpPickable* %src_pickable, i32 %src_offset_x, i32 %src_offset_y, %struct._TempBuf* %paint_area, i32* %paint_area_offset_x, i32* %paint_area_offset_y, i32* %paint_area_width, i32* %paint_area_height, %struct._PixelRegion* %srcPR) #3 {
entry:
  %retval = alloca i32, align 4
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %src_pickable.addr = alloca %struct._GimpPickable*, align 8
  %src_offset_x.addr = alloca i32, align 4
  %src_offset_y.addr = alloca i32, align 4
  %paint_area.addr = alloca %struct._TempBuf*, align 8
  %paint_area_offset_x.addr = alloca i32*, align 8
  %paint_area_offset_y.addr = alloca i32*, align 8
  %paint_area_width.addr = alloca i32*, align 8
  %paint_area_height.addr = alloca i32*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %clone = alloca %struct._GimpPerspectiveClone*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %src_image = alloca %struct._GimpImage*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %src_type = alloca i32, align 4
  %x1d = alloca i32, align 4
  %y1d = alloca i32, align 4
  %x2d = alloca i32, align 4
  %y2d = alloca i32, align 4
  %x1s = alloca double, align 8
  %y1s = alloca double, align 8
  %x2s = alloca double, align 8
  %y2s = alloca double, align 8
  %x3s = alloca double, align 8
  %y3s = alloca double, align 8
  %x4s = alloca double, align 8
  %y4s = alloca double, align 8
  %xmin = alloca i32, align 4
  %ymin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymax = alloca i32, align 4
  %src_tiles = alloca %struct._TileManager*, align 8
  %orig_tiles = alloca %struct._TileManager*, align 8
  %origPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %bytes = alloca i32, align 4
  %orig = alloca %struct._TempBuf*, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpPickable* %src_pickable, %struct._GimpPickable** %src_pickable.addr, align 8
  store i32 %src_offset_x, i32* %src_offset_x.addr, align 4
  store i32 %src_offset_y, i32* %src_offset_y.addr, align 4
  store %struct._TempBuf* %paint_area, %struct._TempBuf** %paint_area.addr, align 8
  store i32* %paint_area_offset_x, i32** %paint_area_offset_x.addr, align 8
  store i32* %paint_area_offset_y, i32** %paint_area_offset_y.addr, align 8
  store i32* %paint_area_width, i32** %paint_area_width.addr, align 8
  store i32* %paint_area_height, i32** %paint_area_height.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  %0 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %1 = bitcast %struct._GimpSourceCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_perspective_clone_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPerspectiveClone*
  store %struct._GimpPerspectiveClone* %2, %struct._GimpPerspectiveClone** %clone, align 8
  %3 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %4 = bitcast %struct._GimpSourceCore* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_core_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %5, %struct._GimpPaintCore** %paint_core, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_source_options_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %8, %struct._GimpSourceOptions** %options, align 8
  %9 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call6 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %9)
  store %struct._GimpImage* %call6, %struct._GimpImage** %src_image, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call10 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %13)
  store i32 %call10, i32* %src_type, align 4
  %14 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call11 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %14)
  store %struct._TileManager* %call11, %struct._TileManager** %src_tiles, align 8
  %15 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %15, i32 0, i32 3
  %16 = load i32, i32* %x, align 4
  store i32 %16, i32* %x1d, align 4
  %17 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 4
  %18 = load i32, i32* %y, align 4
  store i32 %18, i32* %y1d, align 4
  %19 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 3
  %20 = load i32, i32* %x12, align 4
  %21 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %21, i32 0, i32 1
  %22 = load i32, i32* %width, align 4
  %add = add nsw i32 %20, %22
  store i32 %add, i32* %x2d, align 4
  %23 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %23, i32 0, i32 4
  %24 = load i32, i32* %y13, align 4
  %25 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %25, i32 0, i32 2
  %26 = load i32, i32* %height, align 4
  %add14 = add nsw i32 %24, %26
  store i32 %add14, i32* %y2d, align 4
  %27 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %28 = load i32, i32* %x1d, align 4
  %conv = sitofp i32 %28 to double
  %29 = load i32, i32* %y1d, align 4
  %conv15 = sitofp i32 %29 to double
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %27, double %conv, double %conv15, double* %x1s, double* %y1s)
  %30 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %31 = load i32, i32* %x1d, align 4
  %conv16 = sitofp i32 %31 to double
  %32 = load i32, i32* %y2d, align 4
  %conv17 = sitofp i32 %32 to double
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %30, double %conv16, double %conv17, double* %x2s, double* %y2s)
  %33 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %34 = load i32, i32* %x2d, align 4
  %conv18 = sitofp i32 %34 to double
  %35 = load i32, i32* %y1d, align 4
  %conv19 = sitofp i32 %35 to double
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %33, double %conv18, double %conv19, double* %x3s, double* %y3s)
  %36 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %37 = load i32, i32* %x2d, align 4
  %conv20 = sitofp i32 %37 to double
  %38 = load i32, i32* %y2d, align 4
  %conv21 = sitofp i32 %38 to double
  call void @gimp_perspective_clone_get_source_point(%struct._GimpPerspectiveClone* %36, double %conv20, double %conv21, double* %x4s, double* %y4s)
  %39 = load double, double* %x1s, align 8
  %40 = load double, double* %x2s, align 8
  %cmp = fcmp olt double %39, %40
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %41 = load double, double* %x1s, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %42 = load double, double* %x2s, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %41, %cond.true ], [ %42, %cond.false ]
  %43 = load double, double* %x3s, align 8
  %44 = load double, double* %x4s, align 8
  %cmp23 = fcmp olt double %43, %44
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end
  %45 = load double, double* %x3s, align 8
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end
  %46 = load double, double* %x4s, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi double [ %45, %cond.true.25 ], [ %46, %cond.false.26 ]
  %cmp29 = fcmp olt double %cond, %cond28
  br i1 %cmp29, label %cond.true.31, label %cond.false.38

cond.true.31:                                     ; preds = %cond.end.27
  %47 = load double, double* %x1s, align 8
  %48 = load double, double* %x2s, align 8
  %cmp32 = fcmp olt double %47, %48
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.true.31
  %49 = load double, double* %x1s, align 8
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.true.31
  %50 = load double, double* %x2s, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi double [ %49, %cond.true.34 ], [ %50, %cond.false.35 ]
  br label %cond.end.45

cond.false.38:                                    ; preds = %cond.end.27
  %51 = load double, double* %x3s, align 8
  %52 = load double, double* %x4s, align 8
  %cmp39 = fcmp olt double %51, %52
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.38
  %53 = load double, double* %x3s, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.false.38
  %54 = load double, double* %x4s, align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi double [ %53, %cond.true.41 ], [ %54, %cond.false.42 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.end.36
  %cond46 = phi double [ %cond37, %cond.end.36 ], [ %cond44, %cond.end.43 ]
  %call47 = call double @floor(double %cond46) #7
  %conv48 = fptosi double %call47 to i32
  store i32 %conv48, i32* %xmin, align 4
  %55 = load double, double* %y1s, align 8
  %56 = load double, double* %y2s, align 8
  %cmp49 = fcmp olt double %55, %56
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.45
  %57 = load double, double* %y1s, align 8
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.45
  %58 = load double, double* %y2s, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi double [ %57, %cond.true.51 ], [ %58, %cond.false.52 ]
  %59 = load double, double* %y3s, align 8
  %60 = load double, double* %y4s, align 8
  %cmp55 = fcmp olt double %59, %60
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.53
  %61 = load double, double* %y3s, align 8
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.53
  %62 = load double, double* %y4s, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi double [ %61, %cond.true.57 ], [ %62, %cond.false.58 ]
  %cmp61 = fcmp olt double %cond54, %cond60
  br i1 %cmp61, label %cond.true.63, label %cond.false.70

cond.true.63:                                     ; preds = %cond.end.59
  %63 = load double, double* %y1s, align 8
  %64 = load double, double* %y2s, align 8
  %cmp64 = fcmp olt double %63, %64
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.true.63
  %65 = load double, double* %y1s, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.true.63
  %66 = load double, double* %y2s, align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.66
  %cond69 = phi double [ %65, %cond.true.66 ], [ %66, %cond.false.67 ]
  br label %cond.end.77

cond.false.70:                                    ; preds = %cond.end.59
  %67 = load double, double* %y3s, align 8
  %68 = load double, double* %y4s, align 8
  %cmp71 = fcmp olt double %67, %68
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false.70
  %69 = load double, double* %y3s, align 8
  br label %cond.end.75

cond.false.74:                                    ; preds = %cond.false.70
  %70 = load double, double* %y4s, align 8
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %cond76 = phi double [ %69, %cond.true.73 ], [ %70, %cond.false.74 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.end.68
  %cond78 = phi double [ %cond69, %cond.end.68 ], [ %cond76, %cond.end.75 ]
  %call79 = call double @floor(double %cond78) #7
  %conv80 = fptosi double %call79 to i32
  store i32 %conv80, i32* %ymin, align 4
  %71 = load double, double* %x1s, align 8
  %72 = load double, double* %x2s, align 8
  %cmp81 = fcmp ogt double %71, %72
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end.77
  %73 = load double, double* %x1s, align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.77
  %74 = load double, double* %x2s, align 8
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi double [ %73, %cond.true.83 ], [ %74, %cond.false.84 ]
  %75 = load double, double* %x3s, align 8
  %76 = load double, double* %x4s, align 8
  %cmp87 = fcmp ogt double %75, %76
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.end.85
  %77 = load double, double* %x3s, align 8
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.85
  %78 = load double, double* %x4s, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi double [ %77, %cond.true.89 ], [ %78, %cond.false.90 ]
  %cmp93 = fcmp ogt double %cond86, %cond92
  br i1 %cmp93, label %cond.true.95, label %cond.false.102

cond.true.95:                                     ; preds = %cond.end.91
  %79 = load double, double* %x1s, align 8
  %80 = load double, double* %x2s, align 8
  %cmp96 = fcmp ogt double %79, %80
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.true.95
  %81 = load double, double* %x1s, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.true.95
  %82 = load double, double* %x2s, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi double [ %81, %cond.true.98 ], [ %82, %cond.false.99 ]
  br label %cond.end.109

cond.false.102:                                   ; preds = %cond.end.91
  %83 = load double, double* %x3s, align 8
  %84 = load double, double* %x4s, align 8
  %cmp103 = fcmp ogt double %83, %84
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.false.102
  %85 = load double, double* %x3s, align 8
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.false.102
  %86 = load double, double* %x4s, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi double [ %85, %cond.true.105 ], [ %86, %cond.false.106 ]
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.end.107, %cond.end.100
  %cond110 = phi double [ %cond101, %cond.end.100 ], [ %cond108, %cond.end.107 ]
  %call111 = call double @ceil(double %cond110) #7
  %conv112 = fptosi double %call111 to i32
  store i32 %conv112, i32* %xmax, align 4
  %87 = load double, double* %y1s, align 8
  %88 = load double, double* %y2s, align 8
  %cmp113 = fcmp ogt double %87, %88
  br i1 %cmp113, label %cond.true.115, label %cond.false.116

cond.true.115:                                    ; preds = %cond.end.109
  %89 = load double, double* %y1s, align 8
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.109
  %90 = load double, double* %y2s, align 8
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.115
  %cond118 = phi double [ %89, %cond.true.115 ], [ %90, %cond.false.116 ]
  %91 = load double, double* %y3s, align 8
  %92 = load double, double* %y4s, align 8
  %cmp119 = fcmp ogt double %91, %92
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.117
  %93 = load double, double* %y3s, align 8
  br label %cond.end.123

cond.false.122:                                   ; preds = %cond.end.117
  %94 = load double, double* %y4s, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.121
  %cond124 = phi double [ %93, %cond.true.121 ], [ %94, %cond.false.122 ]
  %cmp125 = fcmp ogt double %cond118, %cond124
  br i1 %cmp125, label %cond.true.127, label %cond.false.134

cond.true.127:                                    ; preds = %cond.end.123
  %95 = load double, double* %y1s, align 8
  %96 = load double, double* %y2s, align 8
  %cmp128 = fcmp ogt double %95, %96
  br i1 %cmp128, label %cond.true.130, label %cond.false.131

cond.true.130:                                    ; preds = %cond.true.127
  %97 = load double, double* %y1s, align 8
  br label %cond.end.132

cond.false.131:                                   ; preds = %cond.true.127
  %98 = load double, double* %y2s, align 8
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.130
  %cond133 = phi double [ %97, %cond.true.130 ], [ %98, %cond.false.131 ]
  br label %cond.end.141

cond.false.134:                                   ; preds = %cond.end.123
  %99 = load double, double* %y3s, align 8
  %100 = load double, double* %y4s, align 8
  %cmp135 = fcmp ogt double %99, %100
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %cond.false.134
  %101 = load double, double* %y3s, align 8
  br label %cond.end.139

cond.false.138:                                   ; preds = %cond.false.134
  %102 = load double, double* %y4s, align 8
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.137
  %cond140 = phi double [ %101, %cond.true.137 ], [ %102, %cond.false.138 ]
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.end.139, %cond.end.132
  %cond142 = phi double [ %cond133, %cond.end.132 ], [ %cond140, %cond.end.139 ]
  %call143 = call double @ceil(double %cond142) #7
  %conv144 = fptosi double %call143 to i32
  store i32 %conv144, i32* %ymax, align 4
  %103 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %103, 1
  %104 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call145 = call i32 @tile_manager_width(%struct._TileManager* %104)
  %cmp146 = icmp sgt i32 %sub, %call145
  br i1 %cmp146, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.end.141
  %105 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call149 = call i32 @tile_manager_width(%struct._TileManager* %105)
  br label %cond.end.159

cond.false.150:                                   ; preds = %cond.end.141
  %106 = load i32, i32* %xmin, align 4
  %sub151 = sub nsw i32 %106, 1
  %cmp152 = icmp slt i32 %sub151, 0
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.150
  br label %cond.end.157

cond.false.155:                                   ; preds = %cond.false.150
  %107 = load i32, i32* %xmin, align 4
  %sub156 = sub nsw i32 %107, 1
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.154
  %cond158 = phi i32 [ 0, %cond.true.154 ], [ %sub156, %cond.false.155 ]
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.end.157, %cond.true.148
  %cond160 = phi i32 [ %call149, %cond.true.148 ], [ %cond158, %cond.end.157 ]
  store i32 %cond160, i32* %xmin, align 4
  %108 = load i32, i32* %ymin, align 4
  %sub161 = sub nsw i32 %108, 1
  %109 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call162 = call i32 @tile_manager_height(%struct._TileManager* %109)
  %cmp163 = icmp sgt i32 %sub161, %call162
  br i1 %cmp163, label %cond.true.165, label %cond.false.167

cond.true.165:                                    ; preds = %cond.end.159
  %110 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call166 = call i32 @tile_manager_height(%struct._TileManager* %110)
  br label %cond.end.176

cond.false.167:                                   ; preds = %cond.end.159
  %111 = load i32, i32* %ymin, align 4
  %sub168 = sub nsw i32 %111, 1
  %cmp169 = icmp slt i32 %sub168, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %cond.false.167
  br label %cond.end.174

cond.false.172:                                   ; preds = %cond.false.167
  %112 = load i32, i32* %ymin, align 4
  %sub173 = sub nsw i32 %112, 1
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.172, %cond.true.171
  %cond175 = phi i32 [ 0, %cond.true.171 ], [ %sub173, %cond.false.172 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.true.165
  %cond177 = phi i32 [ %call166, %cond.true.165 ], [ %cond175, %cond.end.174 ]
  store i32 %cond177, i32* %ymin, align 4
  %113 = load i32, i32* %xmax, align 4
  %add178 = add nsw i32 %113, 1
  %114 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call179 = call i32 @tile_manager_width(%struct._TileManager* %114)
  %cmp180 = icmp sgt i32 %add178, %call179
  br i1 %cmp180, label %cond.true.182, label %cond.false.184

cond.true.182:                                    ; preds = %cond.end.176
  %115 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call183 = call i32 @tile_manager_width(%struct._TileManager* %115)
  br label %cond.end.193

cond.false.184:                                   ; preds = %cond.end.176
  %116 = load i32, i32* %xmax, align 4
  %add185 = add nsw i32 %116, 1
  %cmp186 = icmp slt i32 %add185, 0
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %cond.false.184
  br label %cond.end.191

cond.false.189:                                   ; preds = %cond.false.184
  %117 = load i32, i32* %xmax, align 4
  %add190 = add nsw i32 %117, 1
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.188
  %cond192 = phi i32 [ 0, %cond.true.188 ], [ %add190, %cond.false.189 ]
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.end.191, %cond.true.182
  %cond194 = phi i32 [ %call183, %cond.true.182 ], [ %cond192, %cond.end.191 ]
  store i32 %cond194, i32* %xmax, align 4
  %118 = load i32, i32* %ymax, align 4
  %add195 = add nsw i32 %118, 1
  %119 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call196 = call i32 @tile_manager_height(%struct._TileManager* %119)
  %cmp197 = icmp sgt i32 %add195, %call196
  br i1 %cmp197, label %cond.true.199, label %cond.false.201

cond.true.199:                                    ; preds = %cond.end.193
  %120 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call200 = call i32 @tile_manager_height(%struct._TileManager* %120)
  br label %cond.end.210

cond.false.201:                                   ; preds = %cond.end.193
  %121 = load i32, i32* %ymax, align 4
  %add202 = add nsw i32 %121, 1
  %cmp203 = icmp slt i32 %add202, 0
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %cond.false.201
  br label %cond.end.208

cond.false.206:                                   ; preds = %cond.false.201
  %122 = load i32, i32* %ymax, align 4
  %add207 = add nsw i32 %122, 1
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.206, %cond.true.205
  %cond209 = phi i32 [ 0, %cond.true.205 ], [ %add207, %cond.false.206 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end.208, %cond.true.199
  %cond211 = phi i32 [ %call200, %cond.true.199 ], [ %cond209, %cond.end.208 ]
  store i32 %cond211, i32* %ymax, align 4
  %123 = load i32, i32* %xmax, align 4
  %124 = load i32, i32* %xmin, align 4
  %sub212 = sub nsw i32 %123, %124
  %tobool = icmp ne i32 %sub212, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end.210
  %125 = load i32, i32* %ymax, align 4
  %126 = load i32, i32* %ymin, align 4
  %sub213 = sub nsw i32 %125, %126
  %tobool214 = icmp ne i32 %sub213, 0
  br i1 %tobool214, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cond.end.210
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %127 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %127, i32 0, i32 2
  %128 = load i32, i32* %sample_merged, align 4
  %tobool215 = icmp ne i32 %128, 0
  br i1 %tobool215, label %land.lhs.true, label %lor.lhs.false.218

land.lhs.true:                                    ; preds = %if.end
  %129 = load %struct._GimpImage*, %struct._GimpImage** %src_image, align 8
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp216 = icmp ne %struct._GimpImage* %129, %130
  br i1 %cmp216, label %if.then.224, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %land.lhs.true, %if.end
  %131 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged219 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %131, i32 0, i32 2
  %132 = load i32, i32* %sample_merged219, align 4
  %tobool220 = icmp ne i32 %132, 0
  br i1 %tobool220, label %if.else, label %land.lhs.true.221

land.lhs.true.221:                                ; preds = %lor.lhs.false.218
  %133 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %133, i32 0, i32 2
  %134 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %135 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp222 = icmp ne %struct._GimpDrawable* %134, %135
  br i1 %cmp222, label %if.then.224, label %if.else

if.then.224:                                      ; preds = %land.lhs.true.221, %land.lhs.true
  %136 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %137 = load i32, i32* %xmin, align 4
  %138 = load i32, i32* %ymin, align 4
  %139 = load i32, i32* %xmax, align 4
  %140 = load i32, i32* %xmin, align 4
  %sub225 = sub nsw i32 %139, %140
  %141 = load i32, i32* %ymax, align 4
  %142 = load i32, i32* %ymin, align 4
  %sub226 = sub nsw i32 %141, %142
  call void @pixel_region_init(%struct._PixelRegion* %origPR, %struct._TileManager* %136, i32 %137, i32 %138, i32 %sub225, i32 %sub226, i32 0)
  br label %if.end.242

if.else:                                          ; preds = %land.lhs.true.221, %lor.lhs.false.218
  %143 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged227 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %143, i32 0, i32 2
  %144 = load i32, i32* %sample_merged227, align 4
  %tobool228 = icmp ne i32 %144, 0
  br i1 %tobool228, label %if.then.229, label %if.else.233

if.then.229:                                      ; preds = %if.else
  %145 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %146 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %147 = load i32, i32* %xmin, align 4
  %148 = load i32, i32* %ymin, align 4
  %149 = load i32, i32* %xmax, align 4
  %150 = load i32, i32* %xmin, align 4
  %sub230 = sub nsw i32 %149, %150
  %151 = load i32, i32* %ymax, align 4
  %152 = load i32, i32* %ymin, align 4
  %sub231 = sub nsw i32 %151, %152
  %call232 = call %struct._TempBuf* @gimp_paint_core_get_orig_proj(%struct._GimpPaintCore* %145, %struct._GimpPickable* %146, i32 %147, i32 %148, i32 %sub230, i32 %sub231)
  store %struct._TempBuf* %call232, %struct._TempBuf** %orig, align 8
  br label %if.end.239

if.else.233:                                      ; preds = %if.else
  %153 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %154 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %155 = bitcast %struct._GimpPickable* %154 to %struct._GTypeInstance*
  %call234 = call i64 @gimp_drawable_get_type() #7
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call234)
  %156 = bitcast %struct._GTypeInstance* %call235 to %struct._GimpDrawable*
  %157 = load i32, i32* %xmin, align 4
  %158 = load i32, i32* %ymin, align 4
  %159 = load i32, i32* %xmax, align 4
  %160 = load i32, i32* %xmin, align 4
  %sub236 = sub nsw i32 %159, %160
  %161 = load i32, i32* %ymax, align 4
  %162 = load i32, i32* %ymin, align 4
  %sub237 = sub nsw i32 %161, %162
  %call238 = call %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore* %153, %struct._GimpDrawable* %156, i32 %157, i32 %158, i32 %sub236, i32 %sub237)
  store %struct._TempBuf* %call238, %struct._TempBuf** %orig, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.233, %if.then.229
  %163 = load %struct._TempBuf*, %struct._TempBuf** %orig, align 8
  %164 = load i32, i32* %xmax, align 4
  %165 = load i32, i32* %xmin, align 4
  %sub240 = sub nsw i32 %164, %165
  %166 = load i32, i32* %ymax, align 4
  %167 = load i32, i32* %ymin, align 4
  %sub241 = sub nsw i32 %166, %167
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %origPR, %struct._TempBuf* %163, i32 0, i32 0, i32 %sub240, i32 %sub241)
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.239, %if.then.224
  %168 = load i32, i32* %src_type, align 4
  %cmp243 = icmp eq i32 %168, 0
  br i1 %cmp243, label %cond.true.248, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %if.end.242
  %169 = load i32, i32* %src_type, align 4
  %cmp246 = icmp eq i32 %169, 1
  br i1 %cmp246, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %lor.lhs.false.245, %if.end.242
  br label %cond.end.264

cond.false.249:                                   ; preds = %lor.lhs.false.245
  %170 = load i32, i32* %src_type, align 4
  %cmp250 = icmp eq i32 %170, 2
  br i1 %cmp250, label %cond.true.255, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %cond.false.249
  %171 = load i32, i32* %src_type, align 4
  %cmp253 = icmp eq i32 %171, 3
  br i1 %cmp253, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %lor.lhs.false.252, %cond.false.249
  br label %cond.end.262

cond.false.256:                                   ; preds = %lor.lhs.false.252
  %172 = load i32, i32* %src_type, align 4
  %cmp257 = icmp eq i32 %172, 4
  br i1 %cmp257, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.256
  %173 = load i32, i32* %src_type, align 4
  %cmp259 = icmp eq i32 %173, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.256
  %174 = phi i1 [ true, %cond.false.256 ], [ %cmp259, %lor.rhs ]
  %cond261 = select i1 %174, i32 5, i32 -1
  br label %cond.end.262

cond.end.262:                                     ; preds = %lor.end, %cond.true.255
  %cond263 = phi i32 [ 3, %cond.true.255 ], [ %cond261, %lor.end ]
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.end.262, %cond.true.248
  %cond265 = phi i32 [ 1, %cond.true.248 ], [ %cond263, %cond.end.262 ]
  %cmp266 = icmp eq i32 %cond265, 1
  br i1 %cmp266, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %cond.end.264
  br label %cond.end.422

cond.false.269:                                   ; preds = %cond.end.264
  %175 = load i32, i32* %src_type, align 4
  %cmp270 = icmp eq i32 %175, 0
  br i1 %cmp270, label %cond.true.275, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %cond.false.269
  %176 = load i32, i32* %src_type, align 4
  %cmp273 = icmp eq i32 %176, 1
  br i1 %cmp273, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %lor.lhs.false.272, %cond.false.269
  br label %cond.end.293

cond.false.276:                                   ; preds = %lor.lhs.false.272
  %177 = load i32, i32* %src_type, align 4
  %cmp277 = icmp eq i32 %177, 2
  br i1 %cmp277, label %cond.true.282, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %cond.false.276
  %178 = load i32, i32* %src_type, align 4
  %cmp280 = icmp eq i32 %178, 3
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %lor.lhs.false.279, %cond.false.276
  br label %cond.end.291

cond.false.283:                                   ; preds = %lor.lhs.false.279
  %179 = load i32, i32* %src_type, align 4
  %cmp284 = icmp eq i32 %179, 4
  br i1 %cmp284, label %lor.end.289, label %lor.rhs.286

lor.rhs.286:                                      ; preds = %cond.false.283
  %180 = load i32, i32* %src_type, align 4
  %cmp287 = icmp eq i32 %180, 5
  br label %lor.end.289

lor.end.289:                                      ; preds = %lor.rhs.286, %cond.false.283
  %181 = phi i1 [ true, %cond.false.283 ], [ %cmp287, %lor.rhs.286 ]
  %cond290 = select i1 %181, i32 5, i32 -1
  br label %cond.end.291

cond.end.291:                                     ; preds = %lor.end.289, %cond.true.282
  %cond292 = phi i32 [ 3, %cond.true.282 ], [ %cond290, %lor.end.289 ]
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.end.291, %cond.true.275
  %cond294 = phi i32 [ 1, %cond.true.275 ], [ %cond292, %cond.end.291 ]
  %cmp295 = icmp eq i32 %cond294, 0
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %cond.end.293
  br label %cond.end.420

cond.false.298:                                   ; preds = %cond.end.293
  %182 = load i32, i32* %src_type, align 4
  %cmp299 = icmp eq i32 %182, 0
  br i1 %cmp299, label %cond.true.304, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %cond.false.298
  %183 = load i32, i32* %src_type, align 4
  %cmp302 = icmp eq i32 %183, 1
  br i1 %cmp302, label %cond.true.304, label %cond.false.305

cond.true.304:                                    ; preds = %lor.lhs.false.301, %cond.false.298
  br label %cond.end.322

cond.false.305:                                   ; preds = %lor.lhs.false.301
  %184 = load i32, i32* %src_type, align 4
  %cmp306 = icmp eq i32 %184, 2
  br i1 %cmp306, label %cond.true.311, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %cond.false.305
  %185 = load i32, i32* %src_type, align 4
  %cmp309 = icmp eq i32 %185, 3
  br i1 %cmp309, label %cond.true.311, label %cond.false.312

cond.true.311:                                    ; preds = %lor.lhs.false.308, %cond.false.305
  br label %cond.end.320

cond.false.312:                                   ; preds = %lor.lhs.false.308
  %186 = load i32, i32* %src_type, align 4
  %cmp313 = icmp eq i32 %186, 4
  br i1 %cmp313, label %lor.end.318, label %lor.rhs.315

lor.rhs.315:                                      ; preds = %cond.false.312
  %187 = load i32, i32* %src_type, align 4
  %cmp316 = icmp eq i32 %187, 5
  br label %lor.end.318

lor.end.318:                                      ; preds = %lor.rhs.315, %cond.false.312
  %188 = phi i1 [ true, %cond.false.312 ], [ %cmp316, %lor.rhs.315 ]
  %cond319 = select i1 %188, i32 5, i32 -1
  br label %cond.end.320

cond.end.320:                                     ; preds = %lor.end.318, %cond.true.311
  %cond321 = phi i32 [ 3, %cond.true.311 ], [ %cond319, %lor.end.318 ]
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.end.320, %cond.true.304
  %cond323 = phi i32 [ 1, %cond.true.304 ], [ %cond321, %cond.end.320 ]
  %cmp324 = icmp eq i32 %cond323, 3
  br i1 %cmp324, label %cond.true.326, label %cond.false.327

cond.true.326:                                    ; preds = %cond.end.322
  br label %cond.end.418

cond.false.327:                                   ; preds = %cond.end.322
  %189 = load i32, i32* %src_type, align 4
  %cmp328 = icmp eq i32 %189, 0
  br i1 %cmp328, label %cond.true.333, label %lor.lhs.false.330

lor.lhs.false.330:                                ; preds = %cond.false.327
  %190 = load i32, i32* %src_type, align 4
  %cmp331 = icmp eq i32 %190, 1
  br i1 %cmp331, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %lor.lhs.false.330, %cond.false.327
  br label %cond.end.351

cond.false.334:                                   ; preds = %lor.lhs.false.330
  %191 = load i32, i32* %src_type, align 4
  %cmp335 = icmp eq i32 %191, 2
  br i1 %cmp335, label %cond.true.340, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %cond.false.334
  %192 = load i32, i32* %src_type, align 4
  %cmp338 = icmp eq i32 %192, 3
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %lor.lhs.false.337, %cond.false.334
  br label %cond.end.349

cond.false.341:                                   ; preds = %lor.lhs.false.337
  %193 = load i32, i32* %src_type, align 4
  %cmp342 = icmp eq i32 %193, 4
  br i1 %cmp342, label %lor.end.347, label %lor.rhs.344

lor.rhs.344:                                      ; preds = %cond.false.341
  %194 = load i32, i32* %src_type, align 4
  %cmp345 = icmp eq i32 %194, 5
  br label %lor.end.347

lor.end.347:                                      ; preds = %lor.rhs.344, %cond.false.341
  %195 = phi i1 [ true, %cond.false.341 ], [ %cmp345, %lor.rhs.344 ]
  %cond348 = select i1 %195, i32 5, i32 -1
  br label %cond.end.349

cond.end.349:                                     ; preds = %lor.end.347, %cond.true.340
  %cond350 = phi i32 [ 3, %cond.true.340 ], [ %cond348, %lor.end.347 ]
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.end.349, %cond.true.333
  %cond352 = phi i32 [ 1, %cond.true.333 ], [ %cond350, %cond.end.349 ]
  %cmp353 = icmp eq i32 %cond352, 2
  br i1 %cmp353, label %cond.true.355, label %cond.false.356

cond.true.355:                                    ; preds = %cond.end.351
  br label %cond.end.416

cond.false.356:                                   ; preds = %cond.end.351
  %196 = load i32, i32* %src_type, align 4
  %cmp357 = icmp eq i32 %196, 0
  br i1 %cmp357, label %cond.true.362, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %cond.false.356
  %197 = load i32, i32* %src_type, align 4
  %cmp360 = icmp eq i32 %197, 1
  br i1 %cmp360, label %cond.true.362, label %cond.false.363

cond.true.362:                                    ; preds = %lor.lhs.false.359, %cond.false.356
  br label %cond.end.380

cond.false.363:                                   ; preds = %lor.lhs.false.359
  %198 = load i32, i32* %src_type, align 4
  %cmp364 = icmp eq i32 %198, 2
  br i1 %cmp364, label %cond.true.369, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %cond.false.363
  %199 = load i32, i32* %src_type, align 4
  %cmp367 = icmp eq i32 %199, 3
  br i1 %cmp367, label %cond.true.369, label %cond.false.370

cond.true.369:                                    ; preds = %lor.lhs.false.366, %cond.false.363
  br label %cond.end.378

cond.false.370:                                   ; preds = %lor.lhs.false.366
  %200 = load i32, i32* %src_type, align 4
  %cmp371 = icmp eq i32 %200, 4
  br i1 %cmp371, label %lor.end.376, label %lor.rhs.373

lor.rhs.373:                                      ; preds = %cond.false.370
  %201 = load i32, i32* %src_type, align 4
  %cmp374 = icmp eq i32 %201, 5
  br label %lor.end.376

lor.end.376:                                      ; preds = %lor.rhs.373, %cond.false.370
  %202 = phi i1 [ true, %cond.false.370 ], [ %cmp374, %lor.rhs.373 ]
  %cond377 = select i1 %202, i32 5, i32 -1
  br label %cond.end.378

cond.end.378:                                     ; preds = %lor.end.376, %cond.true.369
  %cond379 = phi i32 [ 3, %cond.true.369 ], [ %cond377, %lor.end.376 ]
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.end.378, %cond.true.362
  %cond381 = phi i32 [ 1, %cond.true.362 ], [ %cond379, %cond.end.378 ]
  %cmp382 = icmp eq i32 %cond381, 5
  br i1 %cmp382, label %cond.true.384, label %cond.false.385

cond.true.384:                                    ; preds = %cond.end.380
  br label %cond.end.414

cond.false.385:                                   ; preds = %cond.end.380
  %203 = load i32, i32* %src_type, align 4
  %cmp386 = icmp eq i32 %203, 0
  br i1 %cmp386, label %cond.true.391, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %cond.false.385
  %204 = load i32, i32* %src_type, align 4
  %cmp389 = icmp eq i32 %204, 1
  br i1 %cmp389, label %cond.true.391, label %cond.false.392

cond.true.391:                                    ; preds = %lor.lhs.false.388, %cond.false.385
  br label %cond.end.409

cond.false.392:                                   ; preds = %lor.lhs.false.388
  %205 = load i32, i32* %src_type, align 4
  %cmp393 = icmp eq i32 %205, 2
  br i1 %cmp393, label %cond.true.398, label %lor.lhs.false.395

lor.lhs.false.395:                                ; preds = %cond.false.392
  %206 = load i32, i32* %src_type, align 4
  %cmp396 = icmp eq i32 %206, 3
  br i1 %cmp396, label %cond.true.398, label %cond.false.399

cond.true.398:                                    ; preds = %lor.lhs.false.395, %cond.false.392
  br label %cond.end.407

cond.false.399:                                   ; preds = %lor.lhs.false.395
  %207 = load i32, i32* %src_type, align 4
  %cmp400 = icmp eq i32 %207, 4
  br i1 %cmp400, label %lor.end.405, label %lor.rhs.402

lor.rhs.402:                                      ; preds = %cond.false.399
  %208 = load i32, i32* %src_type, align 4
  %cmp403 = icmp eq i32 %208, 5
  br label %lor.end.405

lor.end.405:                                      ; preds = %lor.rhs.402, %cond.false.399
  %209 = phi i1 [ true, %cond.false.399 ], [ %cmp403, %lor.rhs.402 ]
  %cond406 = select i1 %209, i32 5, i32 -1
  br label %cond.end.407

cond.end.407:                                     ; preds = %lor.end.405, %cond.true.398
  %cond408 = phi i32 [ 3, %cond.true.398 ], [ %cond406, %lor.end.405 ]
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.end.407, %cond.true.391
  %cond410 = phi i32 [ 1, %cond.true.391 ], [ %cond408, %cond.end.407 ]
  %cmp411 = icmp eq i32 %cond410, 4
  %cond413 = select i1 %cmp411, i32 1, i32 -1
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.end.409, %cond.true.384
  %cond415 = phi i32 [ 2, %cond.true.384 ], [ %cond413, %cond.end.409 ]
  br label %cond.end.416

cond.end.416:                                     ; preds = %cond.end.414, %cond.true.355
  %cond417 = phi i32 [ 1, %cond.true.355 ], [ %cond415, %cond.end.414 ]
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.end.416, %cond.true.326
  %cond419 = phi i32 [ 2, %cond.true.326 ], [ %cond417, %cond.end.416 ]
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.end.418, %cond.true.297
  %cond421 = phi i32 [ 3, %cond.true.297 ], [ %cond419, %cond.end.418 ]
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.end.420, %cond.true.268
  %cond423 = phi i32 [ 4, %cond.true.268 ], [ %cond421, %cond.end.420 ]
  store i32 %cond423, i32* %bytes, align 4
  %210 = load i32, i32* %xmax, align 4
  %211 = load i32, i32* %xmin, align 4
  %sub424 = sub nsw i32 %210, %211
  %212 = load i32, i32* %ymax, align 4
  %213 = load i32, i32* %ymin, align 4
  %sub425 = sub nsw i32 %212, %213
  %214 = load i32, i32* %bytes, align 4
  %call426 = call %struct._TileManager* @tile_manager_new(i32 %sub424, i32 %sub425, i32 %214)
  store %struct._TileManager* %call426, %struct._TileManager** %orig_tiles, align 8
  %215 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %216 = load i32, i32* %xmax, align 4
  %217 = load i32, i32* %xmin, align 4
  %sub427 = sub nsw i32 %216, %217
  %218 = load i32, i32* %ymax, align 4
  %219 = load i32, i32* %ymin, align 4
  %sub428 = sub nsw i32 %218, %219
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %215, i32 0, i32 0, i32 %sub427, i32 %sub428, i32 1)
  %220 = load i32, i32* %bytes, align 4
  %bytes429 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %origPR, i32 0, i32 10
  %221 = load i32, i32* %bytes429, align 4
  %cmp430 = icmp sgt i32 %220, %221
  br i1 %cmp430, label %if.then.432, label %if.else.433

if.then.432:                                      ; preds = %cond.end.422
  call void @add_alpha_region(%struct._PixelRegion* %origPR, %struct._PixelRegion* %destPR)
  br label %if.end.434

if.else.433:                                      ; preds = %cond.end.422
  call void @copy_region(%struct._PixelRegion* %origPR, %struct._PixelRegion* %destPR)
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.433, %if.then.432
  %222 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %222, i32 0, i32 7
  %223 = load %struct._TempBuf*, %struct._TempBuf** %src_area, align 8
  %224 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %call435 = call i32 @tile_manager_bpp(%struct._TileManager* %224)
  %225 = load i32, i32* %x2d, align 4
  %226 = load i32, i32* %x1d, align 4
  %sub436 = sub nsw i32 %225, %226
  %227 = load i32, i32* %y2d, align 4
  %228 = load i32, i32* %y1d, align 4
  %sub437 = sub nsw i32 %227, %228
  %call438 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %223, i32 %call435, i32 0, i32 0, i32 %sub436, i32 %sub437)
  %229 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area439 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %229, i32 0, i32 7
  store %struct._TempBuf* %call438, %struct._TempBuf** %src_area439, align 8
  %230 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area440 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %230, i32 0, i32 7
  %231 = load %struct._TempBuf*, %struct._TempBuf** %src_area440, align 8
  %232 = load i32, i32* %x2d, align 4
  %233 = load i32, i32* %x1d, align 4
  %sub441 = sub nsw i32 %232, %233
  %234 = load i32, i32* %y2d, align 4
  %235 = load i32, i32* %y1d, align 4
  %sub442 = sub nsw i32 %234, %235
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %231, i32 0, i32 0, i32 %sub441, i32 %sub442)
  %236 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  call void @gimp_perspective_clone_get_matrix(%struct._GimpPerspectiveClone* %236, %struct._GimpMatrix3* %matrix)
  %237 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %238 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %239 = bitcast %struct._GimpPaintOptions* %238 to %struct._GTypeInstance*
  %call443 = call i64 @gimp_context_get_type() #7
  %call444 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %239, i64 %call443)
  %240 = bitcast %struct._GTypeInstance* %call444 to %struct._GimpContext*
  %241 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  %242 = load i32, i32* %xmin, align 4
  %243 = load i32, i32* %ymin, align 4
  %244 = load i32, i32* %x1d, align 4
  %245 = load i32, i32* %y1d, align 4
  %246 = load i32, i32* %x2d, align 4
  %247 = load i32, i32* %y2d, align 4
  call void @gimp_transform_region(%struct._GimpPickable* %237, %struct._GimpContext* %240, %struct._TileManager* %241, i32 %242, i32 %243, %struct._PixelRegion* %destPR, i32 %244, i32 %245, i32 %246, i32 %247, %struct._GimpMatrix3* %matrix, i32 1, i32 0, %struct._GimpProgress* null)
  %248 = load %struct._TileManager*, %struct._TileManager** %orig_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %248)
  %249 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %250 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone, align 8
  %src_area445 = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %250, i32 0, i32 7
  %251 = load %struct._TempBuf*, %struct._TempBuf** %src_area445, align 8
  %252 = load i32, i32* %x2d, align 4
  %253 = load i32, i32* %x1d, align 4
  %sub446 = sub nsw i32 %252, %253
  %254 = load i32, i32* %y2d, align 4
  %255 = load i32, i32* %y1d, align 4
  %sub447 = sub nsw i32 %254, %255
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %249, %struct._TempBuf* %251, i32 0, i32 0, i32 %sub446, i32 %sub447)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.434, %if.then
  %256 = load i32, i32* %retval
  ret i32 %256
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_source_core_motion(%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TempBuf* @gimp_paint_core_get_orig_proj(%struct._GimpPaintCore*, %struct._GimpPickable*, i32, i32, i32, i32) #1

declare %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore*, %struct._GimpDrawable*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare %struct._TempBuf* @temp_buf_resize(%struct._TempBuf*, i32, i32, i32, i32, i32) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_perspective_clone_get_matrix(%struct._GimpPerspectiveClone* %clone, %struct._GimpMatrix3* %matrix) #3 {
entry:
  %clone.addr = alloca %struct._GimpPerspectiveClone*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %temp = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpPerspectiveClone* %clone, %struct._GimpPerspectiveClone** %clone.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %temp)
  %0 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %0, i32 0, i32 3
  %1 = load double, double* %dest_x_fv, align 8
  %2 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_x_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %2, i32 0, i32 1
  %3 = load double, double* %src_x_fv, align 8
  %sub = fsub double %1, %3
  %4 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %dest_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %4, i32 0, i32 4
  %5 = load double, double* %dest_y_fv, align 8
  %6 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %src_y_fv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %6, i32 0, i32 2
  %7 = load double, double* %src_y_fv, align 8
  %sub1 = fsub double %5, %7
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %temp, double %sub, double %sub1)
  %8 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %9 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform_inv = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %9, i32 0, i32 6
  %10 = bitcast %struct._GimpMatrix3* %8 to i8*
  %11 = bitcast %struct._GimpMatrix3* %transform_inv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 72, i32 8, i1 false)
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %temp, %struct._GimpMatrix3* %12)
  %13 = load %struct._GimpPerspectiveClone*, %struct._GimpPerspectiveClone** %clone.addr, align 8
  %transform = getelementptr inbounds %struct._GimpPerspectiveClone, %struct._GimpPerspectiveClone* %13, i32 0, i32 5
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_mult(%struct._GimpMatrix3* %transform, %struct._GimpMatrix3* %14)
  ret void
}

declare void @gimp_transform_region(%struct._GimpPickable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, %struct._PixelRegion*, i32, i32, i32, i32, %struct._GimpMatrix3*, i32, i32, %struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #1

declare void @gimp_matrix3_mult(%struct._GimpMatrix3*, %struct._GimpMatrix3*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
