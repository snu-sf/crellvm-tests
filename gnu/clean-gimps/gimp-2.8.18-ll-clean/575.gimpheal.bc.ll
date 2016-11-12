; ModuleID = './app/paint/gimpheal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpHealClass = type { %struct._GimpSourceCoreClass }
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
%struct._Gimp = type opaque
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
%struct._GimpSourceCore = type { %struct._GimpBrushCore, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32 }
%struct._GimpPickable = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpHeal = type { %struct._GimpSourceCore }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_heal_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpHeal\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gimp-heal\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Heal\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp-tool-heal\00", align 1
@gimp_heal_parent_class = internal global i8* null, align 8
@GimpHeal_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Healing does not operate on indexed layers.\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gimpheal.c\00", align 1
@__func__.gimp_heal_sub = private unnamed_addr constant [14 x i8] c"gimp_heal_sub\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"topPR->bytes == bottomPR->bytes\00", align 1
@__func__.gimp_heal_add = private unnamed_addr constant [14 x i8] c"gimp_heal_add\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"secondPR->bytes == resultPR->bytes\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_heal_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_heal_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_heal_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_source_core_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 264, void (i8*, i8*)* bitcast (void (i8*)* @gimp_heal_class_intern_init to void (i8*, i8*)*), i32 6552, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHeal*)* @gimp_heal_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_heal_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_heal_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_heal_parent_class, align 8
  %1 = load i32, i32* @GimpHeal_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHeal_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHealClass*
  call void @gimp_heal_class_init(%struct._GimpHealClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_init(%struct._GimpHeal* %heal) #3 {
entry:
  %heal.addr = alloca %struct._GimpHeal*, align 8
  store %struct._GimpHeal* %heal, %struct._GimpHeal** %heal.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_heal_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_heal_get_type() #7
  %call1 = call i64 @gimp_source_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_class_init(%struct._GimpHealClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHealClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %source_core_class = alloca %struct._GimpSourceCoreClass*, align 8
  store %struct._GimpHealClass* %klass, %struct._GimpHealClass** %klass.addr, align 8
  %0 = load %struct._GimpHealClass*, %struct._GimpHealClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHealClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_paint_core_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %2, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %3 = load %struct._GimpHealClass*, %struct._GimpHealClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpHealClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_source_core_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpSourceCoreClass*
  store %struct._GimpSourceCoreClass* %5, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %6 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %6, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_heal_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %7 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %source_core_class, align 8
  %motion = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %7, i32 0, i32 2
  store void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)* @gimp_heal_motion, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)** %motion, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_heal_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
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
  %3 = load i8*, i8** @gimp_heal_parent_class, align 8
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
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)) #6
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
define internal void @gimp_heal_motion(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, double %opacity, %struct._GimpPickable* %src_pickable, %struct._PixelRegion* %srcPR, i32 %src_offset_x, i32 %src_offset_y, %struct._TempBuf* %paint_area, i32 %paint_area_offset_x, i32 %paint_area_offset_y, i32 %paint_area_width, i32 %paint_area_height) #3 {
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
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %hardness_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %src = alloca %struct._TempBuf*, align 8
  %temp = alloca %struct._TempBuf*, align 8
  %origPR = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %src_type = alloca i32, align 4
  %mask_buf = alloca %struct._TempBuf*, align 8
  %fade_point = alloca double, align 8
  %hardness = alloca double, align 8
  %image180 = alloca %struct._GimpImage*, align 8
  %temp2 = alloca %struct._TempBuf*, align 8
  %new_buf = alloca i32, align 4
  %x230 = alloca i32, align 4
  %y234 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
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
  %call = call i64 @gimp_paint_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %paint_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_core_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushCore*
  %dynamics6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 3
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics6, align 8
  store %struct._GimpDynamics* %9, %struct._GimpDynamics** %dynamics, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call10 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %13, i32 4)
  store %struct._GimpDynamicsOutput* %call10, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %14 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %16, i32 0, i32 8
  %17 = load double, double* %pixel_dist, align 8
  %call11 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %14, %struct._GimpImage* %15, double %17)
  store double %call11, double* %fade_point, align 8
  %18 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %21 = load double, double* %fade_point, align 8
  %call12 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %18, %struct._GimpCoords* %19, %struct._GimpPaintOptions* %20, double %21)
  store double %call12, double* %hardness, align 8
  %22 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %23 = bitcast %struct._GimpSourceCore* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_brush_core_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpBrushCore*
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %26 = load double, double* %hardness, align 8
  %call15 = call %struct._TempBuf* @gimp_brush_core_get_brush_mask(%struct._GimpBrushCore* %24, %struct._GimpCoords* %25, i32 0, double %26)
  store %struct._TempBuf* %call15, %struct._TempBuf** %mask_buf, align 8
  %27 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call16 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %27)
  store i32 %call16, i32* %src_type, align 4
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %28, i32 0, i32 8
  %29 = load i32, i32* %w, align 4
  %30 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %30, i32 0, i32 9
  %31 = load i32, i32* %h, align 4
  %32 = load i32, i32* %src_type, align 4
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %33 = load i32, i32* %src_type, align 4
  %cmp17 = icmp eq i32 %33, 1
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end.26

cond.false:                                       ; preds = %lor.lhs.false
  %34 = load i32, i32* %src_type, align 4
  %cmp18 = icmp eq i32 %34, 2
  br i1 %cmp18, label %cond.true.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %cond.false
  %35 = load i32, i32* %src_type, align 4
  %cmp20 = icmp eq i32 %35, 3
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %lor.lhs.false.19, %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %lor.lhs.false.19
  %36 = load i32, i32* %src_type, align 4
  %cmp23 = icmp eq i32 %36, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.22
  %37 = load i32, i32* %src_type, align 4
  %cmp24 = icmp eq i32 %37, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.22
  %38 = phi i1 [ true, %cond.false.22 ], [ %cmp24, %lor.rhs ]
  %cond = select i1 %38, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.21
  %cond25 = phi i32 [ 3, %cond.true.21 ], [ %cond, %lor.end ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ 1, %cond.true ], [ %cond25, %cond.end ]
  %cmp28 = icmp eq i32 %cond27, 1
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.26
  br label %cond.end.148

cond.false.30:                                    ; preds = %cond.end.26
  %39 = load i32, i32* %src_type, align 4
  %cmp31 = icmp eq i32 %39, 0
  br i1 %cmp31, label %cond.true.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %cond.false.30
  %40 = load i32, i32* %src_type, align 4
  %cmp33 = icmp eq i32 %40, 1
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %lor.lhs.false.32, %cond.false.30
  br label %cond.end.48

cond.false.35:                                    ; preds = %lor.lhs.false.32
  %41 = load i32, i32* %src_type, align 4
  %cmp36 = icmp eq i32 %41, 2
  br i1 %cmp36, label %cond.true.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %cond.false.35
  %42 = load i32, i32* %src_type, align 4
  %cmp38 = icmp eq i32 %42, 3
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %lor.lhs.false.37, %cond.false.35
  br label %cond.end.46

cond.false.40:                                    ; preds = %lor.lhs.false.37
  %43 = load i32, i32* %src_type, align 4
  %cmp41 = icmp eq i32 %43, 4
  br i1 %cmp41, label %lor.end.44, label %lor.rhs.42

lor.rhs.42:                                       ; preds = %cond.false.40
  %44 = load i32, i32* %src_type, align 4
  %cmp43 = icmp eq i32 %44, 5
  br label %lor.end.44

lor.end.44:                                       ; preds = %lor.rhs.42, %cond.false.40
  %45 = phi i1 [ true, %cond.false.40 ], [ %cmp43, %lor.rhs.42 ]
  %cond45 = select i1 %45, i32 5, i32 -1
  br label %cond.end.46

cond.end.46:                                      ; preds = %lor.end.44, %cond.true.39
  %cond47 = phi i32 [ 3, %cond.true.39 ], [ %cond45, %lor.end.44 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.34
  %cond49 = phi i32 [ 1, %cond.true.34 ], [ %cond47, %cond.end.46 ]
  %cmp50 = icmp eq i32 %cond49, 0
  br i1 %cmp50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.48
  br label %cond.end.146

cond.false.52:                                    ; preds = %cond.end.48
  %46 = load i32, i32* %src_type, align 4
  %cmp53 = icmp eq i32 %46, 0
  br i1 %cmp53, label %cond.true.56, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %cond.false.52
  %47 = load i32, i32* %src_type, align 4
  %cmp55 = icmp eq i32 %47, 1
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %lor.lhs.false.54, %cond.false.52
  br label %cond.end.70

cond.false.57:                                    ; preds = %lor.lhs.false.54
  %48 = load i32, i32* %src_type, align 4
  %cmp58 = icmp eq i32 %48, 2
  br i1 %cmp58, label %cond.true.61, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %cond.false.57
  %49 = load i32, i32* %src_type, align 4
  %cmp60 = icmp eq i32 %49, 3
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %lor.lhs.false.59, %cond.false.57
  br label %cond.end.68

cond.false.62:                                    ; preds = %lor.lhs.false.59
  %50 = load i32, i32* %src_type, align 4
  %cmp63 = icmp eq i32 %50, 4
  br i1 %cmp63, label %lor.end.66, label %lor.rhs.64

lor.rhs.64:                                       ; preds = %cond.false.62
  %51 = load i32, i32* %src_type, align 4
  %cmp65 = icmp eq i32 %51, 5
  br label %lor.end.66

lor.end.66:                                       ; preds = %lor.rhs.64, %cond.false.62
  %52 = phi i1 [ true, %cond.false.62 ], [ %cmp65, %lor.rhs.64 ]
  %cond67 = select i1 %52, i32 5, i32 -1
  br label %cond.end.68

cond.end.68:                                      ; preds = %lor.end.66, %cond.true.61
  %cond69 = phi i32 [ 3, %cond.true.61 ], [ %cond67, %lor.end.66 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.56
  %cond71 = phi i32 [ 1, %cond.true.56 ], [ %cond69, %cond.end.68 ]
  %cmp72 = icmp eq i32 %cond71, 3
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end.70
  br label %cond.end.144

cond.false.74:                                    ; preds = %cond.end.70
  %53 = load i32, i32* %src_type, align 4
  %cmp75 = icmp eq i32 %53, 0
  br i1 %cmp75, label %cond.true.78, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %cond.false.74
  %54 = load i32, i32* %src_type, align 4
  %cmp77 = icmp eq i32 %54, 1
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %lor.lhs.false.76, %cond.false.74
  br label %cond.end.92

cond.false.79:                                    ; preds = %lor.lhs.false.76
  %55 = load i32, i32* %src_type, align 4
  %cmp80 = icmp eq i32 %55, 2
  br i1 %cmp80, label %cond.true.83, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %cond.false.79
  %56 = load i32, i32* %src_type, align 4
  %cmp82 = icmp eq i32 %56, 3
  br i1 %cmp82, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %lor.lhs.false.81, %cond.false.79
  br label %cond.end.90

cond.false.84:                                    ; preds = %lor.lhs.false.81
  %57 = load i32, i32* %src_type, align 4
  %cmp85 = icmp eq i32 %57, 4
  br i1 %cmp85, label %lor.end.88, label %lor.rhs.86

lor.rhs.86:                                       ; preds = %cond.false.84
  %58 = load i32, i32* %src_type, align 4
  %cmp87 = icmp eq i32 %58, 5
  br label %lor.end.88

lor.end.88:                                       ; preds = %lor.rhs.86, %cond.false.84
  %59 = phi i1 [ true, %cond.false.84 ], [ %cmp87, %lor.rhs.86 ]
  %cond89 = select i1 %59, i32 5, i32 -1
  br label %cond.end.90

cond.end.90:                                      ; preds = %lor.end.88, %cond.true.83
  %cond91 = phi i32 [ 3, %cond.true.83 ], [ %cond89, %lor.end.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.78
  %cond93 = phi i32 [ 1, %cond.true.78 ], [ %cond91, %cond.end.90 ]
  %cmp94 = icmp eq i32 %cond93, 2
  br i1 %cmp94, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.92
  br label %cond.end.142

cond.false.96:                                    ; preds = %cond.end.92
  %60 = load i32, i32* %src_type, align 4
  %cmp97 = icmp eq i32 %60, 0
  br i1 %cmp97, label %cond.true.100, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %cond.false.96
  %61 = load i32, i32* %src_type, align 4
  %cmp99 = icmp eq i32 %61, 1
  br i1 %cmp99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %lor.lhs.false.98, %cond.false.96
  br label %cond.end.114

cond.false.101:                                   ; preds = %lor.lhs.false.98
  %62 = load i32, i32* %src_type, align 4
  %cmp102 = icmp eq i32 %62, 2
  br i1 %cmp102, label %cond.true.105, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %cond.false.101
  %63 = load i32, i32* %src_type, align 4
  %cmp104 = icmp eq i32 %63, 3
  br i1 %cmp104, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %lor.lhs.false.103, %cond.false.101
  br label %cond.end.112

cond.false.106:                                   ; preds = %lor.lhs.false.103
  %64 = load i32, i32* %src_type, align 4
  %cmp107 = icmp eq i32 %64, 4
  br i1 %cmp107, label %lor.end.110, label %lor.rhs.108

lor.rhs.108:                                      ; preds = %cond.false.106
  %65 = load i32, i32* %src_type, align 4
  %cmp109 = icmp eq i32 %65, 5
  br label %lor.end.110

lor.end.110:                                      ; preds = %lor.rhs.108, %cond.false.106
  %66 = phi i1 [ true, %cond.false.106 ], [ %cmp109, %lor.rhs.108 ]
  %cond111 = select i1 %66, i32 5, i32 -1
  br label %cond.end.112

cond.end.112:                                     ; preds = %lor.end.110, %cond.true.105
  %cond113 = phi i32 [ 3, %cond.true.105 ], [ %cond111, %lor.end.110 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end.112, %cond.true.100
  %cond115 = phi i32 [ 1, %cond.true.100 ], [ %cond113, %cond.end.112 ]
  %cmp116 = icmp eq i32 %cond115, 5
  br i1 %cmp116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end.114
  br label %cond.end.140

cond.false.118:                                   ; preds = %cond.end.114
  %67 = load i32, i32* %src_type, align 4
  %cmp119 = icmp eq i32 %67, 0
  br i1 %cmp119, label %cond.true.122, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %cond.false.118
  %68 = load i32, i32* %src_type, align 4
  %cmp121 = icmp eq i32 %68, 1
  br i1 %cmp121, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %lor.lhs.false.120, %cond.false.118
  br label %cond.end.136

cond.false.123:                                   ; preds = %lor.lhs.false.120
  %69 = load i32, i32* %src_type, align 4
  %cmp124 = icmp eq i32 %69, 2
  br i1 %cmp124, label %cond.true.127, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %cond.false.123
  %70 = load i32, i32* %src_type, align 4
  %cmp126 = icmp eq i32 %70, 3
  br i1 %cmp126, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %lor.lhs.false.125, %cond.false.123
  br label %cond.end.134

cond.false.128:                                   ; preds = %lor.lhs.false.125
  %71 = load i32, i32* %src_type, align 4
  %cmp129 = icmp eq i32 %71, 4
  br i1 %cmp129, label %lor.end.132, label %lor.rhs.130

lor.rhs.130:                                      ; preds = %cond.false.128
  %72 = load i32, i32* %src_type, align 4
  %cmp131 = icmp eq i32 %72, 5
  br label %lor.end.132

lor.end.132:                                      ; preds = %lor.rhs.130, %cond.false.128
  %73 = phi i1 [ true, %cond.false.128 ], [ %cmp131, %lor.rhs.130 ]
  %cond133 = select i1 %73, i32 5, i32 -1
  br label %cond.end.134

cond.end.134:                                     ; preds = %lor.end.132, %cond.true.127
  %cond135 = phi i32 [ 3, %cond.true.127 ], [ %cond133, %lor.end.132 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.122
  %cond137 = phi i32 [ 1, %cond.true.122 ], [ %cond135, %cond.end.134 ]
  %cmp138 = icmp eq i32 %cond137, 4
  %cond139 = select i1 %cmp138, i32 1, i32 -1
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.136, %cond.true.117
  %cond141 = phi i32 [ 2, %cond.true.117 ], [ %cond139, %cond.end.136 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.95
  %cond143 = phi i32 [ 1, %cond.true.95 ], [ %cond141, %cond.end.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.73
  %cond145 = phi i32 [ 2, %cond.true.73 ], [ %cond143, %cond.end.142 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %cond.true.51
  %cond147 = phi i32 [ 3, %cond.true.51 ], [ %cond145, %cond.end.144 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %cond.true.29
  %cond149 = phi i32 [ 4, %cond.true.29 ], [ %cond147, %cond.end.146 ]
  %call150 = call %struct._TempBuf* @temp_buf_new(i32 %29, i32 %31, i32 %cond149, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call150, %struct._TempBuf** %src, align 8
  %74 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %75 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %75, i32 0, i32 1
  %76 = load i32, i32* %width, align 4
  %77 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %77, i32 0, i32 2
  %78 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %tempPR, %struct._TempBuf* %74, i32 0, i32 0, i32 %76, i32 %78)
  %79 = load i32, i32* %src_type, align 4
  %cmp151 = icmp eq i32 %79, 1
  br i1 %cmp151, label %if.then, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %cond.end.148
  %80 = load i32, i32* %src_type, align 4
  %cmp153 = icmp eq i32 %80, 3
  br i1 %cmp153, label %if.then, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.152
  %81 = load i32, i32* %src_type, align 4
  %cmp155 = icmp eq i32 %81, 5
  br i1 %cmp155, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.154, %lor.lhs.false.152, %cond.end.148
  %82 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  call void @copy_region(%struct._PixelRegion* %82, %struct._PixelRegion* %tempPR)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.154
  %83 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  call void @add_alpha_region(%struct._PixelRegion* %83, %struct._PixelRegion* %tempPR)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %84 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %85 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %86 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %width156 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %86, i32 0, i32 1
  %87 = load i32, i32* %width156, align 4
  %88 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %height157 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %88, i32 0, i32 2
  %89 = load i32, i32* %height157, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %84, %struct._TempBuf* %85, i32 0, i32 0, i32 %87, i32 %89)
  %90 = load i32, i32* %src_type, align 4
  %cmp158 = icmp eq i32 %90, 0
  br i1 %cmp158, label %cond.true.161, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %if.end
  %91 = load i32, i32* %src_type, align 4
  %cmp160 = icmp eq i32 %91, 1
  br i1 %cmp160, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %lor.lhs.false.159, %if.end
  br label %cond.end.175

cond.false.162:                                   ; preds = %lor.lhs.false.159
  %92 = load i32, i32* %src_type, align 4
  %cmp163 = icmp eq i32 %92, 2
  br i1 %cmp163, label %cond.true.166, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %cond.false.162
  %93 = load i32, i32* %src_type, align 4
  %cmp165 = icmp eq i32 %93, 3
  br i1 %cmp165, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %lor.lhs.false.164, %cond.false.162
  br label %cond.end.173

cond.false.167:                                   ; preds = %lor.lhs.false.164
  %94 = load i32, i32* %src_type, align 4
  %cmp168 = icmp eq i32 %94, 4
  br i1 %cmp168, label %lor.end.171, label %lor.rhs.169

lor.rhs.169:                                      ; preds = %cond.false.167
  %95 = load i32, i32* %src_type, align 4
  %cmp170 = icmp eq i32 %95, 5
  br label %lor.end.171

lor.end.171:                                      ; preds = %lor.rhs.169, %cond.false.167
  %96 = phi i1 [ true, %cond.false.167 ], [ %cmp170, %lor.rhs.169 ]
  %cond172 = select i1 %96, i32 5, i32 -1
  br label %cond.end.173

cond.end.173:                                     ; preds = %lor.end.171, %cond.true.166
  %cond174 = phi i32 [ 3, %cond.true.166 ], [ %cond172, %lor.end.171 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.161
  %cond176 = phi i32 [ 1, %cond.true.161 ], [ %cond174, %cond.end.173 ]
  %97 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call177 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %97)
  %cmp178 = icmp ne i32 %cond176, %call177
  br i1 %cmp178, label %if.then.179, label %if.end.188

if.then.179:                                      ; preds = %cond.end.175
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %99 = bitcast %struct._GimpDrawable* %98 to %struct._GTypeInstance*
  %call181 = call i64 @gimp_item_get_type() #7
  %call182 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call181)
  %100 = bitcast %struct._GTypeInstance* %call182 to %struct._GimpItem*
  %call183 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %100)
  store %struct._GimpImage* %call183, %struct._GimpImage** %image180, align 8
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image180, align 8
  %102 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call184 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %102)
  %103 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %call185 = call %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage* %101, i32 %call184, %struct._TempBuf* %103, i32* %new_buf)
  store %struct._TempBuf* %call185, %struct._TempBuf** %temp2, align 8
  %104 = load i32, i32* %new_buf, align 4
  %tobool = icmp ne i32 %104, 0
  br i1 %tobool, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.then.179
  %105 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  call void @temp_buf_free(%struct._TempBuf* %105)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.then.179
  %106 = load %struct._TempBuf*, %struct._TempBuf** %temp2, align 8
  store %struct._TempBuf* %106, %struct._TempBuf** %src, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %cond.end.175
  %107 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %108 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %109 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %width189 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %109, i32 0, i32 1
  %110 = load i32, i32* %width189, align 4
  %111 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  %height190 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %111, i32 0, i32 2
  %112 = load i32, i32* %height190, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %107, %struct._TempBuf* %108, i32 0, i32 0, i32 %110, i32 %112)
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call191 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %113)
  %114 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %114, i32 0, i32 3
  %115 = load i32, i32* %x, align 4
  %116 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %116, i32 0, i32 4
  %117 = load i32, i32* %y, align 4
  %118 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %width192 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %118, i32 0, i32 1
  %119 = load i32, i32* %width192, align 4
  %120 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %height193 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %120, i32 0, i32 2
  %121 = load i32, i32* %height193, align 4
  call void @pixel_region_init(%struct._PixelRegion* %origPR, %struct._TileManager* %call191, i32 %115, i32 %117, i32 %119, i32 %121, i32 0)
  %w194 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %origPR, i32 0, i32 8
  %122 = load i32, i32* %w194, align 4
  %h195 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %origPR, i32 0, i32 9
  %123 = load i32, i32* %h195, align 4
  %124 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call196 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %124)
  %call197 = call %struct._TempBuf* @temp_buf_new(i32 %122, i32 %123, i32 %call196, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call197, %struct._TempBuf** %temp, align 8
  %125 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %126 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %width198 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %126, i32 0, i32 1
  %127 = load i32, i32* %width198, align 4
  %128 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %height199 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %128, i32 0, i32 2
  %129 = load i32, i32* %height199, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %tempPR, %struct._TempBuf* %125, i32 0, i32 0, i32 %127, i32 %129)
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call200 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %130)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %if.end.188
  call void @copy_region(%struct._PixelRegion* %origPR, %struct._PixelRegion* %tempPR)
  br label %if.end.204

if.else.203:                                      ; preds = %if.end.188
  call void @add_alpha_region(%struct._PixelRegion* %origPR, %struct._PixelRegion* %tempPR)
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.203, %if.then.202
  %131 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %132 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %width205 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %132, i32 0, i32 1
  %133 = load i32, i32* %width205, align 4
  %134 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %height206 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %134, i32 0, i32 2
  %135 = load i32, i32* %height206, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %tempPR, %struct._TempBuf* %131, i32 0, i32 0, i32 %133, i32 %135)
  %136 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %137 = load i32, i32* %paint_area_offset_x.addr, align 4
  %138 = load i32, i32* %paint_area_offset_y.addr, align 4
  %139 = load i32, i32* %paint_area_width.addr, align 4
  %140 = load i32, i32* %paint_area_height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %141 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w207 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %141, i32 0, i32 8
  %142 = load i32, i32* %w207, align 4
  %w208 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempPR, i32 0, i32 8
  %143 = load i32, i32* %w208, align 4
  %cmp209 = icmp ne i32 %142, %143
  br i1 %cmp209, label %if.then.228, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %if.end.204
  %144 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w211 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %144, i32 0, i32 8
  %145 = load i32, i32* %w211, align 4
  %w212 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 8
  %146 = load i32, i32* %w212, align 4
  %cmp213 = icmp ne i32 %145, %146
  br i1 %cmp213, label %if.then.228, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %lor.lhs.false.210
  %147 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h215 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %147, i32 0, i32 9
  %148 = load i32, i32* %h215, align 4
  %h216 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempPR, i32 0, i32 9
  %149 = load i32, i32* %h216, align 4
  %cmp217 = icmp ne i32 %148, %149
  br i1 %cmp217, label %if.then.228, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %lor.lhs.false.214
  %150 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h219 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %150, i32 0, i32 9
  %151 = load i32, i32* %h219, align 4
  %h220 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 9
  %152 = load i32, i32* %h220, align 4
  %cmp221 = icmp ne i32 %151, %152
  br i1 %cmp221, label %if.then.228, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %lor.lhs.false.218
  %w223 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempPR, i32 0, i32 8
  %153 = load i32, i32* %w223, align 4
  %cmp224 = icmp sle i32 %153, 0
  br i1 %cmp224, label %if.then.228, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.222
  %h226 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %tempPR, i32 0, i32 9
  %154 = load i32, i32* %h226, align 4
  %cmp227 = icmp sle i32 %154, 0
  br i1 %cmp227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %lor.lhs.false.225, %lor.lhs.false.222, %lor.lhs.false.218, %lor.lhs.false.214, %lor.lhs.false.210, %if.end.204
  %155 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  call void @temp_buf_free(%struct._TempBuf* %155)
  %156 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  call void @temp_buf_free(%struct._TempBuf* %156)
  br label %return

if.end.229:                                       ; preds = %lor.lhs.false.225
  %157 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x231 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %157, i32 0, i32 0
  %158 = load double, double* %x231, align 8
  %call232 = call double @floor(double %158) #7
  %conv = fptosi double %call232 to i32
  %159 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %width233 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %159, i32 0, i32 1
  %160 = load i32, i32* %width233, align 4
  %shr = ashr i32 %160, 1
  %sub = sub nsw i32 %conv, %shr
  store i32 %sub, i32* %x230, align 4
  %161 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y235 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %161, i32 0, i32 1
  %162 = load double, double* %y235, align 8
  %call236 = call double @floor(double %162) #7
  %conv237 = fptosi double %call236 to i32
  %163 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %height238 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %163, i32 0, i32 2
  %164 = load i32, i32* %height238, align 4
  %shr239 = ashr i32 %164, 1
  %sub240 = sub nsw i32 %conv237, %shr239
  store i32 %sub240, i32* %y234, align 4
  %165 = load i32, i32* %x230, align 4
  %cmp241 = icmp slt i32 %165, 0
  br i1 %cmp241, label %cond.true.243, label %cond.false.245

cond.true.243:                                    ; preds = %if.end.229
  %166 = load i32, i32* %x230, align 4
  %sub244 = sub nsw i32 0, %166
  br label %cond.end.246

cond.false.245:                                   ; preds = %if.end.229
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.245, %cond.true.243
  %cond247 = phi i32 [ %sub244, %cond.true.243 ], [ 0, %cond.false.245 ]
  store i32 %cond247, i32* %off_x, align 4
  %167 = load i32, i32* %y234, align 4
  %cmp248 = icmp slt i32 %167, 0
  br i1 %cmp248, label %cond.true.250, label %cond.false.252

cond.true.250:                                    ; preds = %cond.end.246
  %168 = load i32, i32* %y234, align 4
  %sub251 = sub nsw i32 0, %168
  br label %cond.end.253

cond.false.252:                                   ; preds = %cond.end.246
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.252, %cond.true.250
  %cond254 = phi i32 [ %sub251, %cond.true.250 ], [ 0, %cond.false.252 ]
  store i32 %cond254, i32* %off_y, align 4
  %169 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %170 = load i32, i32* %off_x, align 4
  %171 = load i32, i32* %off_y, align 4
  %172 = load i32, i32* %paint_area_width.addr, align 4
  %173 = load i32, i32* %paint_area_height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %maskPR, %struct._TempBuf* %169, i32 %170, i32 %171, i32 %172, i32 %173)
  %174 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call255 = call %struct._PixelRegion* @gimp_heal_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %174, %struct._PixelRegion* %maskPR)
  %175 = load %struct._TempBuf*, %struct._TempBuf** %src, align 8
  call void @temp_buf_free(%struct._TempBuf* %175)
  %176 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %177 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %width256 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %177, i32 0, i32 1
  %178 = load i32, i32* %width256, align 4
  %179 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  %height257 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %179, i32 0, i32 2
  %180 = load i32, i32* %height257, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %tempPR, %struct._TempBuf* %176, i32 0, i32 0, i32 %178, i32 %180)
  call void @copy_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  %181 = load %struct._TempBuf*, %struct._TempBuf** %temp, align 8
  call void @temp_buf_free(%struct._TempBuf* %181)
  %182 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %183 = bitcast %struct._GimpPaintCore* %182 to %struct._GTypeInstance*
  %call258 = call i64 @gimp_brush_core_get_type() #7
  %call259 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call258)
  %184 = bitcast %struct._GTypeInstance* %call259 to %struct._GimpBrushCore*
  %185 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %186 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %187 = load double, double* %opacity.addr, align 8
  %cmp260 = fcmp olt double %187, 1.000000e+00
  br i1 %cmp260, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %cond.end.253
  %188 = load double, double* %opacity.addr, align 8
  br label %cond.end.264

cond.false.263:                                   ; preds = %cond.end.253
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.262
  %cond265 = phi double [ %188, %cond.true.262 ], [ 1.000000e+00, %cond.false.263 ]
  %189 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call266 = call double @gimp_context_get_opacity(%struct._GimpContext* %189)
  %190 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call267 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %190)
  %191 = load double, double* %hardness, align 8
  call void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore* %184, %struct._GimpDrawable* %185, %struct._GimpCoords* %186, double %cond265, double %call266, i32 %call267, double %191, i32 1)
  br label %return

return:                                           ; preds = %cond.end.264, %if.then.228
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare %struct._TempBuf* @gimp_brush_core_get_brush_mask(%struct._GimpBrushCore*, %struct._GimpCoords*, i32, double) #1

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #1

declare %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage*, i32, %struct._TempBuf*, i32*) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind uwtable
define internal %struct._PixelRegion* @gimp_heal_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %maskPR) #3 {
entry:
  %tempPR.addr = alloca %struct._PixelRegion*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %i_1 = alloca double*, align 8
  %i_2 = alloca double*, align 8
  store %struct._PixelRegion* %tempPR, %struct._PixelRegion** %tempPR.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 10
  %3 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 8
  %5 = load i32, i32* %w, align 4
  %mul1 = mul nsw i32 %mul, %5
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %6 = bitcast i8* %call to double*
  store double* %6, double** %i_1, align 8
  %7 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %h2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %7, i32 0, i32 9
  %8 = load i32, i32* %h2, align 4
  %9 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %9, i32 0, i32 10
  %10 = load i32, i32* %bytes3, align 4
  %mul4 = mul nsw i32 %8, %10
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %w5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 8
  %12 = load i32, i32* %w5, align 4
  %mul6 = mul nsw i32 %mul4, %12
  %conv7 = sext i32 %mul6 to i64
  %call8 = call noalias i8* @g_malloc_n(i64 %conv7, i64 8)
  %13 = bitcast i8* %call8 to double*
  store double* %13, double** %i_2, align 8
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %16 = load double*, double** %i_1, align 8
  call void @gimp_heal_sub(%struct._PixelRegion* %14, %struct._PixelRegion* %15, double* %16)
  %17 = load double*, double** %i_1, align 8
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %h9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 9
  %19 = load i32, i32* %h9, align 4
  %20 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %bytes10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %20, i32 0, i32 10
  %21 = load i32, i32* %bytes10, align 4
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  %w11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 8
  %23 = load i32, i32* %w11, align 4
  %24 = load double*, double** %i_2, align 8
  %25 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  call void @gimp_heal_laplace_loop(double* %17, i32 %19, i32 %21, i32 %23, double* %24, %struct._PixelRegion* %25)
  %26 = load double*, double** %i_2, align 8
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  call void @gimp_heal_add(double* %26, %struct._PixelRegion* %27, %struct._PixelRegion* %28)
  %29 = load double*, double** %i_1, align 8
  %30 = bitcast double* %29 to i8*
  call void @g_free(i8* %30)
  %31 = load double*, double** %i_2, align 8
  %32 = bitcast double* %31 to i8*
  call void @g_free(i8* %32)
  %33 = load %struct._PixelRegion*, %struct._PixelRegion** %tempPR.addr, align 8
  ret %struct._PixelRegion* %33
}

declare void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_sub(%struct._PixelRegion* %topPR, %struct._PixelRegion* %bottomPR, double* %result) #3 {
entry:
  %topPR.addr = alloca %struct._PixelRegion*, align 8
  %bottomPR.addr = alloca %struct._PixelRegion*, align 8
  %result.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %depth = alloca i32, align 4
  %t_data = alloca i8*, align 8
  %b_data = alloca i8*, align 8
  %t = alloca i8*, align 8
  %b = alloca i8*, align 8
  %r = alloca double*, align 8
  store %struct._PixelRegion* %topPR, %struct._PixelRegion** %topPR.addr, align 8
  store %struct._PixelRegion* %bottomPR, %struct._PixelRegion** %bottomPR.addr, align 8
  store double* %result, double** %result.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h, align 4
  store i32 %1, i32* %height, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 10
  %5 = load i32, i32* %bytes, align 4
  store i32 %5, i32* %depth, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %t_data, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %bottomPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8
  store i8* %9, i8** %b_data, align 8
  %10 = load double*, double** %result.addr, align 8
  store double* %10, double** %r, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 10
  %12 = load i32, i32* %bytes2, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %bottomPR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 10
  %14 = load i32, i32* %bytes3, align 4
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_heal_sub, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %do.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %height, align 4
  %cmp4 = icmp slt i32 %15, %16
  br i1 %cmp4, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %t_data, align 8
  store i8* %17, i8** %t, align 8
  %18 = load i8*, i8** %b_data, align 8
  store i8* %18, i8** %b, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.20, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %width, align 4
  %cmp6 = icmp slt i32 %19, %20
  br i1 %cmp6, label %for.body.7, label %for.end.22

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %depth, align 4
  %cmp9 = icmp slt i32 %21, %22
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %23 = load i32, i32* %k, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %t, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %25 to double
  %26 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load i8*, i8** %b, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %27, i64 %idxprom11
  %28 = load i8, i8* %arrayidx12, align 1
  %conv13 = uitofp i8 %28 to double
  %sub = fsub double %conv, %conv13
  %29 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load double*, double** %r, align 8
  %arrayidx15 = getelementptr inbounds double, double* %30, i64 %idxprom14
  store double %sub, double* %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %32 = load i32, i32* %depth, align 4
  %33 = load i8*, i8** %t, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %t, align 8
  %34 = load i32, i32* %depth, align 4
  %35 = load i8*, i8** %b, align 8
  %idx.ext16 = sext i32 %34 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %35, i64 %idx.ext16
  store i8* %add.ptr17, i8** %b, align 8
  %36 = load i32, i32* %depth, align 4
  %37 = load double*, double** %r, align 8
  %idx.ext18 = sext i32 %36 to i64
  %add.ptr19 = getelementptr inbounds double, double* %37, i64 %idx.ext18
  store double* %add.ptr19, double** %r, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %38 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %38, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.5

for.end.22:                                       ; preds = %for.cond.5
  %39 = load %struct._PixelRegion*, %struct._PixelRegion** %topPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %39, i32 0, i32 5
  %40 = load i32, i32* %rowstride, align 4
  %41 = load i8*, i8** %t_data, align 8
  %idx.ext23 = sext i32 %40 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %41, i64 %idx.ext23
  store i8* %add.ptr24, i8** %t_data, align 8
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %bottomPR.addr, align 8
  %rowstride25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %42, i32 0, i32 5
  %43 = load i32, i32* %rowstride25, align 4
  %44 = load i8*, i8** %b_data, align 8
  %idx.ext26 = sext i32 %43 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %44, i64 %idx.ext26
  store i8* %add.ptr27, i8** %b_data, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.22
  %45 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %45, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_laplace_loop(double* %matrix, i32 %height, i32 %depth, i32 %width, double* %solution, %struct._PixelRegion* %maskPR) #3 {
entry:
  %matrix.addr = alloca double*, align 8
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %solution.addr = alloca double*, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %i = alloca i32, align 4
  %sqr_err = alloca double, align 8
  store double* %matrix, double** %matrix.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store double* %solution, double** %solution.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double*, double** %matrix.addr, align 8
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %depth.addr, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load double*, double** %solution.addr, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 5
  %9 = load i32, i32* %rowstride, align 4
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 6
  %11 = load i32, i32* %x, align 4
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %y = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %12, i32 0, i32 7
  %13 = load i32, i32* %y, align 4
  %call = call double @gimp_heal_laplace_iteration(double* %1, i32 %2, i32 %3, i32 %4, double* %5, i8* %7, i32 %9, i32 %11, i32 %13)
  store double %call, double* %sqr_err, align 8
  %14 = load double*, double** %matrix.addr, align 8
  %15 = bitcast double* %14 to i8*
  %16 = load double*, double** %solution.addr, align 8
  %17 = bitcast double* %16 to i8*
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %18, %19
  %20 = load i32, i32* %depth.addr, align 4
  %mul1 = mul nsw i32 %mul, %20
  %conv = sext i32 %mul1 to i64
  %mul2 = mul i64 %conv, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %17, i64 %mul2, i32 8, i1 false)
  %21 = load double, double* %sqr_err, align 8
  %cmp3 = fcmp olt double %21, 1.000000e-03
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_heal_add(double* %first, %struct._PixelRegion* %secondPR, %struct._PixelRegion* %resultPR) #3 {
entry:
  %first.addr = alloca double*, align 8
  %secondPR.addr = alloca %struct._PixelRegion*, align 8
  %resultPR.addr = alloca %struct._PixelRegion*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %depth = alloca i32, align 4
  %s_data = alloca i8*, align 8
  %r_data = alloca i8*, align 8
  %f = alloca double*, align 8
  %s = alloca i8*, align 8
  %r = alloca i8*, align 8
  store double* %first, double** %first.addr, align 8
  store %struct._PixelRegion* %secondPR, %struct._PixelRegion** %secondPR.addr, align 8
  store %struct._PixelRegion* %resultPR, %struct._PixelRegion** %resultPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h, align 4
  store i32 %1, i32* %height, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 8
  %3 = load i32, i32* %w, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 10
  %5 = load i32, i32* %bytes, align 4
  store i32 %5, i32* %depth, align 4
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %s_data, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %resultPR.addr, align 8
  %data1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8
  store i8* %9, i8** %r_data, align 8
  %10 = load double*, double** %first.addr, align 8
  store double* %10, double** %f, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %bytes2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 10
  %12 = load i32, i32* %bytes2, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %resultPR.addr, align 8
  %bytes3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 10
  %14 = load i32, i32* %bytes3, align 4
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_heal_add, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %do.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %height, align 4
  %cmp4 = icmp slt i32 %15, %16
  br i1 %cmp4, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %s_data, align 8
  store i8* %17, i8** %s, align 8
  %18 = load i8*, i8** %r_data, align 8
  store i8* %18, i8** %r, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.46, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %width, align 4
  %cmp6 = icmp slt i32 %19, %20
  br i1 %cmp6, label %for.body.7, label %for.end.48

for.body.7:                                       ; preds = %for.cond.5
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.7
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %depth, align 4
  %cmp9 = icmp slt i32 %21, %22
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %23 = load i32, i32* %k, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load double*, double** %f, align 8
  %arrayidx = getelementptr inbounds double, double* %24, i64 %idxprom
  %25 = load double, double* %arrayidx, align 8
  %26 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %27, i64 %idxprom11
  %28 = load i8, i8* %arrayidx12, align 1
  %conv = uitofp i8 %28 to double
  %add = fadd double %25, %conv
  %add13 = fadd double %add, 5.000000e-01
  %conv14 = fptosi double %add13 to i32
  %cmp15 = icmp sgt i32 %conv14, 255
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  br label %cond.end.37

cond.false:                                       ; preds = %for.body.10
  %29 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load double*, double** %f, align 8
  %arrayidx18 = getelementptr inbounds double, double* %30, i64 %idxprom17
  %31 = load double, double* %arrayidx18, align 8
  %32 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load i8*, i8** %s, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %33, i64 %idxprom19
  %34 = load i8, i8* %arrayidx20, align 1
  %conv21 = uitofp i8 %34 to double
  %add22 = fadd double %31, %conv21
  %add23 = fadd double %add22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %cmp25 = icmp slt i32 %conv24, 0
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %35 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load double*, double** %f, align 8
  %arrayidx30 = getelementptr inbounds double, double* %36, i64 %idxprom29
  %37 = load double, double* %arrayidx30, align 8
  %38 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load i8*, i8** %s, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 %idxprom31
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = uitofp i8 %40 to double
  %add34 = fadd double %37, %conv33
  %add35 = fadd double %add34, 5.000000e-01
  %conv36 = fptosi double %add35 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond = phi i32 [ 0, %cond.true.27 ], [ %conv36, %cond.false.28 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end, %cond.true
  %cond38 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv39 = trunc i32 %cond38 to i8
  %41 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %41 to i64
  %42 = load i8*, i8** %r, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %42, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.37
  %43 = load i32, i32* %k, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %44 = load i32, i32* %depth, align 4
  %45 = load double*, double** %f, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds double, double* %45, i64 %idx.ext
  store double* %add.ptr, double** %f, align 8
  %46 = load i32, i32* %depth, align 4
  %47 = load i8*, i8** %s, align 8
  %idx.ext42 = sext i32 %46 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %47, i64 %idx.ext42
  store i8* %add.ptr43, i8** %s, align 8
  %48 = load i32, i32* %depth, align 4
  %49 = load i8*, i8** %r, align 8
  %idx.ext44 = sext i32 %48 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %49, i64 %idx.ext44
  store i8* %add.ptr45, i8** %r, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end
  %50 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %50, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.5

for.end.48:                                       ; preds = %for.cond.5
  %51 = load %struct._PixelRegion*, %struct._PixelRegion** %secondPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %51, i32 0, i32 5
  %52 = load i32, i32* %rowstride, align 4
  %53 = load i8*, i8** %s_data, align 8
  %idx.ext49 = sext i32 %52 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %53, i64 %idx.ext49
  store i8* %add.ptr50, i8** %s_data, align 8
  %54 = load %struct._PixelRegion*, %struct._PixelRegion** %resultPR.addr, align 8
  %rowstride51 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %54, i32 0, i32 5
  %55 = load i32, i32* %rowstride51, align 4
  %56 = load i8*, i8** %r_data, align 8
  %idx.ext52 = sext i32 %55 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %56, i64 %idx.ext52
  store i8* %add.ptr53, i8** %r_data, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.48
  %57 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %57, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal double @gimp_heal_laplace_iteration(double* %matrix, i32 %height, i32 %depth, i32 %width, double* %solution, i8* %mask, i32 %mask_stride, i32 %mask_offx, i32 %mask_offy) #3 {
entry:
  %matrix.addr = alloca double*, align 8
  %height.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %solution.addr = alloca double*, align 8
  %mask.addr = alloca i8*, align 8
  %mask_stride.addr = alloca i32, align 4
  %mask_offx.addr = alloca i32, align 4
  %mask_offy.addr = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %off = alloca i32, align 4
  %offm = alloca i32, align 4
  %offm0 = alloca i32, align 4
  %off0 = alloca i32, align 4
  %tmp = alloca double, align 8
  %diff = alloca double, align 8
  %err = alloca double, align 8
  %w = alloca double, align 8
  store double* %matrix, double** %matrix.addr, align 8
  store i32 %height, i32* %height.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store double* %solution, double** %solution.addr, align 8
  store i8* %mask, i8** %mask.addr, align 8
  store i32 %mask_stride, i32* %mask_stride.addr, align 4
  store i32 %mask_offx, i32* %mask_offx.addr, align 4
  store i32 %mask_offy, i32* %mask_offy.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %depth.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  store double 0.000000e+00, double* %err, align 8
  store double 4.500000e-01, double* %w, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %rowstride, align 4
  %mul4 = mul nsw i32 %4, %5
  store i32 %mul4, i32* %off0, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %mask_offy.addr, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %mask_stride.addr, align 4
  %mul5 = mul nsw i32 %add, %8
  store i32 %mul5, i32* %offm0, align 4
  %9 = load i32, i32* %i, align 4
  %rem = srem i32 %9, 2
  store i32 %rem, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.85, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %width.addr, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.8, label %for.end.87

for.body.8:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %off0, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %depth.addr, align 4
  %mul9 = mul nsw i32 %13, %14
  %add10 = add nsw i32 %12, %mul9
  store i32 %add10, i32* %off, align 4
  %15 = load i32, i32* %offm0, align 4
  %16 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %15, %16
  %17 = load i32, i32* %mask_offx.addr, align 4
  %add12 = add nsw i32 %add11, %17
  store i32 %add12, i32* %offm, align 4
  %18 = load i32, i32* %offm, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8*, i8** %mask.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp13 = icmp eq i32 0, %conv
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %21 = load i32, i32* %i, align 4
  %cmp15 = icmp eq i32 %21, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %23, 1
  %cmp18 = icmp eq i32 %22, %sub
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.17
  %24 = load i32, i32* %j, align 4
  %cmp21 = icmp eq i32 %24, 0
  br i1 %cmp21, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.20
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %width.addr, align 4
  %sub24 = sub nsw i32 %26, 1
  %cmp25 = icmp eq i32 %25, %sub24
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.23, %lor.lhs.false.20, %lor.lhs.false.17, %lor.lhs.false, %for.body.8
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %depth.addr, align 4
  %cmp28 = icmp slt i32 %27, %28
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.27
  %29 = load i32, i32* %off, align 4
  %30 = load i32, i32* %k, align 4
  %add31 = add nsw i32 %29, %30
  %idxprom32 = sext i32 %add31 to i64
  %31 = load double*, double** %matrix.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %31, i64 %idxprom32
  %32 = load double, double* %arrayidx33, align 8
  %33 = load i32, i32* %off, align 4
  %34 = load i32, i32* %k, align 4
  %add34 = add nsw i32 %33, %34
  %idxprom35 = sext i32 %add34 to i64
  %35 = load double*, double** %solution.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %35, i64 %idxprom35
  store double %32, double* %arrayidx36, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %36 = load i32, i32* %k, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.23
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.82, %if.else
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %depth.addr, align 4
  %cmp38 = icmp slt i32 %37, %38
  br i1 %cmp38, label %for.body.40, label %for.end.84

for.body.40:                                      ; preds = %for.cond.37
  %39 = load i32, i32* %off, align 4
  %40 = load i32, i32* %k, align 4
  %add41 = add nsw i32 %39, %40
  %idxprom42 = sext i32 %add41 to i64
  %41 = load double*, double** %solution.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %41, i64 %idxprom42
  %42 = load double, double* %arrayidx43, align 8
  store double %42, double* %tmp, align 8
  %43 = load i32, i32* %off, align 4
  %44 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %43, %44
  %idxprom45 = sext i32 %add44 to i64
  %45 = load double*, double** %matrix.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %45, i64 %idxprom45
  %46 = load double, double* %arrayidx46, align 8
  %47 = load i32, i32* %off, align 4
  %48 = load i32, i32* %depth.addr, align 4
  %sub47 = sub nsw i32 %47, %48
  %49 = load i32, i32* %k, align 4
  %add48 = add nsw i32 %sub47, %49
  %idxprom49 = sext i32 %add48 to i64
  %50 = load double*, double** %matrix.addr, align 8
  %arrayidx50 = getelementptr inbounds double, double* %50, i64 %idxprom49
  %51 = load double, double* %arrayidx50, align 8
  %52 = load i32, i32* %off, align 4
  %53 = load i32, i32* %depth.addr, align 4
  %add51 = add nsw i32 %52, %53
  %54 = load i32, i32* %k, align 4
  %add52 = add nsw i32 %add51, %54
  %idxprom53 = sext i32 %add52 to i64
  %55 = load double*, double** %matrix.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %55, i64 %idxprom53
  %56 = load double, double* %arrayidx54, align 8
  %add55 = fadd double %51, %56
  %57 = load i32, i32* %off, align 4
  %58 = load i32, i32* %rowstride, align 4
  %sub56 = sub nsw i32 %57, %58
  %59 = load i32, i32* %k, align 4
  %add57 = add nsw i32 %sub56, %59
  %idxprom58 = sext i32 %add57 to i64
  %60 = load double*, double** %matrix.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %60, i64 %idxprom58
  %61 = load double, double* %arrayidx59, align 8
  %add60 = fadd double %add55, %61
  %62 = load i32, i32* %off, align 4
  %63 = load i32, i32* %rowstride, align 4
  %add61 = add nsw i32 %62, %63
  %64 = load i32, i32* %k, align 4
  %add62 = add nsw i32 %add61, %64
  %idxprom63 = sext i32 %add62 to i64
  %65 = load double*, double** %matrix.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %65, i64 %idxprom63
  %66 = load double, double* %arrayidx64, align 8
  %add65 = fadd double %add60, %66
  %67 = load i32, i32* %off, align 4
  %68 = load i32, i32* %k, align 4
  %add66 = add nsw i32 %67, %68
  %idxprom67 = sext i32 %add66 to i64
  %69 = load double*, double** %matrix.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %69, i64 %idxprom67
  %70 = load double, double* %arrayidx68, align 8
  %mul69 = fmul double 4.000000e+00, %70
  %sub70 = fsub double %add65, %mul69
  %mul71 = fmul double 4.500000e-01, %sub70
  %add72 = fadd double %46, %mul71
  %71 = load i32, i32* %off, align 4
  %72 = load i32, i32* %k, align 4
  %add73 = add nsw i32 %71, %72
  %idxprom74 = sext i32 %add73 to i64
  %73 = load double*, double** %solution.addr, align 8
  %arrayidx75 = getelementptr inbounds double, double* %73, i64 %idxprom74
  store double %add72, double* %arrayidx75, align 8
  %74 = load i32, i32* %off, align 4
  %75 = load i32, i32* %k, align 4
  %add76 = add nsw i32 %74, %75
  %idxprom77 = sext i32 %add76 to i64
  %76 = load double*, double** %solution.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %76, i64 %idxprom77
  %77 = load double, double* %arrayidx78, align 8
  %78 = load double, double* %tmp, align 8
  %sub79 = fsub double %77, %78
  store double %sub79, double* %diff, align 8
  %79 = load double, double* %diff, align 8
  %80 = load double, double* %diff, align 8
  %mul80 = fmul double %79, %80
  %81 = load double, double* %err, align 8
  %add81 = fadd double %81, %mul80
  store double %add81, double* %err, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.40
  %82 = load i32, i32* %k, align 4
  %inc83 = add nsw i32 %82, 1
  store i32 %inc83, i32* %k, align 4
  br label %for.cond.37

for.end.84:                                       ; preds = %for.cond.37
  br label %if.end

if.end:                                           ; preds = %for.end.84, %for.end
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end
  %83 = load i32, i32* %j, align 4
  %add86 = add nsw i32 %83, 2
  store i32 %add86, i32* %j, align 4
  br label %for.cond.6

for.end.87:                                       ; preds = %for.cond.6
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %84 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %84, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.193, %for.end.90
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %height.addr, align 4
  %cmp92 = icmp slt i32 %85, %86
  br i1 %cmp92, label %for.body.94, label %for.end.195

for.body.94:                                      ; preds = %for.cond.91
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %rowstride, align 4
  %mul95 = mul nsw i32 %87, %88
  store i32 %mul95, i32* %off0, align 4
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %mask_offy.addr, align 4
  %add96 = add nsw i32 %89, %90
  %91 = load i32, i32* %mask_stride.addr, align 4
  %mul97 = mul nsw i32 %add96, %91
  store i32 %mul97, i32* %offm0, align 4
  %92 = load i32, i32* %i, align 4
  %rem98 = srem i32 %92, 2
  %tobool = icmp ne i32 %rem98, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.190, %for.body.94
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %width.addr, align 4
  %cmp100 = icmp slt i32 %93, %94
  br i1 %cmp100, label %for.body.102, label %for.end.192

for.body.102:                                     ; preds = %for.cond.99
  %95 = load i32, i32* %off0, align 4
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %depth.addr, align 4
  %mul103 = mul nsw i32 %96, %97
  %add104 = add nsw i32 %95, %mul103
  store i32 %add104, i32* %off, align 4
  %98 = load i32, i32* %offm0, align 4
  %99 = load i32, i32* %j, align 4
  %add105 = add nsw i32 %98, %99
  %100 = load i32, i32* %mask_offx.addr, align 4
  %add106 = add nsw i32 %add105, %100
  store i32 %add106, i32* %offm, align 4
  %101 = load i32, i32* %offm, align 4
  %idxprom107 = sext i32 %101 to i64
  %102 = load i8*, i8** %mask.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %102, i64 %idxprom107
  %103 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %103 to i32
  %cmp110 = icmp eq i32 0, %conv109
  br i1 %cmp110, label %if.then.126, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %for.body.102
  %104 = load i32, i32* %i, align 4
  %cmp113 = icmp eq i32 %104, 0
  br i1 %cmp113, label %if.then.126, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.112
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %height.addr, align 4
  %sub116 = sub nsw i32 %106, 1
  %cmp117 = icmp eq i32 %105, %sub116
  br i1 %cmp117, label %if.then.126, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.115
  %107 = load i32, i32* %j, align 4
  %cmp120 = icmp eq i32 %107, 0
  br i1 %cmp120, label %if.then.126, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.119
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %width.addr, align 4
  %sub123 = sub nsw i32 %109, 1
  %cmp124 = icmp eq i32 %108, %sub123
  br i1 %cmp124, label %if.then.126, label %if.else.140

if.then.126:                                      ; preds = %lor.lhs.false.122, %lor.lhs.false.119, %lor.lhs.false.115, %lor.lhs.false.112, %for.body.102
  store i32 0, i32* %k, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.137, %if.then.126
  %110 = load i32, i32* %k, align 4
  %111 = load i32, i32* %depth.addr, align 4
  %cmp128 = icmp slt i32 %110, %111
  br i1 %cmp128, label %for.body.130, label %for.end.139

for.body.130:                                     ; preds = %for.cond.127
  %112 = load i32, i32* %off, align 4
  %113 = load i32, i32* %k, align 4
  %add131 = add nsw i32 %112, %113
  %idxprom132 = sext i32 %add131 to i64
  %114 = load double*, double** %matrix.addr, align 8
  %arrayidx133 = getelementptr inbounds double, double* %114, i64 %idxprom132
  %115 = load double, double* %arrayidx133, align 8
  %116 = load i32, i32* %off, align 4
  %117 = load i32, i32* %k, align 4
  %add134 = add nsw i32 %116, %117
  %idxprom135 = sext i32 %add134 to i64
  %118 = load double*, double** %solution.addr, align 8
  %arrayidx136 = getelementptr inbounds double, double* %118, i64 %idxprom135
  store double %115, double* %arrayidx136, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.130
  %119 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %119, 1
  store i32 %inc138, i32* %k, align 4
  br label %for.cond.127

for.end.139:                                      ; preds = %for.cond.127
  br label %if.end.189

if.else.140:                                      ; preds = %lor.lhs.false.122
  store i32 0, i32* %k, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.186, %if.else.140
  %120 = load i32, i32* %k, align 4
  %121 = load i32, i32* %depth.addr, align 4
  %cmp142 = icmp slt i32 %120, %121
  br i1 %cmp142, label %for.body.144, label %for.end.188

for.body.144:                                     ; preds = %for.cond.141
  %122 = load i32, i32* %off, align 4
  %123 = load i32, i32* %k, align 4
  %add145 = add nsw i32 %122, %123
  %idxprom146 = sext i32 %add145 to i64
  %124 = load double*, double** %solution.addr, align 8
  %arrayidx147 = getelementptr inbounds double, double* %124, i64 %idxprom146
  %125 = load double, double* %arrayidx147, align 8
  store double %125, double* %tmp, align 8
  %126 = load i32, i32* %off, align 4
  %127 = load i32, i32* %k, align 4
  %add148 = add nsw i32 %126, %127
  %idxprom149 = sext i32 %add148 to i64
  %128 = load double*, double** %matrix.addr, align 8
  %arrayidx150 = getelementptr inbounds double, double* %128, i64 %idxprom149
  %129 = load double, double* %arrayidx150, align 8
  %130 = load i32, i32* %off, align 4
  %131 = load i32, i32* %depth.addr, align 4
  %sub151 = sub nsw i32 %130, %131
  %132 = load i32, i32* %k, align 4
  %add152 = add nsw i32 %sub151, %132
  %idxprom153 = sext i32 %add152 to i64
  %133 = load double*, double** %solution.addr, align 8
  %arrayidx154 = getelementptr inbounds double, double* %133, i64 %idxprom153
  %134 = load double, double* %arrayidx154, align 8
  %135 = load i32, i32* %off, align 4
  %136 = load i32, i32* %depth.addr, align 4
  %add155 = add nsw i32 %135, %136
  %137 = load i32, i32* %k, align 4
  %add156 = add nsw i32 %add155, %137
  %idxprom157 = sext i32 %add156 to i64
  %138 = load double*, double** %solution.addr, align 8
  %arrayidx158 = getelementptr inbounds double, double* %138, i64 %idxprom157
  %139 = load double, double* %arrayidx158, align 8
  %add159 = fadd double %134, %139
  %140 = load i32, i32* %off, align 4
  %141 = load i32, i32* %rowstride, align 4
  %sub160 = sub nsw i32 %140, %141
  %142 = load i32, i32* %k, align 4
  %add161 = add nsw i32 %sub160, %142
  %idxprom162 = sext i32 %add161 to i64
  %143 = load double*, double** %solution.addr, align 8
  %arrayidx163 = getelementptr inbounds double, double* %143, i64 %idxprom162
  %144 = load double, double* %arrayidx163, align 8
  %add164 = fadd double %add159, %144
  %145 = load i32, i32* %off, align 4
  %146 = load i32, i32* %rowstride, align 4
  %add165 = add nsw i32 %145, %146
  %147 = load i32, i32* %k, align 4
  %add166 = add nsw i32 %add165, %147
  %idxprom167 = sext i32 %add166 to i64
  %148 = load double*, double** %solution.addr, align 8
  %arrayidx168 = getelementptr inbounds double, double* %148, i64 %idxprom167
  %149 = load double, double* %arrayidx168, align 8
  %add169 = fadd double %add164, %149
  %150 = load i32, i32* %off, align 4
  %151 = load i32, i32* %k, align 4
  %add170 = add nsw i32 %150, %151
  %idxprom171 = sext i32 %add170 to i64
  %152 = load double*, double** %matrix.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %152, i64 %idxprom171
  %153 = load double, double* %arrayidx172, align 8
  %mul173 = fmul double 4.000000e+00, %153
  %sub174 = fsub double %add169, %mul173
  %mul175 = fmul double 4.500000e-01, %sub174
  %add176 = fadd double %129, %mul175
  %154 = load i32, i32* %off, align 4
  %155 = load i32, i32* %k, align 4
  %add177 = add nsw i32 %154, %155
  %idxprom178 = sext i32 %add177 to i64
  %156 = load double*, double** %solution.addr, align 8
  %arrayidx179 = getelementptr inbounds double, double* %156, i64 %idxprom178
  store double %add176, double* %arrayidx179, align 8
  %157 = load i32, i32* %off, align 4
  %158 = load i32, i32* %k, align 4
  %add180 = add nsw i32 %157, %158
  %idxprom181 = sext i32 %add180 to i64
  %159 = load double*, double** %solution.addr, align 8
  %arrayidx182 = getelementptr inbounds double, double* %159, i64 %idxprom181
  %160 = load double, double* %arrayidx182, align 8
  %161 = load double, double* %tmp, align 8
  %sub183 = fsub double %160, %161
  store double %sub183, double* %diff, align 8
  %162 = load double, double* %diff, align 8
  %163 = load double, double* %diff, align 8
  %mul184 = fmul double %162, %163
  %164 = load double, double* %err, align 8
  %add185 = fadd double %164, %mul184
  store double %add185, double* %err, align 8
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.144
  %165 = load i32, i32* %k, align 4
  %inc187 = add nsw i32 %165, 1
  store i32 %inc187, i32* %k, align 4
  br label %for.cond.141

for.end.188:                                      ; preds = %for.cond.141
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %for.end.139
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %166 = load i32, i32* %j, align 4
  %add191 = add nsw i32 %166, 2
  store i32 %add191, i32* %j, align 4
  br label %for.cond.99

for.end.192:                                      ; preds = %for.cond.99
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %167 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %167, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.91

for.end.195:                                      ; preds = %for.cond.91
  %168 = load double, double* %err, align 8
  ret double %168
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
