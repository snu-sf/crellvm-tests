; ModuleID = './app/paint/gimpclone.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
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
%struct._GimpClone = type { %struct._GimpSourceCore }
%struct._GimpCloneOptions = type { %struct._GimpSourceOptions, i32 }
%struct._GimpSourceOptions = type { %struct._GimpPaintOptions, i32, i32, i32 }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }

@gimp_clone_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpClone\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gimp-clone\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Clone\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gimp-tool-clone\00", align 1
@gimp_clone_parent_class = internal global i8* null, align 8
@GimpClone_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"No patterns available for use with this tool.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_clone_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_clone_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_clone_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_source_core_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 264, void (i8*, i8*)* bitcast (void (i8*)* @gimp_clone_class_intern_init to void (i8*, i8*)*), i32 6552, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpClone*)* @gimp_clone_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_clone_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_clone_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_clone_parent_class, align 8
  %1 = load i32, i32* @GimpClone_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpClone_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCloneClass*
  call void @gimp_clone_class_init(%struct._GimpCloneClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_init(%struct._GimpClone* %clone) #3 {
entry:
  %clone.addr = alloca %struct._GimpClone*, align 8
  store %struct._GimpClone* %clone, %struct._GimpClone** %clone.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_clone_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_clone_get_type() #5
  %call1 = call i64 @gimp_clone_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_clone_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_class_init(%struct._GimpCloneClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCloneClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %source_core_class = alloca %struct._GimpSourceCoreClass*, align 8
  store %struct._GimpCloneClass* %klass, %struct._GimpCloneClass** %klass.addr, align 8
  %0 = load %struct._GimpCloneClass*, %struct._GimpCloneClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCloneClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_paint_core_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %2, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %3 = load %struct._GimpCloneClass*, %struct._GimpCloneClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCloneClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_source_core_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpSourceCoreClass*
  store %struct._GimpSourceCoreClass* %5, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %6 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %6, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_clone_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %7 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %motion = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %7, i32 0, i32 2
  store void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)* @gimp_clone_motion, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)** %motion, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_clone_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %options = alloca %struct._GimpCloneOptions*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_clone_options_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCloneOptions*
  store %struct._GimpCloneOptions* %2, %struct._GimpCloneOptions** %options, align 8
  %3 = load i8*, i8** @gimp_clone_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_paint_core_get_type() #5
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
  %12 = load %struct._GimpCloneOptions*, %struct._GimpCloneOptions** %options, align 8
  %clone_type = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %12, i32 0, i32 1
  %13 = load i32, i32* %clone_type, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._GimpCloneOptions*, %struct._GimpCloneOptions** %options, align 8
  %15 = bitcast %struct._GimpCloneOptions* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_context_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContext*
  %call8 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %16)
  %tobool9 = icmp ne %struct._GimpPattern* %call8, null
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then.5
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @gimp_error_quark() #5
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %17, i32 %call11, i32 0, i8* %call12)
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_motion(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, double %opacity, %struct._GimpPickable* %src_pickable, %struct._PixelRegion* %srcPR, i32 %src_offset_x, i32 %src_offset_y, %struct._TempBuf* %paint_area, i32 %paint_area_offset_x, i32 %paint_area_offset_y, i32 %paint_area_width, i32 %paint_area_height) #3 {
entry:
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %opacity.addr = alloca double, align 8
  %src_pickable.addr = alloca %struct._GimpPickable*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %src_offset_x.addr = alloca i32, align 4
  %src_offset_y.addr = alloca i32, align 4
  %paint_area.addr = alloca %struct._TempBuf*, align 8
  %paint_area_offset_x.addr = alloca i32, align 4
  %paint_area_offset_y.addr = alloca i32, align 4
  %paint_area_width.addr = alloca i32, align 4
  %paint_area_height.addr = alloca i32, align 4
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  %options = alloca %struct._GimpCloneOptions*, align 8
  %source_options = alloca %struct._GimpSourceOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %src_image = alloca %struct._GimpImage*, align 8
  %force_output = alloca %struct._GimpDynamicsOutput*, align 8
  %src_type = alloca i32, align 4
  %dest_type = alloca i32, align 4
  %pr = alloca i8*, align 8
  %y = alloca i32, align 4
  %destPR = alloca %struct._PixelRegion, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %fade_point = alloca double, align 8
  %force = alloca double, align 8
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._GimpPickable* %src_pickable, %struct._GimpPickable** %src_pickable.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i32 %src_offset_x, i32* %src_offset_x.addr, align 4
  store i32 %src_offset_y, i32* %src_offset_y.addr, align 4
  store %struct._TempBuf* %paint_area, %struct._TempBuf** %paint_area.addr, align 8
  store i32 %paint_area_offset_x, i32* %paint_area_offset_x.addr, align 4
  store i32 %paint_area_offset_y, i32* %paint_area_offset_y.addr, align 4
  store i32 %paint_area_width, i32* %paint_area_width.addr, align 4
  store i32 %paint_area_height, i32* %paint_area_height.addr, align 4
  %0 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %1 = bitcast %struct._GimpSourceCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_core_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %paint_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_clone_options_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCloneOptions*
  store %struct._GimpCloneOptions* %5, %struct._GimpCloneOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_source_options_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %8, %struct._GimpSourceOptions** %source_options, align 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %10 = bitcast %struct._GimpPaintOptions* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_context_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContext*
  store %struct._GimpContext* %11, %struct._GimpContext** %context, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call10, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %src_image, align 8
  store i32 0, i32* %src_type, align 4
  store i8* null, i8** %pr, align 8
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern, align 8
  %15 = load %struct._GimpCloneOptions*, %struct._GimpCloneOptions** %options, align 8
  %clone_type = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %15, i32 0, i32 1
  %16 = load i32, i32* %clone_type, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %17 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %17)
  store %struct._GimpImage* %call11, %struct._GimpImage** %src_image, align 8
  %18 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call12 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %18)
  store i32 %call12, i32* %src_type, align 4
  %19 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call13 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %19)
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 10
  %21 = load i32, i32* %bytes, align 4
  %cmp = icmp slt i32 %call13, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %22 = load i32, i32* %src_type, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load i32, i32* %src_type, align 4
  %cmp15 = icmp eq i32 %23, 1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  br label %cond.end.24

cond.false:                                       ; preds = %lor.lhs.false
  %24 = load i32, i32* %src_type, align 4
  %cmp16 = icmp eq i32 %24, 2
  br i1 %cmp16, label %cond.true.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %25 = load i32, i32* %src_type, align 4
  %cmp18 = icmp eq i32 %25, 3
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %lor.lhs.false.17
  %26 = load i32, i32* %src_type, align 4
  %cmp21 = icmp eq i32 %26, 4
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.20
  %27 = load i32, i32* %src_type, align 4
  %cmp22 = icmp eq i32 %27, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.20
  %28 = phi i1 [ true, %cond.false.20 ], [ %cmp22, %lor.rhs ]
  %cond = select i1 %28, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.19
  %cond23 = phi i32 [ 3, %cond.true.19 ], [ %cond, %lor.end ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end, %cond.true
  %cond25 = phi i32 [ 1, %cond.true ], [ %cond23, %cond.end ]
  store i32 %cond25, i32* %src_type, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.24, %sw.bb
  %29 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %30 = load i32, i32* %paint_area_offset_x.addr, align 4
  %31 = load i32, i32* %paint_area_offset_y.addr, align 4
  %32 = load i32, i32* %paint_area_width.addr, align 4
  %33 = load i32, i32* %paint_area_height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %34 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call26 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %34, %struct._PixelRegion* %destPR)
  %35 = bitcast %struct._PixelRegionIterator* %call26 to i8*
  store i8* %35, i8** %pr, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call28 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %36)
  store %struct._GimpPattern* %call28, %struct._GimpPattern** %pattern, align 8
  %37 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %38 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %38, i32 0, i32 1
  %39 = load i32, i32* %width, align 4
  %40 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %40, i32 0, i32 2
  %41 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %37, i32 0, i32 0, i32 %39, i32 %41)
  %call29 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %destPR)
  %42 = bitcast %struct._PixelRegionIterator* %call29 to i8*
  store i8* %42, i8** %pr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.27, %if.end
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call30 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %43)
  store i32 %call30, i32* %dest_type, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %sw.epilog
  %44 = load i8*, i8** %pr, align 8
  %cmp31 = icmp ne i8* %44, null
  br i1 %cmp31, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %45, i32 0, i32 0
  %46 = load i8*, i8** %data, align 8
  store i8* %46, i8** %s, align 8
  %data32 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %47 = load i8*, i8** %data32, align 8
  store i8* %47, i8** %d, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 9
  %49 = load i32, i32* %h, align 4
  %cmp34 = icmp slt i32 %48, %49
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.33
  %50 = load %struct._GimpCloneOptions*, %struct._GimpCloneOptions** %options, align 8
  %clone_type36 = getelementptr inbounds %struct._GimpCloneOptions, %struct._GimpCloneOptions* %50, i32 0, i32 1
  %51 = load i32, i32* %clone_type36, align 4
  switch i32 %51, label %sw.epilog.46 [
    i32 0, label %sw.bb.37
    i32 1, label %sw.bb.40
  ]

sw.bb.37:                                         ; preds = %for.body.35
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %53 = load i32, i32* %dest_type, align 4
  %54 = load %struct._GimpImage*, %struct._GimpImage** %src_image, align 8
  %55 = load i32, i32* %src_type, align 4
  %56 = load i8*, i8** %s, align 8
  %57 = load i8*, i8** %d, align 8
  %58 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %58, i32 0, i32 10
  %59 = load i32, i32* %bytes38, align 4
  %bytes39 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %60 = load i32, i32* %bytes39, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 8
  %61 = load i32, i32* %w, align 4
  call void @gimp_clone_line_image(%struct._GimpImage* %52, i32 %53, %struct._GimpImage* %54, i32 %55, i8* %56, i8* %57, i32 %59, i32 %60, i32 %61)
  %62 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %62, i32 0, i32 5
  %63 = load i32, i32* %rowstride, align 4
  %64 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %63 to i64
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  br label %sw.epilog.46

sw.bb.40:                                         ; preds = %for.body.35
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %66 = load i32, i32* %dest_type, align 4
  %67 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %68 = load i8*, i8** %d, align 8
  %69 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %69, i32 0, i32 3
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %src_offset_x.addr, align 4
  %add = add nsw i32 %70, %71
  %72 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y41 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %72, i32 0, i32 4
  %73 = load i32, i32* %y41, align 4
  %74 = load i32, i32* %y, align 4
  %add42 = add nsw i32 %73, %74
  %75 = load i32, i32* %src_offset_y.addr, align 4
  %add43 = add nsw i32 %add42, %75
  %bytes44 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %76 = load i32, i32* %bytes44, align 4
  %w45 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 8
  %77 = load i32, i32* %w45, align 4
  call void @gimp_clone_line_pattern(%struct._GimpImage* %65, i32 %66, %struct._GimpPattern* %67, i8* %68, i32 %add, i32 %add43, i32 %76, i32 %77)
  br label %sw.epilog.46

sw.epilog.46:                                     ; preds = %for.body.35, %sw.bb.40, %sw.bb.37
  %rowstride47 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %78 = load i32, i32* %rowstride47, align 4
  %79 = load i8*, i8** %d, align 8
  %idx.ext48 = sext i32 %78 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %79, i64 %idx.ext48
  store i8* %add.ptr49, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.46
  %80 = load i32, i32* %y, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %81 = load i8*, i8** %pr, align 8
  %82 = bitcast i8* %81 to %struct._PixelRegionIterator*
  %call51 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %82)
  %83 = bitcast %struct._PixelRegionIterator* %call51 to i8*
  store i8* %83, i8** %pr, align 8
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %84 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %85 = bitcast %struct._GimpPaintCore* %84 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_brush_core_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call53)
  %86 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpBrushCore*
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %86, i32 0, i32 3
  %87 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call55 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %87, i32 5)
  store %struct._GimpDynamicsOutput* %call55, %struct._GimpDynamicsOutput** %force_output, align 8
  %88 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %90 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %90, i32 0, i32 8
  %91 = load double, double* %pixel_dist, align 8
  %call56 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %88, %struct._GimpImage* %89, double %91)
  store double %call56, double* %fade_point, align 8
  %92 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %93 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %94 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %95 = load double, double* %fade_point, align 8
  %call57 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %92, %struct._GimpCoords* %93, %struct._GimpPaintOptions* %94, double %95)
  store double %call57, double* %force, align 8
  %96 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %97 = bitcast %struct._GimpPaintCore* %96 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_brush_core_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call58)
  %98 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpBrushCore*
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %100 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %101 = load double, double* %opacity.addr, align 8
  %cmp60 = fcmp olt double %101, 1.000000e+00
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %for.end.52
  %102 = load double, double* %opacity.addr, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %for.end.52
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi double [ %102, %cond.true.61 ], [ 1.000000e+00, %cond.false.62 ]
  %103 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call65 = call double @gimp_context_get_opacity(%struct._GimpContext* %103)
  %104 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call66 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %104)
  %105 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call67 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %105)
  %106 = load double, double* %force, align 8
  %107 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %source_options, align 8
  %align_mode = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %107, i32 0, i32 1
  %108 = load i32, i32* %align_mode, align 4
  %cmp68 = icmp eq i32 %108, 3
  %cond69 = select i1 %cmp68, i32 1, i32 0
  call void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore* %98, %struct._GimpDrawable* %99, %struct._GimpCoords* %100, double %cond64, double %call65, i32 %call66, i32 %call67, double %106, i32 %cond69)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #1

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #1

declare i32 @gimp_pickable_get_bytes(%struct._GimpPickable*) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_line_image(%struct._GimpImage* %dest_image, i32 %dest_type, %struct._GimpImage* %src_image, i32 %src_type, i8* %s, i8* %d, i32 %src_bytes, i32 %dest_bytes, i32 %width) #3 {
entry:
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %dest_type.addr = alloca i32, align 4
  %src_image.addr = alloca %struct._GimpImage*, align 8
  %src_type.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %src_bytes.addr = alloca i32, align 4
  %dest_bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %rgba = alloca [4 x i8], align 1
  %alpha = alloca i32, align 4
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %dest_type, i32* %dest_type.addr, align 4
  store %struct._GimpImage* %src_image, %struct._GimpImage** %src_image.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %src_bytes, i32* %src_bytes.addr, align 4
  store i32 %dest_bytes, i32* %dest_bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %dest_bytes.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %width.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %width.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GimpImage*, %struct._GimpImage** %src_image.addr, align 8
  %3 = load i32, i32* %src_type.addr, align 4
  %4 = load i8*, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i32 0
  call void @gimp_image_get_color(%struct._GimpImage* %2, i32 %3, i8* %4, i8* %arraydecay)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %6 = load i32, i32* %dest_type.addr, align 4
  %7 = load i8*, i8** %d.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %5, i32 %6, i8* %7, i32 0, i8* %arraydecay1)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %rgba, i32 0, i64 3
  %8 = load i8, i8* %arrayidx, align 1
  %9 = load i32, i32* %alpha, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %d.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %8, i8* %arrayidx2, align 1
  %11 = load i32, i32* %src_bytes.addr, align 4
  %12 = load i8*, i8** %s.addr, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %s.addr, align 8
  %13 = load i32, i32* %dest_bytes.addr, align 4
  %14 = load i8*, i8** %d.addr, align 8
  %idx.ext3 = sext i32 %13 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %14, i64 %idx.ext3
  store i8* %add.ptr4, i8** %d.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_clone_line_pattern(%struct._GimpImage* %dest_image, i32 %dest_type, %struct._GimpPattern* %pattern, i8* %d, i32 %x, i32 %y, i32 %dest_bytes, i32 %width) #3 {
entry:
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %dest_type.addr = alloca i32, align 4
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %d.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest_bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %pat = alloca i8*, align 8
  %p = alloca i8*, align 8
  %color_type = alloca i32, align 4
  %alpha = alloca i32, align 4
  %pat_bytes = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %dest_type, i32* %dest_type.addr, align 4
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %dest_bytes, i32* %dest_bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %0, i32 0, i32 1
  %1 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 0
  %2 = load i32, i32* %bytes, align 4
  store i32 %2, i32* %pat_bytes, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask1 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %4, i32 0, i32 1
  %5 = load %struct._TempBuf*, %struct._TempBuf** %mask1, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 1
  %6 = load i32, i32* %width2, align 4
  %7 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.end
  %8 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %while.body.5, label %while.end.8

while.body.5:                                     ; preds = %while.cond.3
  %9 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask6 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %9, i32 0, i32 1
  %10 = load %struct._TempBuf*, %struct._TempBuf** %mask6, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %12 = load i32, i32* %y.addr, align 4
  %add7 = add nsw i32 %12, %11
  store i32 %add7, i32* %y.addr, align 4
  br label %while.cond.3

while.end.8:                                      ; preds = %while.cond.3
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask9 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask9, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %14)
  %15 = load i32, i32* %y.addr, align 4
  %16 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask10 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %height11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 2
  %18 = load i32, i32* %height11, align 4
  %rem = srem i32 %15, %18
  %19 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask12 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %19, i32 0, i32 1
  %20 = load %struct._TempBuf*, %struct._TempBuf** %mask12, align 8
  %width13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 1
  %21 = load i32, i32* %width13, align 4
  %mul = mul nsw i32 %rem, %21
  %22 = load i32, i32* %pat_bytes, align 4
  %mul14 = mul nsw i32 %mul, %22
  %idx.ext = sext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext
  store i8* %add.ptr, i8** %pat, align 8
  %23 = load i32, i32* %pat_bytes, align 4
  %cmp15 = icmp eq i32 %23, 3
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end.8
  %24 = load i32, i32* %pat_bytes, align 4
  %cmp16 = icmp eq i32 %24, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end.8
  %25 = phi i1 [ true, %while.end.8 ], [ %cmp16, %lor.rhs ]
  %cond = select i1 %25, i32 0, i32 1
  store i32 %cond, i32* %color_type, align 4
  %26 = load i32, i32* %dest_bytes.addr, align 4
  %sub = sub nsw i32 %26, 1
  store i32 %sub, i32* %alpha, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %width.addr, align 4
  %cmp17 = icmp slt i32 %27, %28
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %pat, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %30, %31
  %32 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask19 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %32, i32 0, i32 1
  %33 = load %struct._TempBuf*, %struct._TempBuf** %mask19, align 8
  %width20 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %33, i32 0, i32 1
  %34 = load i32, i32* %width20, align 4
  %rem21 = srem i32 %add18, %34
  %35 = load i32, i32* %pat_bytes, align 4
  %mul22 = mul nsw i32 %rem21, %35
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %29, i64 %idx.ext23
  store i8* %add.ptr24, i8** %p, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %37 = load i32, i32* %dest_type.addr, align 4
  %38 = load i8*, i8** %d.addr, align 8
  %39 = load i32, i32* %color_type, align 4
  %40 = load i8*, i8** %p, align 8
  call void @gimp_image_transform_color(%struct._GimpImage* %36, i32 %37, i8* %38, i32 %39, i8* %40)
  %41 = load i32, i32* %pat_bytes, align 4
  %cmp25 = icmp eq i32 %41, 2
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %42 = load i32, i32* %pat_bytes, align 4
  %cmp26 = icmp eq i32 %42, 4
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %43 = load i32, i32* %pat_bytes, align 4
  %sub27 = sub nsw i32 %43, 1
  %idxprom = sext i32 %sub27 to i64
  %44 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 %idxprom
  %45 = load i8, i8* %arrayidx, align 1
  %46 = load i32, i32* %alpha, align 4
  %idxprom28 = sext i32 %46 to i64
  %47 = load i8*, i8** %d.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %47, i64 %idxprom28
  store i8 %45, i8* %arrayidx29, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %48 = load i32, i32* %alpha, align 4
  %idxprom30 = sext i32 %48 to i64
  %49 = load i8*, i8** %d.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %49, i64 %idxprom30
  store i8 -1, i8* %arrayidx31, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %50 = load i32, i32* %dest_bytes.addr, align 4
  %51 = load i8*, i8** %d.addr, align 8
  %idx.ext32 = sext i32 %50 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %51, i64 %idx.ext32
  store i8* %add.ptr33, i8** %d.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

declare void @gimp_image_get_color(%struct._GimpImage*, i32, i8*, i8*) #1

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
