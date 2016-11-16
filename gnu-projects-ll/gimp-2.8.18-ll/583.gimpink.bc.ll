; ModuleID = './app/paint/gimpink.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpInkClass = type { %struct._GimpPaintCoreClass }
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
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpInk = type { %struct._GimpPaintCore, %struct._GimpBlob*, %struct._GimpBlob*, %struct._GimpBlob* }
%struct._GimpBlob = type { i32, i32, [1 x %struct._GimpBlobSpan] }
%struct._GimpBlobSpan = type { i32, i32 }
%struct._GimpInkOptions = type { %struct._GimpPaintOptions, double, double, double, double, double, i32, double, double }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }

@gimp_ink_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpInk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gimp-ink\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Ink\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gimp-tool-ink\00", align 1
@gimp_ink_parent_class = internal global i8* null, align 8
@GimpInk_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gimpink.c\00", align 1
@__func__.ink_pen_ellipse = private unnamed_addr constant [16 x i8] c"ink_pen_ellipse\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"paint-core\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ink_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_ink_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_ink_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_paint_core_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 216, void (i8*, i8*)* bitcast (void (i8*)* @gimp_ink_class_intern_init to void (i8*, i8*)*), i32 376, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpInk*)* @gimp_ink_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_ink_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_ink_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_ink_parent_class, align 8
  %1 = load i32, i32* @GimpInk_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpInk_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpInkClass*
  call void @gimp_ink_class_init(%struct._GimpInkClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_init(%struct._GimpInk* %ink) #3 {
entry:
  %ink.addr = alloca %struct._GimpInk*, align 8
  store %struct._GimpInk* %ink, %struct._GimpInk** %ink.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_ink_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_ink_get_type() #6
  %call1 = call i64 @gimp_ink_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_class_init(%struct._GimpInkClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpInkClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  store %struct._GimpInkClass* %klass, %struct._GimpInkClass** %klass.addr, align 8
  %0 = load %struct._GimpInkClass*, %struct._GimpInkClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpInkClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpInkClass*, %struct._GimpInkClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpInkClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_ink_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %7, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_ink_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %8 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %get_paint_area = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %8, i32 0, i32 6
  store %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)* @gimp_ink_get_paint_area, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)** %get_paint_area, align 8
  %9 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %push_undo = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %9, i32 0, i32 7
  store %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)* @gimp_ink_push_undo, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)** %push_undo, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %ink = alloca %struct._GimpInk*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ink_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInk*
  store %struct._GimpInk* %2, %struct._GimpInk** %ink, align 8
  %3 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %3, i32 0, i32 1
  %4 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob, align 8
  %tobool = icmp ne %struct._GimpBlob* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob2 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %5, i32 0, i32 1
  %6 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob2, align 8
  %7 = bitcast %struct._GimpBlob* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob3 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %8, i32 0, i32 1
  store %struct._GimpBlob* null, %struct._GimpBlob** %start_blob3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %9, i32 0, i32 3
  %10 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob, align 8
  %tobool4 = icmp ne %struct._GimpBlob* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob6 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %11, i32 0, i32 3
  %12 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob6, align 8
  %13 = bitcast %struct._GimpBlob* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob7 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %14, i32 0, i32 3
  store %struct._GimpBlob* null, %struct._GimpBlob** %last_blob7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_ink_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %ink = alloca %struct._GimpInk*, align 8
  %last_coords = alloca %struct._GimpCoords, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ink_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInk*
  store %struct._GimpInk* %2, %struct._GimpInk** %ink, align 8
  %3 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore* %3, %struct._GimpCoords* %last_coords)
  %4 = load i32, i32* %paint_state.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %cmp = fcmp oeq double %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %10 = load double, double* %y3, align 8
  %cmp4 = fcmp oeq double %9, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %11, i32 0, i32 1
  %12 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob, align 8
  %tobool = icmp ne %struct._GimpBlob* %12, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %13 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob6 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %13, i32 0, i32 1
  %14 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob6, align 8
  %15 = bitcast %struct._GimpBlob* %14 to i8*
  call void @g_free(i8* %15)
  %16 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob7 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %16, i32 0, i32 1
  store %struct._GimpBlob* null, %struct._GimpBlob** %start_blob7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %17 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %17, i32 0, i32 3
  %18 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob, align 8
  %tobool8 = icmp ne %struct._GimpBlob* %18, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %19 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob10 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %19, i32 0, i32 3
  %20 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob10, align 8
  %21 = bitcast %struct._GimpBlob* %20 to i8*
  call void @g_free(i8* %21)
  %22 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob11 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %22, i32 0, i32 3
  store %struct._GimpBlob* null, %struct._GimpBlob** %last_blob11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %23 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob13 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %23, i32 0, i32 3
  %24 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob13, align 8
  %tobool14 = icmp ne %struct._GimpBlob* %24, null
  br i1 %tobool14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.else
  %25 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob16 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %25, i32 0, i32 1
  %26 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob16, align 8
  %tobool17 = icmp ne %struct._GimpBlob* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.15
  %27 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob19 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %27, i32 0, i32 1
  %28 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob19, align 8
  %29 = bitcast %struct._GimpBlob* %28 to i8*
  call void @g_free(i8* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.15
  %30 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob21 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %30, i32 0, i32 3
  %31 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob21, align 8
  %call22 = call %struct._GimpBlob* @gimp_blob_duplicate(%struct._GimpBlob* %31)
  %32 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob23 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %32, i32 0, i32 1
  store %struct._GimpBlob* %call22, %struct._GimpBlob** %start_blob23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.20, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.12
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %37 = load i32, i32* %time.addr, align 4
  call void @gimp_ink_motion(%struct._GimpPaintCore* %33, %struct._GimpDrawable* %34, %struct._GimpPaintOptions* %35, %struct._GimpCoords* %36, i32 %37)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.27, %sw.bb.26, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_ink_get_paint_area(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %ink = alloca %struct._GimpInk*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ink_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInk*
  store %struct._GimpInk* %2, %struct._GimpInk** %ink, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %3)
  store i32 %call2, i32* %bytes, align 4
  %4 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %cur_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %4, i32 0, i32 2
  %5 = load %struct._GimpBlob*, %struct._GimpBlob** %cur_blob, align 8
  call void @gimp_blob_bounds(%struct._GimpBlob* %5, i32* %x, i32* %y, i32* %width, i32* %height)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %8)
  store i32 %call5, i32* %dwidth, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_get_height(%struct._GimpItem* %11)
  store i32 %call8, i32* %dheight, align 4
  %12 = load i32, i32* %x, align 4
  %div = sdiv i32 %12, 8
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %dwidth, align 4
  %cmp = icmp sgt i32 %sub, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %dwidth, align 4
  br label %cond.end.16

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %x, align 4
  %div9 = sdiv i32 %15, 8
  %sub10 = sub nsw i32 %div9, 1
  %cmp11 = icmp slt i32 %sub10, 0
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %16 = load i32, i32* %x, align 4
  %div14 = sdiv i32 %16, 8
  %sub15 = sub nsw i32 %div14, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.12
  %cond = phi i32 [ 0, %cond.true.12 ], [ %sub15, %cond.false.13 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi i32 [ %14, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond17, i32* %x1, align 4
  %17 = load i32, i32* %y, align 4
  %div18 = sdiv i32 %17, 8
  %sub19 = sub nsw i32 %div18, 1
  %18 = load i32, i32* %dheight, align 4
  %cmp20 = icmp sgt i32 %sub19, %18
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  %19 = load i32, i32* %dheight, align 4
  br label %cond.end.32

cond.false.22:                                    ; preds = %cond.end.16
  %20 = load i32, i32* %y, align 4
  %div23 = sdiv i32 %20, 8
  %sub24 = sub nsw i32 %div23, 1
  %cmp25 = icmp slt i32 %sub24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.22
  br label %cond.end.30

cond.false.27:                                    ; preds = %cond.false.22
  %21 = load i32, i32* %y, align 4
  %div28 = sdiv i32 %21, 8
  %sub29 = sub nsw i32 %div28, 1
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi i32 [ 0, %cond.true.26 ], [ %sub29, %cond.false.27 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.21
  %cond33 = phi i32 [ %19, %cond.true.21 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %y1, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %width, align 4
  %add = add nsw i32 %22, %23
  %div34 = sdiv i32 %add, 8
  %add35 = add nsw i32 %div34, 2
  %24 = load i32, i32* %dwidth, align 4
  %cmp36 = icmp sgt i32 %add35, %24
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.32
  %25 = load i32, i32* %dwidth, align 4
  br label %cond.end.50

cond.false.38:                                    ; preds = %cond.end.32
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %width, align 4
  %add39 = add nsw i32 %26, %27
  %div40 = sdiv i32 %add39, 8
  %add41 = add nsw i32 %div40, 2
  %cmp42 = icmp slt i32 %add41, 0
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.38
  br label %cond.end.48

cond.false.44:                                    ; preds = %cond.false.38
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %width, align 4
  %add45 = add nsw i32 %28, %29
  %div46 = sdiv i32 %add45, 8
  %add47 = add nsw i32 %div46, 2
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.44, %cond.true.43
  %cond49 = phi i32 [ 0, %cond.true.43 ], [ %add47, %cond.false.44 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.37
  %cond51 = phi i32 [ %25, %cond.true.37 ], [ %cond49, %cond.end.48 ]
  store i32 %cond51, i32* %x2, align 4
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %height, align 4
  %add52 = add nsw i32 %30, %31
  %div53 = sdiv i32 %add52, 8
  %add54 = add nsw i32 %div53, 2
  %32 = load i32, i32* %dheight, align 4
  %cmp55 = icmp sgt i32 %add54, %32
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.50
  %33 = load i32, i32* %dheight, align 4
  br label %cond.end.69

cond.false.57:                                    ; preds = %cond.end.50
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* %height, align 4
  %add58 = add nsw i32 %34, %35
  %div59 = sdiv i32 %add58, 8
  %add60 = add nsw i32 %div59, 2
  %cmp61 = icmp slt i32 %add60, 0
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.57
  br label %cond.end.67

cond.false.63:                                    ; preds = %cond.false.57
  %36 = load i32, i32* %y, align 4
  %37 = load i32, i32* %height, align 4
  %add64 = add nsw i32 %36, %37
  %div65 = sdiv i32 %add64, 8
  %add66 = add nsw i32 %div65, 2
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.63, %cond.true.62
  %cond68 = phi i32 [ 0, %cond.true.62 ], [ %add66, %cond.false.63 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.56
  %cond70 = phi i32 [ %33, %cond.true.56 ], [ %cond68, %cond.end.67 ]
  store i32 %cond70, i32* %y2, align 4
  %38 = load i32, i32* %x2, align 4
  %39 = load i32, i32* %x1, align 4
  %sub71 = sub nsw i32 %38, %39
  %tobool = icmp ne i32 %sub71, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.69
  %40 = load i32, i32* %y2, align 4
  %41 = load i32, i32* %y1, align 4
  %sub72 = sub nsw i32 %40, %41
  %tobool73 = icmp ne i32 %sub72, 0
  br i1 %tobool73, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %42, i32 0, i32 19
  %43 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %44 = load i32, i32* %bytes, align 4
  %45 = load i32, i32* %x1, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %x2, align 4
  %48 = load i32, i32* %x1, align 4
  %sub74 = sub nsw i32 %47, %48
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %y1, align 4
  %sub75 = sub nsw i32 %49, %50
  %call76 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %43, i32 %44, i32 %45, i32 %46, i32 %sub74, i32 %sub75)
  %51 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf77 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %51, i32 0, i32 19
  store %struct._TempBuf* %call76, %struct._TempBuf** %canvas_buf77, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end.69
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf78 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %52, i32 0, i32 19
  %53 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf78, align 8
  store %struct._TempBuf* %53, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %54 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %54
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUndo* @gimp_ink_push_undo(%struct._GimpPaintCore* %core, %struct._GimpImage* %image, i8* %undo_desc) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %undo_desc.addr = alloca i8*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i64 @gimp_ink_undo_get_type() #6
  %1 = load i8*, i8** %undo_desc.addr, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %call1 = call %struct._GimpUndo* (%struct._GimpImage*, i64, i32, i8*, i32, ...) @gimp_image_undo_push(%struct._GimpImage* %0, i64 %call, i32 76, i8* %1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._GimpPaintCore* %2, i8* null)
  ret %struct._GimpUndo* %call1
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare %struct._GimpBlob* @gimp_blob_duplicate(%struct._GimpBlob*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ink_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %ink = alloca %struct._GimpInk*, align 8
  %options = alloca %struct._GimpInkOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %blob_union = alloca %struct._GimpBlob*, align 8
  %blob_to_render = alloca %struct._GimpBlob*, align 8
  %area = alloca %struct._TempBuf*, align 8
  %col = alloca [4 x i8], align 1
  %blob_maskPR = alloca %struct._PixelRegion, align 8
  %blob = alloca %struct._GimpBlob*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ink_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpInk*
  store %struct._GimpInk* %2, %struct._GimpInk** %ink, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_ink_options_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpInkOptions*
  store %struct._GimpInkOptions* %5, %struct._GimpInkOptions** %options, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_context_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContext*
  store %struct._GimpContext* %8, %struct._GimpContext** %context, align 8
  store %struct._GimpBlob* null, %struct._GimpBlob** %blob_union, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %11)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %12, i32 0, i32 3
  %13 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob, align 8
  %tobool = icmp ne %struct._GimpBlob* %13, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 0
  %16 = load double, double* %x, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 2
  %20 = load double, double* %pressure, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 3
  %22 = load double, double* %xtilt, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 4
  %24 = load double, double* %ytilt, align 8
  %call9 = call %struct._GimpBlob* @ink_pen_ellipse(%struct._GimpInkOptions* %14, double %16, double %18, double %20, double %22, double %24, double 1.000000e+02)
  %25 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob10 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %25, i32 0, i32 3
  store %struct._GimpBlob* %call9, %struct._GimpBlob** %last_blob10, align 8
  %26 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %26, i32 0, i32 1
  %27 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob, align 8
  %tobool11 = icmp ne %struct._GimpBlob* %27, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %28 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob13 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %28, i32 0, i32 1
  %29 = load %struct._GimpBlob*, %struct._GimpBlob** %start_blob13, align 8
  %30 = bitcast %struct._GimpBlob* %29 to i8*
  call void @g_free(i8* %30)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %31 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob14 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %31, i32 0, i32 3
  %32 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob14, align 8
  %call15 = call %struct._GimpBlob* @gimp_blob_duplicate(%struct._GimpBlob* %32)
  %33 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %start_blob16 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %33, i32 0, i32 1
  store %struct._GimpBlob* %call15, %struct._GimpBlob** %start_blob16, align 8
  %34 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob17 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %34, i32 0, i32 3
  %35 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob17, align 8
  store %struct._GimpBlob* %35, %struct._GimpBlob** %blob_to_render, align 8
  br label %if.end.28

if.else:                                          ; preds = %entry
  %36 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 0
  %38 = load double, double* %x18, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 1
  %40 = load double, double* %y19, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 2
  %42 = load double, double* %pressure20, align 8
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 3
  %44 = load double, double* %xtilt21, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 4
  %46 = load double, double* %ytilt22, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 6
  %48 = load double, double* %velocity, align 8
  %mul = fmul double %48, 1.000000e+02
  %call23 = call %struct._GimpBlob* @ink_pen_ellipse(%struct._GimpInkOptions* %36, double %38, double %40, double %42, double %44, double %46, double %mul)
  store %struct._GimpBlob* %call23, %struct._GimpBlob** %blob, align 8
  %49 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob24 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %49, i32 0, i32 3
  %50 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob24, align 8
  %51 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %call25 = call %struct._GimpBlob* @gimp_blob_convex_union(%struct._GimpBlob* %50, %struct._GimpBlob* %51)
  store %struct._GimpBlob* %call25, %struct._GimpBlob** %blob_union, align 8
  %52 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob26 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %52, i32 0, i32 3
  %53 = load %struct._GimpBlob*, %struct._GimpBlob** %last_blob26, align 8
  %54 = bitcast %struct._GimpBlob* %53 to i8*
  call void @g_free(i8* %54)
  %55 = load %struct._GimpBlob*, %struct._GimpBlob** %blob, align 8
  %56 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %last_blob27 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %56, i32 0, i32 3
  store %struct._GimpBlob* %55, %struct._GimpBlob** %last_blob27, align 8
  %57 = load %struct._GimpBlob*, %struct._GimpBlob** %blob_union, align 8
  store %struct._GimpBlob* %57, %struct._GimpBlob** %blob_to_render, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end
  %58 = load %struct._GimpBlob*, %struct._GimpBlob** %blob_to_render, align 8
  %59 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %cur_blob = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %59, i32 0, i32 2
  store %struct._GimpBlob* %58, %struct._GimpBlob** %cur_blob, align 8
  %60 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %62 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call29 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %60, %struct._GimpDrawable* %61, %struct._GimpPaintOptions* %62, %struct._GimpCoords* %63)
  store %struct._TempBuf* %call29, %struct._TempBuf** %area, align 8
  %64 = load %struct._GimpInk*, %struct._GimpInk** %ink, align 8
  %cur_blob30 = getelementptr inbounds %struct._GimpInk, %struct._GimpInk* %64, i32 0, i32 2
  store %struct._GimpBlob* null, %struct._GimpBlob** %cur_blob30, align 8
  %65 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool31 = icmp ne %struct._TempBuf* %65, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  br label %if.end.69

if.end.33:                                        ; preds = %if.end.28
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %67 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call34 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %68)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_foreground(%struct._GimpImage* %66, %struct._GimpContext* %67, i32 %call34, i8* %arraydecay)
  %69 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %69, i32 0, i32 19
  %70 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %70, i32 0, i32 0
  %71 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %71, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %72 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf35 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %72, i32 0, i32 19
  %73 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf35, align 8
  %call36 = call i8* @temp_buf_get_data(%struct._TempBuf* %73)
  %arraydecay37 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %74 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %74, i32 0, i32 1
  %75 = load i32, i32* %width, align 4
  %76 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %76, i32 0, i32 2
  %77 = load i32, i32* %height, align 4
  %mul38 = mul nsw i32 %75, %77
  %78 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes39 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %78, i32 0, i32 0
  %79 = load i32, i32* %bytes39, align 4
  call void @color_pixels(i8* %call36, i8* %arraydecay37, i32 %mul38, i32 %79)
  %80 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %81 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf40 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %81, i32 0, i32 19
  %82 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf40, align 8
  %x41 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %82, i32 0, i32 3
  %83 = load i32, i32* %x41, align 4
  %84 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf42 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %84, i32 0, i32 19
  %85 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf42, align 8
  %y43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %85, i32 0, i32 4
  %86 = load i32, i32* %y43, align 4
  %87 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf44 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %87, i32 0, i32 19
  %88 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf44, align 8
  %width45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %88, i32 0, i32 1
  %89 = load i32, i32* %width45, align 4
  %90 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf46 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %90, i32 0, i32 19
  %91 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf46, align 8
  %height47 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %91, i32 0, i32 2
  %92 = load i32, i32* %height47, align 4
  call void @gimp_paint_core_validate_canvas_tiles(%struct._GimpPaintCore* %80, i32 %83, i32 %86, i32 %89, i32 %92)
  %93 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %93, i32 0, i32 16
  %94 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %95 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf48 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %95, i32 0, i32 19
  %96 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf48, align 8
  %x49 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %96, i32 0, i32 3
  %97 = load i32, i32* %x49, align 4
  %98 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf50 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %98, i32 0, i32 19
  %99 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf50, align 8
  %y51 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %99, i32 0, i32 4
  %100 = load i32, i32* %y51, align 4
  %101 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf52 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %101, i32 0, i32 19
  %102 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf52, align 8
  %width53 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %102, i32 0, i32 1
  %103 = load i32, i32* %width53, align 4
  %104 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf54 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %104, i32 0, i32 19
  %105 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf54, align 8
  %height55 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %105, i32 0, i32 2
  %106 = load i32, i32* %height55, align 4
  call void @pixel_region_init(%struct._PixelRegion* %blob_maskPR, %struct._TileManager* %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 1)
  %107 = load %struct._GimpBlob*, %struct._GimpBlob** %blob_to_render, align 8
  call void @render_blob(%struct._GimpBlob* %107, %struct._PixelRegion* %blob_maskPR)
  %108 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_tiles56 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %108, i32 0, i32 16
  %109 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles56, align 8
  %110 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf57 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %110, i32 0, i32 19
  %111 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf57, align 8
  %x58 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %111, i32 0, i32 3
  %112 = load i32, i32* %x58, align 4
  %113 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %113, i32 0, i32 19
  %114 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf59, align 8
  %y60 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %114, i32 0, i32 4
  %115 = load i32, i32* %y60, align 4
  %116 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf61 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %116, i32 0, i32 19
  %117 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf61, align 8
  %width62 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %117, i32 0, i32 1
  %118 = load i32, i32* %width62, align 4
  %119 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf63 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %119, i32 0, i32 19
  %120 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf63, align 8
  %height64 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %120, i32 0, i32 2
  %121 = load i32, i32* %height64, align 4
  call void @pixel_region_init(%struct._PixelRegion* %blob_maskPR, %struct._TileManager* %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 0)
  %122 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %123 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %124 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call65 = call double @gimp_context_get_opacity(%struct._GimpContext* %124)
  %125 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call66 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %125)
  call void @gimp_paint_core_paste(%struct._GimpPaintCore* %122, %struct._PixelRegion* %blob_maskPR, %struct._GimpDrawable* %123, double 1.000000e+00, double %call65, i32 %call66, i32 0)
  %126 = load %struct._GimpBlob*, %struct._GimpBlob** %blob_union, align 8
  %tobool67 = icmp ne %struct._GimpBlob* %126, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.33
  %127 = load %struct._GimpBlob*, %struct._GimpBlob** %blob_union, align 8
  %128 = bitcast %struct._GimpBlob* %127 to i8*
  call void @g_free(i8* %128)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.32, %if.then.68, %if.end.33
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpBlob* @ink_pen_ellipse(%struct._GimpInkOptions* %options, double %x_center, double %y_center, double %pressure, double %xtilt, double %ytilt, double %velocity) #3 {
entry:
  %retval = alloca %struct._GimpBlob*, align 8
  %options.addr = alloca %struct._GimpInkOptions*, align 8
  %x_center.addr = alloca double, align 8
  %y_center.addr = alloca double, align 8
  %pressure.addr = alloca double, align 8
  %xtilt.addr = alloca double, align 8
  %ytilt.addr = alloca double, align 8
  %velocity.addr = alloca double, align 8
  %blob_function = alloca %struct._GimpBlob* (double, double, double, double, double, double)*, align 8
  %size = alloca double, align 8
  %tsin = alloca double, align 8
  %tcos = alloca double, align 8
  %aspect = alloca double, align 8
  %radmin = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %tscale = alloca double, align 8
  %tscale_c = alloca double, align 8
  %tscale_s = alloca double, align 8
  store %struct._GimpInkOptions* %options, %struct._GimpInkOptions** %options.addr, align 8
  store double %x_center, double* %x_center.addr, align 8
  store double %y_center, double* %y_center.addr, align 8
  store double %pressure, double* %pressure.addr, align 8
  store double %xtilt, double* %xtilt.addr, align 8
  store double %ytilt, double* %ytilt.addr, align 8
  store double %velocity, double* %velocity.addr, align 8
  %0 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size1 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %0, i32 0, i32 1
  %1 = load double, double* %size1, align 8
  %2 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size_sensitivity = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %2, i32 0, i32 3
  %3 = load double, double* %size_sensitivity, align 8
  %4 = load double, double* %pressure.addr, align 8
  %mul = fmul double 2.000000e+00, %4
  %sub = fsub double %mul, 1.000000e+00
  %mul2 = fmul double %3, %sub
  %add = fadd double 1.000000e+00, %mul2
  %mul3 = fmul double %1, %add
  store double %mul3, double* %size, align 8
  %5 = load double, double* %velocity.addr, align 8
  %cmp = fcmp olt double %5, 3.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 3.000000e+00, double* %velocity.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %vel_sensitivity = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %6, i32 0, i32 4
  %7 = load double, double* %vel_sensitivity, align 8
  %8 = load double, double* %size, align 8
  %mul4 = fmul double 4.500000e+00, %8
  %9 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %vel_sensitivity5 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %9, i32 0, i32 4
  %10 = load double, double* %vel_sensitivity5, align 8
  %11 = load double, double* %velocity.addr, align 8
  %mul6 = fmul double 2.000000e+00, %11
  %mul7 = fmul double %10, %mul6
  %add8 = fadd double 1.000000e+00, %mul7
  %div = fdiv double %mul4, %add8
  %mul9 = fmul double %7, %div
  %12 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %vel_sensitivity10 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %12, i32 0, i32 4
  %13 = load double, double* %vel_sensitivity10, align 8
  %sub11 = fsub double 1.000000e+00, %13
  %14 = load double, double* %size, align 8
  %mul12 = fmul double %sub11, %14
  %add13 = fadd double %mul9, %mul12
  store double %add13, double* %size, align 8
  %15 = load double, double* %size, align 8
  %16 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size14 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %16, i32 0, i32 1
  %17 = load double, double* %size14, align 8
  %18 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size_sensitivity15 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %18, i32 0, i32 3
  %19 = load double, double* %size_sensitivity15, align 8
  %add16 = fadd double 1.000000e+00, %19
  %mul17 = fmul double %17, %add16
  %cmp18 = fcmp ogt double %15, %mul17
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end
  %20 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size20 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %20, i32 0, i32 1
  %21 = load double, double* %size20, align 8
  %22 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %size_sensitivity21 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %22, i32 0, i32 3
  %23 = load double, double* %size_sensitivity21, align 8
  %add22 = fadd double 1.000000e+00, %23
  %mul23 = fmul double %21, %add22
  store double %mul23, double* %size, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %if.end
  %24 = load double, double* %size, align 8
  %mul25 = fmul double %24, 8.000000e+00
  %cmp26 = fcmp olt double %mul25, 1.000000e+00
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store double 1.250000e-01, double* %size, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %25 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %tilt_sensitivity = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %25, i32 0, i32 5
  %26 = load double, double* %tilt_sensitivity, align 8
  %mul29 = fmul double %26, 1.000000e+01
  store double %mul29, double* %tscale, align 8
  %27 = load double, double* %tscale, align 8
  %28 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %tilt_angle = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %28, i32 0, i32 2
  %29 = load double, double* %tilt_angle, align 8
  %mul30 = fmul double %29, 0x401921FB54442D18
  %div31 = fdiv double %mul30, 3.600000e+02
  %call = call double @cos(double %div31) #5
  %mul32 = fmul double %27, %call
  store double %mul32, double* %tscale_c, align 8
  %30 = load double, double* %tscale, align 8
  %31 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %tilt_angle33 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %31, i32 0, i32 2
  %32 = load double, double* %tilt_angle33, align 8
  %mul34 = fmul double %32, 0x401921FB54442D18
  %div35 = fdiv double %mul34, 3.600000e+02
  %call36 = call double @sin(double %div35) #5
  %mul37 = fmul double %30, %call36
  store double %mul37, double* %tscale_s, align 8
  %33 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_aspect = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %33, i32 0, i32 7
  %34 = load double, double* %blob_aspect, align 8
  %35 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_angle = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %35, i32 0, i32 8
  %36 = load double, double* %blob_angle, align 8
  %call38 = call double @cos(double %36) #5
  %mul39 = fmul double %34, %call38
  %37 = load double, double* %xtilt.addr, align 8
  %38 = load double, double* %tscale_c, align 8
  %mul40 = fmul double %37, %38
  %add41 = fadd double %mul39, %mul40
  %39 = load double, double* %ytilt.addr, align 8
  %40 = load double, double* %tscale_s, align 8
  %mul42 = fmul double %39, %40
  %sub43 = fsub double %add41, %mul42
  store double %sub43, double* %x, align 8
  %41 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_aspect44 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %41, i32 0, i32 7
  %42 = load double, double* %blob_aspect44, align 8
  %43 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_angle45 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %43, i32 0, i32 8
  %44 = load double, double* %blob_angle45, align 8
  %call46 = call double @sin(double %44) #5
  %mul47 = fmul double %42, %call46
  %45 = load double, double* %ytilt.addr, align 8
  %46 = load double, double* %tscale_c, align 8
  %mul48 = fmul double %45, %46
  %add49 = fadd double %mul47, %mul48
  %47 = load double, double* %xtilt.addr, align 8
  %48 = load double, double* %tscale_s, align 8
  %mul50 = fmul double %47, %48
  %add51 = fadd double %add49, %mul50
  store double %add51, double* %y, align 8
  %49 = load double, double* %x, align 8
  %50 = load double, double* %x, align 8
  %mul52 = fmul double %49, %50
  %51 = load double, double* %y, align 8
  %52 = load double, double* %y, align 8
  %mul53 = fmul double %51, %52
  %add54 = fadd double %mul52, %mul53
  %call55 = call double @sqrt(double %add54) #5
  store double %call55, double* %aspect, align 8
  %53 = load double, double* %aspect, align 8
  %cmp56 = fcmp une double %53, 0.000000e+00
  br i1 %cmp56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.28
  %54 = load double, double* %x, align 8
  %55 = load double, double* %aspect, align 8
  %div58 = fdiv double %54, %55
  store double %div58, double* %tcos, align 8
  %56 = load double, double* %y, align 8
  %57 = load double, double* %aspect, align 8
  %div59 = fdiv double %56, %57
  store double %div59, double* %tsin, align 8
  br label %if.end.64

if.else:                                          ; preds = %if.end.28
  %58 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_angle60 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %58, i32 0, i32 8
  %59 = load double, double* %blob_angle60, align 8
  %call61 = call double @sin(double %59) #5
  store double %call61, double* %tsin, align 8
  %60 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_angle62 = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %60, i32 0, i32 8
  %61 = load double, double* %blob_angle62, align 8
  %call63 = call double @cos(double %61) #5
  store double %call63, double* %tcos, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.57
  %62 = load double, double* %aspect, align 8
  %cmp65 = fcmp ogt double %62, 1.000000e+01
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.64
  br label %cond.end.69

cond.false:                                       ; preds = %if.end.64
  %63 = load double, double* %aspect, align 8
  %cmp66 = fcmp olt double %63, 1.000000e+00
  br i1 %cmp66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false
  br label %cond.end

cond.false.68:                                    ; preds = %cond.false
  %64 = load double, double* %aspect, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.67
  %cond = phi double [ 1.000000e+00, %cond.true.67 ], [ %64, %cond.false.68 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end, %cond.true
  %cond70 = phi double [ 1.000000e+01, %cond.true ], [ %cond, %cond.end ]
  store double %cond70, double* %aspect, align 8
  %65 = load double, double* %size, align 8
  %mul71 = fmul double 8.000000e+00, %65
  %66 = load double, double* %aspect, align 8
  %div72 = fdiv double %mul71, %66
  %cmp73 = fcmp ogt double 1.000000e+00, %div72
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.69
  br label %cond.end.78

cond.false.75:                                    ; preds = %cond.end.69
  %67 = load double, double* %size, align 8
  %mul76 = fmul double 8.000000e+00, %67
  %68 = load double, double* %aspect, align 8
  %div77 = fdiv double %mul76, %68
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.75, %cond.true.74
  %cond79 = phi double [ 1.000000e+00, %cond.true.74 ], [ %div77, %cond.false.75 ]
  store double %cond79, double* %radmin, align 8
  %69 = load %struct._GimpInkOptions*, %struct._GimpInkOptions** %options.addr, align 8
  %blob_type = getelementptr inbounds %struct._GimpInkOptions, %struct._GimpInkOptions* %69, i32 0, i32 6
  %70 = load i32, i32* %blob_type, align 4
  switch i32 %70, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.80
    i32 2, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %cond.end.78
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_ellipse, %struct._GimpBlob* (double, double, double, double, double, double)** %blob_function, align 8
  br label %sw.epilog

sw.bb.80:                                         ; preds = %cond.end.78
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_square, %struct._GimpBlob* (double, double, double, double, double, double)** %blob_function, align 8
  br label %sw.epilog

sw.bb.81:                                         ; preds = %cond.end.78
  store %struct._GimpBlob* (double, double, double, double, double, double)* @gimp_blob_diamond, %struct._GimpBlob* (double, double, double, double, double, double)** %blob_function, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.78
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 455, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ink_pen_ellipse, i32 0, i32 0))
  store %struct._GimpBlob* null, %struct._GimpBlob** %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.81, %sw.bb.80, %sw.bb
  %71 = load %struct._GimpBlob* (double, double, double, double, double, double)*, %struct._GimpBlob* (double, double, double, double, double, double)** %blob_function, align 8
  %72 = load double, double* %x_center.addr, align 8
  %mul82 = fmul double %72, 8.000000e+00
  %73 = load double, double* %y_center.addr, align 8
  %mul83 = fmul double %73, 8.000000e+00
  %74 = load double, double* %radmin, align 8
  %75 = load double, double* %aspect, align 8
  %mul84 = fmul double %74, %75
  %76 = load double, double* %tcos, align 8
  %mul85 = fmul double %mul84, %76
  %77 = load double, double* %radmin, align 8
  %78 = load double, double* %aspect, align 8
  %mul86 = fmul double %77, %78
  %79 = load double, double* %tsin, align 8
  %mul87 = fmul double %mul86, %79
  %80 = load double, double* %radmin, align 8
  %sub88 = fsub double -0.000000e+00, %80
  %81 = load double, double* %tsin, align 8
  %mul89 = fmul double %sub88, %81
  %82 = load double, double* %radmin, align 8
  %83 = load double, double* %tcos, align 8
  %mul90 = fmul double %82, %83
  %call91 = call %struct._GimpBlob* %71(double %mul82, double %mul83, double %mul85, double %mul87, double %mul89, double %mul90)
  store %struct._GimpBlob* %call91, %struct._GimpBlob** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  %84 = load %struct._GimpBlob*, %struct._GimpBlob** %retval
  ret %struct._GimpBlob* %84
}

declare %struct._GimpBlob* @gimp_blob_convex_union(%struct._GimpBlob*, %struct._GimpBlob*) #1

declare %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare void @gimp_image_get_foreground(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare void @color_pixels(i8*, i8*, i32, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @gimp_paint_core_validate_canvas_tiles(%struct._GimpPaintCore*, i32, i32, i32, i32) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @render_blob(%struct._GimpBlob* %blob, %struct._PixelRegion* %dest) #3 {
entry:
  %blob.addr = alloca %struct._GimpBlob*, align 8
  %dest.addr = alloca %struct._PixelRegion*, align 8
  %pr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %h = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpBlob* %blob, %struct._GimpBlob** %blob.addr, align 8
  store %struct._PixelRegion* %dest, %struct._PixelRegion** %dest.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %0)
  %1 = bitcast %struct._PixelRegionIterator* %call to i8*
  store i8* %1, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %2 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %d, align 8
  %5 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %5, i32 0, i32 9
  %6 = load i32, i32* %h1, align 4
  store i32 %6, i32* %h, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %h, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %10 = load i8*, i8** %d, align 8
  %11 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %x = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %11, i32 0, i32 6
  %12 = load i32, i32* %x, align 4
  %13 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %y5 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %13, i32 0, i32 7
  %14 = load i32, i32* %y5, align 4
  %15 = load i32, i32* %y, align 4
  %add = add nsw i32 %14, %15
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 8
  %17 = load i32, i32* %w, align 4
  call void @render_blob_line(%struct._GimpBlob* %9, i8* %10, i32 %12, i32 %add, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %18 = load i32, i32* %y, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %y, align 4
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %dest.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 5
  %20 = load i32, i32* %rowstride, align 4
  %21 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %22 = load i8*, i8** %pr, align 8
  %23 = bitcast i8* %22 to %struct._PixelRegionIterator*
  %call7 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %23)
  %24 = bitcast %struct._PixelRegionIterator* %call7 to i8*
  store i8* %24, i8** %pr, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

declare void @gimp_paint_core_paste(%struct._GimpPaintCore*, %struct._PixelRegion*, %struct._GimpDrawable*, double, double, i32, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare %struct._GimpBlob* @gimp_blob_ellipse(double, double, double, double, double, double) #1

declare %struct._GimpBlob* @gimp_blob_square(double, double, double, double, double, double) #1

declare %struct._GimpBlob* @gimp_blob_diamond(double, double, double, double, double, double) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @render_blob_line(%struct._GimpBlob* %blob, i8* %dest, i32 %x, i32 %y, i32 %width) #3 {
entry:
  %blob.addr = alloca %struct._GimpBlob*, align 8
  %dest.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %buf = alloca [32 x i32], align 16
  %data = alloca i32*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %current = alloca i32, align 4
  %last_x = alloca i32, align 4
  %cur_x = alloca i32, align 4
  %pixel = alloca i32, align 4
  %tmp_x = alloca i32, align 4
  store %struct._GimpBlob* %blob, %struct._GimpBlob** %blob.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %buf, i32 0, i32 0
  store i32* %arraydecay, i32** %data, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %current, align 4
  %0 = load i32, i32* %y.addr, align 4
  %mul = mul nsw i32 %0, 8
  %1 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %1, i32 0, i32 0
  %2 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %mul, %2
  store i32 %sub, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %5 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %height = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %5, i32 0, i32 1
  %6 = load i32, i32* %height, align 4
  %cmp2 = icmp sge i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %data4 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data4, i32 0, i64 %idxprom
  %left = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %left, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %data6 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %12, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data6, i32 0, i64 %idxprom5
  %right = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx7, i32 0, i32 1
  %13 = load i32, i32* %right, align 4
  %cmp8 = icmp sle i32 %10, %13
  br i1 %cmp8, label %if.then.9, label %if.end.33

if.then.9:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %data11 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %15, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data11, i32 0, i64 %idxprom10
  %left13 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx12, i32 0, i32 0
  %16 = load i32, i32* %left13, align 4
  %17 = load i32, i32* %n, align 4
  %mul14 = mul nsw i32 2, %17
  %idxprom15 = sext i32 %mul14 to i64
  %18 = load i32*, i32** %data, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  store i32 %16, i32* %arrayidx16, align 4
  %19 = load i32, i32* %n, align 4
  %mul17 = mul nsw i32 2, %19
  %add = add nsw i32 %mul17, 1
  %idxprom18 = sext i32 %add to i64
  %20 = load i32*, i32** %data, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %20, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct._GimpBlob*, %struct._GimpBlob** %blob.addr, align 8
  %data21 = getelementptr inbounds %struct._GimpBlob, %struct._GimpBlob* %22, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %struct._GimpBlobSpan], [1 x %struct._GimpBlobSpan]* %data21, i32 0, i64 %idxprom20
  %right23 = getelementptr inbounds %struct._GimpBlobSpan, %struct._GimpBlobSpan* %arrayidx22, i32 0, i32 1
  %23 = load i32, i32* %right23, align 4
  %24 = load i32, i32* %n, align 4
  %mul24 = mul nsw i32 2, %24
  %add25 = add nsw i32 16, %mul24
  %idxprom26 = sext i32 %add25 to i64
  %25 = load i32*, i32** %data, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %25, i64 %idxprom26
  store i32 %23, i32* %arrayidx27, align 4
  %26 = load i32, i32* %n, align 4
  %mul28 = mul nsw i32 2, %26
  %add29 = add nsw i32 16, %mul28
  %add30 = add nsw i32 %add29, 1
  %idxprom31 = sext i32 %add30 to i64
  %27 = load i32*, i32** %data, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %27, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4
  %28 = load i32, i32* %n, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %29 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %30 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %31 = load i32, i32* %n, align 4
  %cmp36 = icmp slt i32 %31, 8
  br i1 %cmp36, label %if.then.37, label %if.end.52

if.then.37:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.49, %if.then.37
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n, align 4
  %mul39 = mul nsw i32 2, %33
  %cmp40 = icmp slt i32 %32, %mul39
  br i1 %cmp40, label %for.body.41, label %for.end.51

for.body.41:                                      ; preds = %for.cond.38
  %34 = load i32, i32* %i, align 4
  %add42 = add nsw i32 16, %34
  %idxprom43 = sext i32 %add42 to i64
  %35 = load i32*, i32** %data, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %35, i64 %idxprom43
  %36 = load i32, i32* %arrayidx44, align 4
  %37 = load i32, i32* %n, align 4
  %mul45 = mul nsw i32 2, %37
  %38 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %mul45, %38
  %idxprom47 = sext i32 %add46 to i64
  %39 = load i32*, i32** %data, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %39, i64 %idxprom47
  store i32 %36, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.41
  %40 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %40, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.38

for.end.51:                                       ; preds = %for.cond.38
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.end
  %41 = load i32, i32* %n, align 4
  %mul53 = mul nsw i32 %41, 2
  store i32 %mul53, i32* %n, align 4
  %42 = load i32*, i32** %data, align 8
  %43 = load i32, i32* %n, align 4
  call void @insert_sort(i32* %42, i32 %43)
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %if.end.52
  %44 = load i32, i32* %n, align 4
  %cmp54 = icmp sgt i32 %44, 0
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %45 = load i32*, i32** %data, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 0
  %46 = load i32, i32* %arrayidx55, align 4
  %47 = load i32, i32* %x.addr, align 4
  %mul56 = mul nsw i32 8, %47
  %cmp57 = icmp slt i32 %46, %mul56
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp57, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load i32*, i32** %data, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %50, 0
  br i1 %cmp59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %while.body
  %51 = load i32, i32* %current, align 4
  %inc61 = add nsw i32 %51, 1
  store i32 %inc61, i32* %current, align 4
  br label %if.end.62

if.else:                                          ; preds = %while.body
  %52 = load i32, i32* %current, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %current, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.60
  %53 = load i32*, i32** %data, align 8
  %add.ptr = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %add.ptr, i32** %data, align 8
  %54 = load i32, i32* %n, align 4
  %dec63 = add nsw i32 %54, -1
  store i32 %dec63, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.64

while.cond.64:                                    ; preds = %while.body.75, %while.end
  %55 = load i32, i32* %n, align 4
  %cmp65 = icmp sgt i32 %55, 0
  br i1 %cmp65, label %land.rhs.66, label %land.end.74

land.rhs.66:                                      ; preds = %while.cond.64
  %56 = load i32, i32* %n, align 4
  %sub67 = sub nsw i32 %56, 1
  %mul68 = mul nsw i32 2, %sub67
  %idxprom69 = sext i32 %mul68 to i64
  %57 = load i32*, i32** %data, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %57, i64 %idxprom69
  %58 = load i32, i32* %arrayidx70, align 4
  %59 = load i32, i32* %x.addr, align 4
  %60 = load i32, i32* %width.addr, align 4
  %add71 = add nsw i32 %59, %60
  %mul72 = mul nsw i32 8, %add71
  %cmp73 = icmp sge i32 %58, %mul72
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.66, %while.cond.64
  %61 = phi i1 [ false, %while.cond.64 ], [ %cmp73, %land.rhs.66 ]
  br i1 %61, label %while.body.75, label %while.end.77

while.body.75:                                    ; preds = %land.end.74
  %62 = load i32, i32* %n, align 4
  %dec76 = add nsw i32 %62, -1
  store i32 %dec76, i32* %n, align 4
  br label %while.cond.64

while.end.77:                                     ; preds = %land.end.74
  store i32 0, i32* %last_x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %cond.end, %while.end.77
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %n, align 4
  %cmp79 = icmp slt i32 %63, %64
  br i1 %cmp79, label %for.body.80, label %for.end.150

for.body.80:                                      ; preds = %for.cond.78
  %65 = load i32, i32* %i, align 4
  %mul81 = mul nsw i32 2, %65
  %idxprom82 = sext i32 %mul81 to i64
  %66 = load i32*, i32** %data, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %66, i64 %idxprom82
  %67 = load i32, i32* %arrayidx83, align 4
  %div = sdiv i32 %67, 8
  %68 = load i32, i32* %x.addr, align 4
  %sub84 = sub nsw i32 %div, %68
  store i32 %sub84, i32* %cur_x, align 4
  %69 = load i32, i32* %current, align 4
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %for.body.80
  %70 = load i32, i32* %cur_x, align 4
  %71 = load i32, i32* %last_x, align 4
  %cmp86 = icmp ne i32 %70, %71
  br i1 %cmp86, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.85
  %72 = load i8*, i8** %dest.addr, align 8
  %73 = load i32, i32* %last_x, align 4
  %idx.ext = sext i32 %73 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %72, i64 %idx.ext
  %74 = load i32, i32* %current, align 4
  %mul89 = mul nsw i32 255, %74
  %div90 = sdiv i32 %mul89, 8
  %conv = trunc i32 %div90 to i8
  %75 = load i32, i32* %cur_x, align 4
  %76 = load i32, i32* %last_x, align 4
  %sub91 = sub nsw i32 %75, %76
  call void @fill_run(i8* %add.ptr88, i8 zeroext %conv, i32 %sub91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.85, %for.body.80
  %77 = load i32, i32* %current, align 4
  %mul93 = mul nsw i32 %77, 8
  store i32 %mul93, i32* %pixel, align 4
  br label %while.cond.94

while.cond.94:                                    ; preds = %if.end.131, %if.end.92
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %n, align 4
  %cmp95 = icmp slt i32 %78, %79
  br i1 %cmp95, label %while.body.97, label %while.end.133

while.body.97:                                    ; preds = %while.cond.94
  %80 = load i32, i32* %i, align 4
  %mul98 = mul nsw i32 2, %80
  %idxprom99 = sext i32 %mul98 to i64
  %81 = load i32*, i32** %data, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %81, i64 %idxprom99
  %82 = load i32, i32* %arrayidx100, align 4
  %div101 = sdiv i32 %82, 8
  store i32 %div101, i32* %tmp_x, align 4
  %83 = load i32, i32* %tmp_x, align 4
  %84 = load i32, i32* %x.addr, align 4
  %sub102 = sub nsw i32 %83, %84
  %85 = load i32, i32* %cur_x, align 4
  %cmp103 = icmp ne i32 %sub102, %85
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %while.body.97
  br label %while.end.133

if.end.106:                                       ; preds = %while.body.97
  %86 = load i32, i32* %i, align 4
  %mul107 = mul nsw i32 2, %86
  %add108 = add nsw i32 %mul107, 1
  %idxprom109 = sext i32 %add108 to i64
  %87 = load i32*, i32** %data, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %87, i64 %idxprom109
  %88 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp eq i32 %88, 0
  br i1 %cmp111, label %if.then.113, label %if.else.122

if.then.113:                                      ; preds = %if.end.106
  %89 = load i32, i32* %current, align 4
  %inc114 = add nsw i32 %89, 1
  store i32 %inc114, i32* %current, align 4
  %90 = load i32, i32* %tmp_x, align 4
  %add115 = add nsw i32 %90, 1
  %mul116 = mul nsw i32 %add115, 8
  %91 = load i32, i32* %i, align 4
  %mul117 = mul nsw i32 2, %91
  %idxprom118 = sext i32 %mul117 to i64
  %92 = load i32*, i32** %data, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %92, i64 %idxprom118
  %93 = load i32, i32* %arrayidx119, align 4
  %sub120 = sub nsw i32 %mul116, %93
  %94 = load i32, i32* %pixel, align 4
  %add121 = add nsw i32 %94, %sub120
  store i32 %add121, i32* %pixel, align 4
  br label %if.end.131

if.else.122:                                      ; preds = %if.end.106
  %95 = load i32, i32* %current, align 4
  %dec123 = add nsw i32 %95, -1
  store i32 %dec123, i32* %current, align 4
  %96 = load i32, i32* %tmp_x, align 4
  %add124 = add nsw i32 %96, 1
  %mul125 = mul nsw i32 %add124, 8
  %97 = load i32, i32* %i, align 4
  %mul126 = mul nsw i32 2, %97
  %idxprom127 = sext i32 %mul126 to i64
  %98 = load i32*, i32** %data, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %98, i64 %idxprom127
  %99 = load i32, i32* %arrayidx128, align 4
  %sub129 = sub nsw i32 %mul125, %99
  %100 = load i32, i32* %pixel, align 4
  %sub130 = sub nsw i32 %100, %sub129
  store i32 %sub130, i32* %pixel, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.122, %if.then.113
  %101 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %101, 1
  store i32 %inc132, i32* %i, align 4
  br label %while.cond.94

while.end.133:                                    ; preds = %if.then.105, %while.cond.94
  %102 = load i32, i32* %cur_x, align 4
  %idxprom134 = sext i32 %102 to i64
  %103 = load i8*, i8** %dest.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %103, i64 %idxprom134
  %104 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %104 to i32
  %105 = load i32, i32* %pixel, align 4
  %mul137 = mul nsw i32 %105, 255
  %div138 = sdiv i32 %mul137, 64
  %cmp139 = icmp sgt i32 %conv136, %div138
  br i1 %cmp139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.133
  %106 = load i32, i32* %cur_x, align 4
  %idxprom141 = sext i32 %106 to i64
  %107 = load i8*, i8** %dest.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %107, i64 %idxprom141
  %108 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %108 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.end.133
  %109 = load i32, i32* %pixel, align 4
  %mul144 = mul nsw i32 %109, 255
  %div145 = sdiv i32 %mul144, 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv143, %cond.true ], [ %div145, %cond.false ]
  %conv146 = trunc i32 %cond to i8
  %110 = load i32, i32* %cur_x, align 4
  %idxprom147 = sext i32 %110 to i64
  %111 = load i8*, i8** %dest.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %111, i64 %idxprom147
  store i8 %conv146, i8* %arrayidx148, align 1
  %112 = load i32, i32* %cur_x, align 4
  %add149 = add nsw i32 %112, 1
  store i32 %add149, i32* %last_x, align 4
  br label %for.cond.78

for.end.150:                                      ; preds = %for.cond.78
  %113 = load i32, i32* %current, align 4
  %cmp151 = icmp ne i32 %113, 0
  br i1 %cmp151, label %if.then.153, label %if.end.160

if.then.153:                                      ; preds = %for.end.150
  %114 = load i8*, i8** %dest.addr, align 8
  %115 = load i32, i32* %last_x, align 4
  %idx.ext154 = sext i32 %115 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %114, i64 %idx.ext154
  %116 = load i32, i32* %current, align 4
  %mul156 = mul nsw i32 255, %116
  %div157 = sdiv i32 %mul156, 8
  %conv158 = trunc i32 %div157 to i8
  %117 = load i32, i32* %width.addr, align 4
  %118 = load i32, i32* %last_x, align 4
  %sub159 = sub nsw i32 %117, %118
  call void @fill_run(i8* %add.ptr155, i8 zeroext %conv158, i32 %sub159)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.153, %for.end.150
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

; Function Attrs: nounwind uwtable
define internal void @insert_sort(i32* %data, i32 %n) #3 {
entry:
  %data.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 2, %1
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %data.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %tmp1, align 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %idxprom1 = sext i32 %add to i64
  %6 = load i32*, i32** %data.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %tmp2, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32*, i32** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32, i32* %tmp1, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %12, 2
  store i32 %add6, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %while.end
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %j, align 4
  %cmp8 = icmp sgt i32 %14, %15
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %16 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %16, 2
  %idxprom10 = sext i32 %sub to i64
  %17 = load i32*, i32** %data.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32*, i32** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom12
  store i32 %18, i32* %arrayidx13, align 4
  %21 = load i32, i32* %k, align 4
  %sub14 = sub nsw i32 %21, 1
  %idxprom15 = sext i32 %sub14 to i64
  %22 = load i32*, i32** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom15
  %23 = load i32, i32* %arrayidx16, align 4
  %24 = load i32, i32* %k, align 4
  %add17 = add nsw i32 %24, 1
  %idxprom18 = sext i32 %add17 to i64
  %25 = load i32*, i32** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 %idxprom18
  store i32 %23, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %26 = load i32, i32* %k, align 4
  %sub20 = sub nsw i32 %26, 2
  store i32 %sub20, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %27 = load i32, i32* %tmp1, align 4
  %28 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %28 to i64
  %29 = load i32*, i32** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  store i32 %27, i32* %arrayidx22, align 4
  %30 = load i32, i32* %tmp2, align 4
  %31 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %31, 1
  %idxprom24 = sext i32 %add23 to i64
  %32 = load i32*, i32** %data.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %32, i64 %idxprom24
  store i32 %30, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %33, 2
  store i32 %add27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fill_run(i8* %dest, i8 zeroext %alpha, i32 %w) #3 {
entry:
  %dest.addr = alloca i8*, align 8
  %alpha.addr = alloca i8, align 1
  %w.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8 %alpha, i8* %alpha.addr, align 1
  store i32 %w, i32* %w.addr, align 4
  %0 = load i8, i8* %alpha.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i32, i32* %w.addr, align 4
  %conv2 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %conv2, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.else
  %3 = load i32, i32* %w.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %w.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %dest.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load i8, i8* %alpha.addr, align 1
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp sgt i32 %conv3, %conv4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load i8*, i8** %dest.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load i8, i8* %alpha.addr, align 1
  %conv8 = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv8, %cond.false ]
  %conv9 = trunc i32 %cond to i8
  %10 = load i8*, i8** %dest.addr, align 8
  store i8 %conv9, i8* %10, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #1

declare void @gimp_blob_bounds(%struct._GimpBlob*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._TempBuf* @temp_buf_resize(%struct._TempBuf*, i32, i32, i32, i32, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push(%struct._GimpImage*, i64, i32, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ink_undo_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
