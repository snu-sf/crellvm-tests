; ModuleID = './app/paint/gimpsmudge.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSmudgeClass = type { %struct._GimpBrushCoreClass }
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
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type { %struct._GimpData }
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
%struct._GimpSmudge = type { %struct._GimpBrushCore, i32, %struct._PixelRegion, i8*, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpPickable = type opaque
%struct._GimpSmudgeOptions = type { %struct._GimpPaintOptions, double }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_smudge_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpSmudge\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gimp-smudge\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Smudge\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gimp-tool-smudge\00", align 1
@gimp_smudge_parent_class = internal global i8* null, align 8
@GimpSmudge_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_smudge_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_smudge_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_smudge_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_core_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_smudge_class_intern_init to void (i8*, i8*)*), i32 6568, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSmudge*)* @gimp_smudge_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_smudge_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_smudge_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_smudge_parent_class, align 8
  %1 = load i32, i32* @GimpSmudge_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSmudge_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSmudgeClass*
  call void @gimp_smudge_class_init(%struct._GimpSmudgeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_init(%struct._GimpSmudge* %smudge) #3 {
entry:
  %smudge.addr = alloca %struct._GimpSmudge*, align 8
  store %struct._GimpSmudge* %smudge, %struct._GimpSmudge** %smudge.addr, align 8
  %0 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge.addr, align 8
  %initialized = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %0, i32 0, i32 1
  store i32 0, i32* %initialized, align 4
  %1 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge.addr, align 8
  %accum_data = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %1, i32 0, i32 3
  store i8* null, i8** %accum_data, align 8
  %2 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge.addr, align 8
  %accum_size = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %2, i32 0, i32 4
  store i32 0, i32* %accum_size, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_smudge_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call i64 @gimp_smudge_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_smudge_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_class_init(%struct._GimpSmudgeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSmudgeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %brush_core_class = alloca %struct._GimpBrushCoreClass*, align 8
  store %struct._GimpSmudgeClass* %klass, %struct._GimpSmudgeClass** %klass.addr, align 8
  %0 = load %struct._GimpSmudgeClass*, %struct._GimpSmudgeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSmudgeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSmudgeClass*, %struct._GimpSmudgeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSmudgeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GimpSmudgeClass*, %struct._GimpSmudgeClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSmudgeClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_brush_core_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpBrushCoreClass*
  store %struct._GimpBrushCoreClass* %8, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_smudge_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %10, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_smudge_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %11 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %11, i32 0, i32 1
  store i32 1, i32* %handles_changing_brush, align 4
  %12 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %12, i32 0, i32 2
  store i32 1, i32* %handles_transforming_brush, align 4
  %13 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_dynamic_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %13, i32 0, i32 3
  store i32 1, i32* %handles_dynamic_transforming_brush, align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %smudge = alloca %struct._GimpSmudge*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSmudge*
  store %struct._GimpSmudge* %2, %struct._GimpSmudge** %smudge, align 8
  %3 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %3, i32 0, i32 3
  %4 = load i8*, i8** %accum_data, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data2 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %5, i32 0, i32 3
  %6 = load i8*, i8** %accum_data2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data3 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %7, i32 0, i32 3
  store i8* null, i8** %accum_data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %8, i32 0, i32 4
  store i32 0, i32* %accum_size, align 4
  %9 = load i8*, i8** @gimp_smudge_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %smudge = alloca %struct._GimpSmudge*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSmudge*
  store %struct._GimpSmudge* %2, %struct._GimpSmudge** %smudge, align 8
  %3 = load i32, i32* %paint_state.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %initialized = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %4, i32 0, i32 1
  %5 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call2 = call i32 @gimp_smudge_start(%struct._GimpPaintCore* %6, %struct._GimpDrawable* %7, %struct._GimpPaintOptions* %8, %struct._GimpCoords* %9)
  %10 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %initialized3 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %10, i32 0, i32 1
  store i32 %call2, i32* %initialized3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %11 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %initialized4 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %11, i32 0, i32 1
  %12 = load i32, i32* %initialized4, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_smudge_motion(%struct._GimpPaintCore* %13, %struct._GimpDrawable* %14, %struct._GimpPaintOptions* %15, %struct._GimpCoords* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %17, i32 0, i32 3
  %18 = load i8*, i8** %accum_data, align 8
  %tobool9 = icmp ne i8* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb.8
  %19 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data11 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %19, i32 0, i32 3
  %20 = load i8*, i8** %accum_data11, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data12 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %21, i32 0, i32 3
  store i8* null, i8** %accum_data12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb.8
  %22 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %initialized14 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %22, i32 0, i32 1
  store i32 0, i32* %initialized14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.13, %if.end.7
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_smudge_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %smudge = alloca %struct._GimpSmudge*, align 8
  %area = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %fill = alloca [4 x i8], align 1
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSmudge*
  store %struct._GimpSmudge* %2, %struct._GimpSmudge** %smudge, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call3 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %4, %struct._GimpDrawable* %5, %struct._GimpPaintOptions* %6, %struct._GimpCoords* %7)
  store %struct._TempBuf* %call3, %struct._TempBuf** %area, align 8
  %8 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool4 = icmp ne %struct._TempBuf* %8, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %10 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %10, i32 0, i32 4
  call void @gimp_smudge_accumulator_size(%struct._GimpPaintOptions* %9, i32* %accum_size)
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_smudge_accumulator_coords(%struct._GimpPaintCore* %11, %struct._GimpCoords* %12, i32* %x, i32* %y)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %13)
  store i32 %call7, i32* %bytes, align 4
  %14 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size8 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %14, i32 0, i32 4
  %15 = load i32, i32* %accum_size8, align 4
  %16 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size9 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %16, i32 0, i32 4
  %17 = load i32, i32* %accum_size9, align 4
  %mul = mul nsw i32 %15, %17
  %18 = load i32, i32* %bytes, align 4
  %mul10 = mul nsw i32 %mul, %18
  %conv = sext i32 %mul10 to i64
  %call11 = call noalias i8* @g_malloc(i64 %conv)
  %19 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %19, i32 0, i32 3
  store i8* %call11, i8** %accum_data, align 8
  %20 = load i32, i32* %x, align 4
  %21 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %21, i32 0, i32 3
  %22 = load i32, i32* %x12, align 4
  %cmp = icmp ne i32 %20, %22
  br i1 %cmp, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %23 = load i32, i32* %y, align 4
  %24 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y14 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 4
  %25 = load i32, i32* %y14, align 4
  %cmp15 = icmp ne i32 %23, %25
  br i1 %cmp15, label %if.then.25, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %26 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size18 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %26, i32 0, i32 4
  %27 = load i32, i32* %accum_size18, align 4
  %28 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 1
  %29 = load i32, i32* %width, align 4
  %cmp19 = icmp ne i32 %27, %29
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %30 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size22 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %30, i32 0, i32 4
  %31 = load i32, i32* %accum_size22, align 4
  %32 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 2
  %33 = load i32, i32* %height, align 4
  %cmp23 = icmp ne i32 %31, %33
  br i1 %cmp23, label %if.then.25, label %if.end.82

if.then.25:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false, %if.end.6
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_pickable_interface_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPickable*
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x28, align 8
  %conv29 = fptosi double %38 to i32
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %41)
  %sub = sub nsw i32 %call32, 1
  %cmp33 = icmp sgt i32 %conv29, %sub
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = bitcast %struct._GimpDrawable* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_get_width(%struct._GimpItem* %44)
  %sub38 = sub nsw i32 %call37, 1
  br label %cond.end.47

cond.false:                                       ; preds = %if.then.25
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 0
  %46 = load double, double* %x39, align 8
  %conv40 = fptosi double %46 to i32
  %cmp41 = icmp slt i32 %conv40, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false
  br label %cond.end

cond.false.44:                                    ; preds = %cond.false
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 0
  %48 = load double, double* %x45, align 8
  %conv46 = fptosi double %48 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.44, %cond.true.43
  %cond = phi i32 [ 0, %cond.true.43 ], [ %conv46, %cond.false.44 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi i32 [ %sub38, %cond.true ], [ %cond, %cond.end ]
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %49, i32 0, i32 1
  %50 = load double, double* %y49, align 8
  %conv50 = fptosi double %50 to i32
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %52 = bitcast %struct._GimpDrawable* %51 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call51)
  %53 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %53)
  %sub54 = sub nsw i32 %call53, 1
  %cmp55 = icmp sgt i32 %conv50, %sub54
  br i1 %cmp55, label %cond.true.57, label %cond.false.62

cond.true.57:                                     ; preds = %cond.end.47
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %55 = bitcast %struct._GimpDrawable* %54 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call58)
  %56 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  %call60 = call i32 @gimp_item_get_height(%struct._GimpItem* %56)
  %sub61 = sub nsw i32 %call60, 1
  br label %cond.end.73

cond.false.62:                                    ; preds = %cond.end.47
  %57 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y63 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %57, i32 0, i32 1
  %58 = load double, double* %y63, align 8
  %conv64 = fptosi double %58 to i32
  %cmp65 = icmp slt i32 %conv64, 0
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.62
  br label %cond.end.71

cond.false.68:                                    ; preds = %cond.false.62
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 1
  %60 = load double, double* %y69, align 8
  %conv70 = fptosi double %60 to i32
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.68, %cond.true.67
  %cond72 = phi i32 [ 0, %cond.true.67 ], [ %conv70, %cond.false.68 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.57
  %cond74 = phi i32 [ %sub61, %cond.true.57 ], [ %cond72, %cond.end.71 ]
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i32 0
  %call75 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %36, i32 %cond48, i32 %cond74, i8* %arraydecay)
  %61 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data76 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %61, i32 0, i32 3
  %62 = load i8*, i8** %accum_data76, align 8
  %63 = load i32, i32* %bytes, align 4
  %64 = load i32, i32* %bytes, align 4
  %65 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size77 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %65, i32 0, i32 4
  %66 = load i32, i32* %accum_size77, align 4
  %mul78 = mul nsw i32 %64, %66
  %67 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size79 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %67, i32 0, i32 4
  %68 = load i32, i32* %accum_size79, align 4
  %69 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size80 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %69, i32 0, i32 4
  %70 = load i32, i32* %accum_size80, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %srcPR, i8* %62, i32 %63, i32 %mul78, i32 0, i32 0, i32 %68, i32 %70)
  %arraydecay81 = getelementptr inbounds [4 x i8], [4 x i8]* %fill, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %srcPR, i8* %arraydecay81)
  br label %if.end.82

if.end.82:                                        ; preds = %cond.end.73, %lor.lhs.false.21
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call83 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %71)
  %72 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x84 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %72, i32 0, i32 3
  %73 = load i32, i32* %x84, align 4
  %74 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y85 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %74, i32 0, i32 4
  %75 = load i32, i32* %y85, align 4
  %76 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width86 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %76, i32 0, i32 1
  %77 = load i32, i32* %width86, align 4
  %78 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height87 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %78, i32 0, i32 2
  %79 = load i32, i32* %height87, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call83, i32 %73, i32 %75, i32 %77, i32 %79, i32 0)
  %80 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %80, i32 0, i32 2
  %81 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data88 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %81, i32 0, i32 3
  %82 = load i8*, i8** %accum_data88, align 8
  %83 = load i32, i32* %bytes, align 4
  %84 = load i32, i32* %bytes, align 4
  %85 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size89 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %85, i32 0, i32 4
  %86 = load i32, i32* %accum_size89, align 4
  %mul90 = mul nsw i32 %84, %86
  %87 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x91 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %87, i32 0, i32 3
  %88 = load i32, i32* %x91, align 4
  %89 = load i32, i32* %x, align 4
  %sub92 = sub nsw i32 %88, %89
  %90 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y93 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %90, i32 0, i32 4
  %91 = load i32, i32* %y93, align 4
  %92 = load i32, i32* %y, align 4
  %sub94 = sub nsw i32 %91, %92
  %93 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width95 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %93, i32 0, i32 1
  %94 = load i32, i32* %width95, align 4
  %95 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height96 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %95, i32 0, i32 2
  %96 = load i32, i32* %height96, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %accumPR, i8* %82, i32 %83, i32 %mul90, i32 %sub92, i32 %sub94, i32 %94, i32 %96)
  %97 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR97 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %97, i32 0, i32 2
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %accumPR97)
  %98 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR98 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %98, i32 0, i32 2
  %99 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data99 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %99, i32 0, i32 3
  %100 = load i8*, i8** %accum_data99, align 8
  %101 = load i32, i32* %bytes, align 4
  %102 = load i32, i32* %bytes, align 4
  %103 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size100 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %103, i32 0, i32 4
  %104 = load i32, i32* %accum_size100, align 4
  %mul101 = mul nsw i32 %102, %104
  %105 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size102 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %105, i32 0, i32 4
  %106 = load i32, i32* %accum_size102, align 4
  %107 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size103 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %107, i32 0, i32 4
  %108 = load i32, i32* %accum_size103, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %accumPR98, i8* %100, i32 %101, i32 %mul101, i32 0, i32 0, i32 %106, i32 %108)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.5, %if.then
  %109 = load i32, i32* %retval
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %smudge = alloca %struct._GimpSmudge*, align 8
  %options = alloca %struct._GimpSmudgeOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %rate_output = alloca %struct._GimpDynamicsOutput*, align 8
  %hardness_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %area = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %fade_point = alloca double, align 8
  %opacity = alloca double, align 8
  %rate = alloca double, align 8
  %dynamic_rate = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %hardness = alloca double, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSmudge*
  store %struct._GimpSmudge* %2, %struct._GimpSmudge** %smudge, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_smudge_options_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSmudgeOptions*
  store %struct._GimpSmudgeOptions* %5, %struct._GimpSmudgeOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_context_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContext*
  store %struct._GimpContext* %8, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %10 = bitcast %struct._GimpPaintCore* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_brush_core_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpBrushCore*
  %dynamics8 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %11, i32 0, i32 3
  %12 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics8, align 8
  store %struct._GimpDynamics* %12, %struct._GimpDynamics** %dynamics, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call9 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call13 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %17, i32 0)
  store %struct._GimpDynamicsOutput* %call13, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %20, i32 0, i32 8
  %21 = load double, double* %pixel_dist, align 8
  %call14 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %18, %struct._GimpImage* %19, double %21)
  store double %call14, double* %fade_point, align 8
  %22 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %25 = load double, double* %fade_point, align 8
  %call15 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %22, %struct._GimpCoords* %23, %struct._GimpPaintOptions* %24, double %25)
  store double %call15, double* %opacity, align 8
  %26 = load double, double* %opacity, align 8
  %cmp = fcmp oeq double %26, 0.000000e+00
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  br label %return

if.end.17:                                        ; preds = %if.end
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call18 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %27, %struct._GimpDrawable* %28, %struct._GimpPaintOptions* %29, %struct._GimpCoords* %30)
  store %struct._TempBuf* %call18, %struct._TempBuf** %area, align 8
  %31 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool19 = icmp ne %struct._TempBuf* %31, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_smudge_accumulator_coords(%struct._GimpPaintCore* %32, %struct._GimpCoords* %33, i32* %x, i32* %y)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %34)
  %35 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %35, i32 0, i32 3
  %36 = load i32, i32* %x23, align 4
  %37 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y24 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 4
  %38 = load i32, i32* %y24, align 4
  %39 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %39, i32 0, i32 1
  %40 = load i32, i32* %width, align 4
  %41 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %41, i32 0, i32 2
  %42 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call22, i32 %36, i32 %38, i32 %40, i32 %42, i32 0)
  %43 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call25 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %43, i32 8)
  store %struct._GimpDynamicsOutput* %call25, %struct._GimpDynamicsOutput** %rate_output, align 8
  %44 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %46 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %47 = load double, double* %fade_point, align 8
  %call26 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %44, %struct._GimpCoords* %45, %struct._GimpPaintOptions* %46, double %47)
  store double %call26, double* %dynamic_rate, align 8
  %48 = load %struct._GimpSmudgeOptions*, %struct._GimpSmudgeOptions** %options, align 8
  %rate27 = getelementptr inbounds %struct._GimpSmudgeOptions, %struct._GimpSmudgeOptions* %48, i32 0, i32 1
  %49 = load double, double* %rate27, align 8
  %div = fdiv double %49, 1.000000e+02
  %50 = load double, double* %dynamic_rate, align 8
  %mul = fmul double %div, %50
  store double %mul, double* %rate, align 8
  %51 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %51, i32 0, i32 3
  %52 = load i8*, i8** %accum_data, align 8
  %53 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %53, i32 0, i32 2
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %accumPR, i32 0, i32 10
  %54 = load i32, i32* %bytes, align 4
  %55 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR28 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %55, i32 0, i32 2
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %accumPR28, i32 0, i32 5
  %56 = load i32, i32* %rowstride, align 4
  %57 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x29 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 3
  %58 = load i32, i32* %x29, align 4
  %59 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %58, %59
  %60 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y30 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %60, i32 0, i32 4
  %61 = load i32, i32* %y30, align 4
  %62 = load i32, i32* %y, align 4
  %sub31 = sub nsw i32 %61, %62
  %63 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width32 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %63, i32 0, i32 1
  %64 = load i32, i32* %width32, align 4
  %65 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height33 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 2
  %66 = load i32, i32* %height33, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %52, i32 %54, i32 %56, i32 %sub, i32 %sub31, i32 %64, i32 %66)
  %67 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %68 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %68, i32 0, i32 1
  %69 = load i32, i32* %width34, align 4
  %70 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height35 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %70, i32 0, i32 2
  %71 = load i32, i32* %height35, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %67, i32 0, i32 0, i32 %69, i32 %71)
  %72 = load double, double* %rate, align 8
  %mul36 = fmul double %72, 2.550000e+02
  %add = fadd double %mul36, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv37 = trunc i32 %conv to i8
  call void @blend_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %tempPR, %struct._PixelRegion* %tempPR, i8 zeroext %conv37)
  %73 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_data38 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %73, i32 0, i32 3
  %74 = load i8*, i8** %accum_data38, align 8
  %75 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR39 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %75, i32 0, i32 2
  %bytes40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %accumPR39, i32 0, i32 10
  %76 = load i32, i32* %bytes40, align 4
  %77 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accumPR41 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %77, i32 0, i32 2
  %rowstride42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %accumPR41, i32 0, i32 5
  %78 = load i32, i32* %rowstride42, align 4
  %79 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %79, i32 0, i32 3
  %80 = load i32, i32* %x43, align 4
  %81 = load i32, i32* %x, align 4
  %sub44 = sub nsw i32 %80, %81
  %82 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %82, i32 0, i32 4
  %83 = load i32, i32* %y45, align 4
  %84 = load i32, i32* %y, align 4
  %sub46 = sub nsw i32 %83, %84
  %85 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width47 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %85, i32 0, i32 1
  %86 = load i32, i32* %width47, align 4
  %87 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height48 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %87, i32 0, i32 2
  %88 = load i32, i32* %height48, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %74, i32 %76, i32 %78, i32 %sub44, i32 %sub46, i32 %86, i32 %88)
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call49 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %89)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else, label %if.then.51

if.then.51:                                       ; preds = %if.end.21
  call void @add_alpha_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  br label %if.end.52

if.else:                                          ; preds = %if.end.21
  call void @copy_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.51
  %90 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call53 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %90, i32 4)
  store %struct._GimpDynamicsOutput* %call53, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %91 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %92 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %93 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %94 = load double, double* %fade_point, align 8
  %call54 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %91, %struct._GimpCoords* %92, %struct._GimpPaintOptions* %93, double %94)
  store double %call54, double* %hardness, align 8
  %95 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %96 = bitcast %struct._GimpPaintCore* %95 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_brush_core_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call55)
  %97 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpBrushCore*
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %99 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %100 = load double, double* %opacity, align 8
  %cmp57 = fcmp olt double %100, 1.000000e+00
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.52
  %101 = load double, double* %opacity, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %101, %cond.true ], [ 1.000000e+00, %cond.false ]
  %102 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call59 = call double @gimp_context_get_opacity(%struct._GimpContext* %102)
  %103 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call60 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %103)
  %104 = load double, double* %hardness, align 8
  call void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore* %97, %struct._GimpDrawable* %98, %struct._GimpCoords* %99, double %cond, double %call59, i32 %call60, double %104, i32 1)
  br label %return

return:                                           ; preds = %cond.end, %if.then.20, %if.then.16, %if.then
  ret void
}

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_accumulator_size(%struct._GimpPaintOptions* %paint_options, i32* %accumulator_size) #3 {
entry:
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %accumulator_size.addr = alloca i32*, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32* %accumulator_size, i32** %accumulator_size.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %0, i32 0, i32 2
  %1 = load double, double* %brush_size, align 8
  %add = fadd double %1, 1.000000e+00
  %2 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_size1 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %2, i32 0, i32 2
  %3 = load double, double* %brush_size1, align 8
  %add2 = fadd double %3, 1.000000e+00
  %mul = fmul double %add, %add2
  %mul3 = fmul double 2.000000e+00, %mul
  %call = call double @sqrt(double %mul3) #6
  %add4 = fadd double %call, 2.000000e+00
  %call5 = call double @ceil(double %add4) #5
  %conv = fptosi double %call5 to i32
  %4 = load i32*, i32** %accumulator_size.addr, align 8
  store i32 %conv, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_smudge_accumulator_coords(%struct._GimpPaintCore* %paint_core, %struct._GimpCoords* %coords, i32* %x, i32* %y) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %smudge = alloca %struct._GimpSmudge*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_smudge_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSmudge*
  store %struct._GimpSmudge* %2, %struct._GimpSmudge** %smudge, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x2, align 8
  %conv = fptosi double %4 to i32
  %5 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %5, i32 0, i32 4
  %6 = load i32, i32* %accum_size, align 4
  %div = sdiv i32 %6, 2
  %sub = sub nsw i32 %conv, %div
  %7 = load i32*, i32** %x.addr, align 8
  store i32 %sub, i32* %7, align 4
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y3, align 8
  %conv4 = fptosi double %9 to i32
  %10 = load %struct._GimpSmudge*, %struct._GimpSmudge** %smudge, align 8
  %accum_size5 = getelementptr inbounds %struct._GimpSmudge, %struct._GimpSmudge* %10, i32 0, i32 4
  %11 = load i32, i32* %accum_size5, align 4
  %div6 = sdiv i32 %11, 2
  %sub7 = sub nsw i32 %conv4, %div6
  %12 = load i32*, i32** %y.addr, align 8
  store i32 %sub7, i32* %12, align 4
  ret void
}

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare noalias i8* @g_malloc(i64) #1

declare i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable*, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare void @color_region(%struct._PixelRegion*, i8*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @blend_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8 zeroext) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
