; ModuleID = './app/tools/gimpsourcetool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSourceToolClass = type { %struct._GimpBrushToolClass }
%struct._GimpBrushToolClass = type { %struct._GimpPaintToolClass }
%struct._GimpPaintToolClass = type { %struct._GimpColorToolClass }
%struct._GimpColorToolClass = type { %struct._GimpDrawToolClass, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* }
%struct._GimpDrawToolClass = type { %struct._GimpToolClass, void (%struct._GimpDrawTool*)* }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
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
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpPaintInfo = type opaque
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
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpSourceTool = type { %struct._GimpBrushTool, %struct._GimpDisplay*, i32, i32, i32, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i8*, i8*, i8* }
%struct._GimpBrushTool = type { %struct._GimpPaintTool, i32, i32, double, double }
%struct._GimpPaintTool = type { %struct._GimpColorTool, i32, i32, i8*, i8*, i8*, %struct._GimpPaintCore* }
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type opaque
%struct._GArray = type { i8*, i32 }
%struct._GimpSourceCore = type { %struct._GimpBrushCore, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32 }
%struct._GimpBrushCore = type { %struct._GimpPaintCore, %struct._GimpBrush*, %struct._GimpBrush*, %struct._GimpDynamics*, double, double, double, double, double, %struct._TempBuf*, [2 x [2 x %struct._TempBuf*]], %struct._TempBuf*, i32, %struct._TempBuf*, %struct._TempBuf*, [5 x [5 x %struct._TempBuf*]], %struct._TempBuf*, i32, double, [360 x double], [360 x double], %struct._GRand* }
%struct._GRand = type opaque
%struct._GimpSourceOptions = type { %struct._GimpPaintOptions, i32, i32, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpDisplayShell = type opaque

@gimp_source_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpSourceTool\00", align 1
@gimp_source_tool_parent_class = internal global i8* null, align 8
@GimpSourceTool_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"src-drawable\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_source_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_source_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_source_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_tool_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_source_tool_class_intern_init to void (i8*, i8*)*), i32 424, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSourceTool*)* @gimp_source_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_source_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_source_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_source_tool_parent_class, align 8
  %1 = load i32, i32* @GimpSourceTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSourceTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSourceToolClass*
  call void @gimp_source_tool_class_init(%struct._GimpSourceToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_init(%struct._GimpSourceTool* %source) #3 {
entry:
  %source.addr = alloca %struct._GimpSourceTool*, align 8
  store %struct._GimpSourceTool* %source, %struct._GimpSourceTool** %source.addr, align 8
  %0 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source.addr, align 8
  %show_source_outline = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %0, i32 0, i32 4
  store i32 1, i32* %show_source_outline, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_class_init(%struct._GimpSourceToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSourceToolClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpSourceToolClass* %klass, %struct._GimpSourceToolClass** %klass.addr, align 8
  %0 = load %struct._GimpSourceToolClass*, %struct._GimpSourceToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSourceToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %2, %struct._GimpToolClass** %tool_class, align 8
  %3 = load %struct._GimpSourceToolClass*, %struct._GimpSourceToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSourceToolClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_draw_tool_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %5, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %6 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %6, i32 0, i32 1
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*)* @gimp_source_tool_has_display, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %7 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %7, i32 0, i32 2
  store %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)* @gimp_source_tool_has_image, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %8 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_source_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %9 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %9, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_source_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_source_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_source_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_source_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_source_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %14 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %14, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_source_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_source_tool_has_display(%struct._GimpTool* %tool, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call2)
  %8 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %has_display = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %8, i32 0, i32 1
  %9 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*)** %has_display, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call i32 %9(%struct._GimpTool* %10, %struct._GimpDisplay* %11)
  %tobool = icmp ne i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %12 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpDisplay* @gimp_source_tool_has_image(%struct._GimpTool* %tool, %struct._GimpImage* %image) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_tool_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpToolClass*
  %has_image = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)** %has_image, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call4 = call %struct._GimpDisplay* %6(%struct._GimpTool* %7, %struct._GimpImage* %8)
  store %struct._GimpDisplay* %call4, %struct._GimpDisplay** %display, align 8
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %9, null
  br i1 %tobool, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %tobool5 = icmp ne %struct._GimpDisplay* %11, null
  br i1 %tobool5, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool6 = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %if.then
  %13 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display8 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display8, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %call9, %15
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %land.lhs.true.7
  %16 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display11 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display11, align 8
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %land.lhs.true.7, %if.then
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool12 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %19 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display14 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display14, align 8
  store %struct._GimpDisplay* %20, %struct._GimpDisplay** %display, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true, %entry
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  ret %struct._GimpDisplay* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  call void @gimp_source_tool_set_src_display(%struct._GimpSourceTool* %4, %struct._GimpDisplay* null)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpTool* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_paint_tool_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %7, i32 0, i32 6
  %8 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %9 = bitcast %struct._GimpPaintCore* %8 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %10 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #4
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 4
  %13 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = load i32, i32* %action.addr, align 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %13(%struct._GimpTool* %14, i32 %15, %struct._GimpDisplay* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %source = alloca %struct._GimpSourceCore*, align 8
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %2, %struct._GimpPaintTool** %paint_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_source_tool_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %5, %struct._GimpSourceTool** %source_tool, align 8
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 6
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %8 = bitcast %struct._GimpPaintCore* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_source_core_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %9, %struct._GimpSourceCore** %source, align 8
  %call6 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call6, i32* %toggle_mask, align 4
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_draw_tool_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %12)
  %13 = load i32, i32* %state.addr, align 4
  %14 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %14, 1
  %and = and i32 %13, %or
  %15 = load i32, i32* %toggle_mask, align 4
  %cmp = icmp eq i32 %and, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %16, i32 0, i32 1
  store i32 1, i32* %set_source, align 4
  %17 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_source_tool_set_src_display(%struct._GimpSourceTool* %17, %struct._GimpDisplay* %18)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %set_source9 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %19, i32 0, i32 1
  store i32 0, i32* %set_source9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call10 = call i64 @gimp_tool_get_type() #4
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 %call10)
  %22 = bitcast %struct._GTypeClass* %call11 to %struct._GimpToolClass*
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %22, i32 0, i32 5
  %23 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %24 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %26 = load i32, i32* %time.addr, align 4
  %27 = load i32, i32* %state.addr, align 4
  %28 = load i32, i32* %press_type.addr, align 4
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %23(%struct._GimpTool* %24, %struct._GimpCoords* %25, i32 %26, i32 %27, i32 %28, %struct._GimpDisplay* %29)
  %30 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %30, i32 0, i32 3
  %31 = load double, double* %src_x, align 8
  %conv = fptosi double %31 to i32
  %32 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x12 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %32, i32 0, i32 2
  store i32 %conv, i32* %src_x12, align 4
  %33 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %33, i32 0, i32 4
  %34 = load double, double* %src_y, align 8
  %conv13 = fptosi double %34 to i32
  %35 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y14 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %35, i32 0, i32 3
  store i32 %conv13, i32* %src_y14, align 4
  %36 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %37 = bitcast %struct._GimpTool* %36 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_draw_tool_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call15)
  %38 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %source = alloca %struct._GimpSourceCore*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %6, i32 0, i32 6
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %8 = bitcast %struct._GimpPaintCore* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_source_core_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %9, %struct._GimpSourceCore** %source, align 8
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %12)
  %13 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call8 = call i64 @gimp_tool_get_type() #4
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call8)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GimpToolClass*
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 7
  %16 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %19 = load i32, i32* %time.addr, align 4
  %20 = load i32, i32* %state.addr, align 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %16(%struct._GimpTool* %17, %struct._GimpCoords* %18, i32 %19, i32 %20, %struct._GimpDisplay* %21)
  %22 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %22, i32 0, i32 3
  %23 = load double, double* %src_x, align 8
  %conv = fptosi double %23 to i32
  %24 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x10 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %24, i32 0, i32 2
  store i32 %conv, i32* %src_x10, align 4
  %25 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %25, i32 0, i32 4
  %26 = load double, double* %src_y, align 8
  %conv11 = fptosi double %26 to i32
  %27 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y12 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %27, i32 0, i32 3
  store i32 %conv11, i32* %src_y12, align 4
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %29 = bitcast %struct._GimpTool* %28 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_draw_tool_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call13)
  %30 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_tool_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %5, %struct._GimpPaintTool** %paint_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpTool*
  %call6 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %8)
  %9 = bitcast %struct._GimpToolOptions* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_source_options_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %10, %struct._GimpSourceOptions** %options, align 8
  %11 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %11, i32 0, i32 3
  %12 = load i32, i32* %use_source, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %key.addr, align 4
  %call9 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp = icmp eq i32 %13, %call9
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpTool* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_draw_tool_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %16)
  %17 = load i32, i32* %press.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %18 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %status_set_source = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %18, i32 0, i32 8
  %19 = load i8*, i8** %status_set_source, align 8
  %20 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %20, i32 0, i32 3
  store i8* %19, i8** %status, align 8
  %21 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %show_source_outline = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %21, i32 0, i32 4
  store i32 0, i32* %show_source_outline, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %status_paint = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %22, i32 0, i32 7
  %23 = load i8*, i8** %status_paint, align 8
  %24 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status14 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %24, i32 0, i32 3
  store i8* %23, i8** %status14, align 8
  %25 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %show_source_outline15 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %25, i32 0, i32 4
  store i32 1, i32* %show_source_outline15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %26 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpTool* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_draw_tool_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %land.lhs.true, %entry
  %29 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %30 = bitcast i8* %29 to %struct._GTypeClass*
  %call19 = call i64 @gimp_tool_get_type() #4
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %30, i64 %call19)
  %31 = bitcast %struct._GTypeClass* %call20 to %struct._GimpToolClass*
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %31, i32 0, i32 10
  %32 = load void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %34 = load i32, i32* %key.addr, align 4
  %35 = load i32, i32* %press.addr, align 4
  %36 = load i32, i32* %state.addr, align 4
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %32(%struct._GimpTool* %33, i32 %34, i32 %35, i32 %36, %struct._GimpDisplay* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %paint_tool = alloca %struct._GimpPaintTool*, align 8
  %source = alloca %struct._GimpSourceCore*, align 8
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_source_options_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %7, %struct._GimpSourceOptions** %options, align 8
  %8 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_tool_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintTool*
  store %struct._GimpPaintTool* %11, %struct._GimpPaintTool** %paint_tool, align 8
  %12 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %12, i32 0, i32 3
  %13 = load i32, i32* %use_source, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %14 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %status_set_source_ctrl = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %14, i32 0, i32 9
  %15 = load i8*, i8** %status_set_source_ctrl, align 8
  %16 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %16, i32 0, i32 5
  store i8* %15, i8** %status_ctrl, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct._GimpPaintTool*, %struct._GimpPaintTool** %paint_tool, align 8
  %status_ctrl11 = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %17, i32 0, i32 5
  store i8* null, i8** %status_ctrl11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %18 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #4
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call13)
  %20 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 12
  %21 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load i32, i32* %state.addr, align 4
  %25 = load i32, i32* %proximity.addr, align 4
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %21(%struct._GimpTool* %22, %struct._GimpCoords* %23, i32 %24, i32 %25, %struct._GimpDisplay* %26)
  %27 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source15 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %27, i32 0, i32 3
  %28 = load i32, i32* %use_source15, align 4
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then.17, label %if.end.54

if.then.17:                                       ; preds = %if.end.12
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %30 = bitcast %struct._GimpTool* %29 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_paint_tool_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call18)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %31, i32 0, i32 6
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %33 = bitcast %struct._GimpPaintCore* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_source_core_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %34, %struct._GimpSourceCore** %source, align 8
  %35 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %35, i32 0, i32 2
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %cmp = icmp eq %struct._GimpDrawable* %36, null
  br i1 %cmp, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.then.17
  %call23 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call23, i32* %toggle_mask, align 4
  %37 = load i32, i32* %state.addr, align 4
  %38 = load i32, i32* %toggle_mask, align 4
  %and = and i32 %37, %38
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.22
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %41 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %status_set_source = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %41, i32 0, i32 8
  %42 = load i8*, i8** %status_set_source, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %39, %struct._GimpDisplay* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %42)
  br label %if.end.29

if.else.26:                                       ; preds = %if.then.22
  %43 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %45 = load i32, i32* %toggle_mask, align 4
  %call27 = call i8* @gimp_get_mod_string(i32 %45)
  %46 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %status_set_source28 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %46, i32 0, i32 8
  %47 = load i8*, i8** %status_set_source28, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_replace_status(%struct._GimpTool* %43, %struct._GimpDisplay* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %call27, i8* %47)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %if.end.53

if.else.30:                                       ; preds = %if.then.17
  %48 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %49 = bitcast %struct._GimpTool* %48 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_draw_tool_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call31)
  %50 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %50)
  %51 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %51, i32 0, i32 3
  %52 = load double, double* %src_x, align 8
  %conv = fptosi double %52 to i32
  %53 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x33 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %53, i32 0, i32 2
  store i32 %conv, i32* %src_x33, align 4
  %54 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %54, i32 0, i32 4
  %55 = load double, double* %src_y, align 8
  %conv34 = fptosi double %55 to i32
  %56 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y35 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %56, i32 0, i32 3
  store i32 %conv34, i32* %src_y35, align 4
  %57 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %first_stroke = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %57, i32 0, i32 9
  %58 = load i32, i32* %first_stroke, align 4
  %tobool36 = icmp ne i32 %58, 0
  br i1 %tobool36, label %if.end.50, label %if.then.37

if.then.37:                                       ; preds = %if.else.30
  %59 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %59, i32 0, i32 1
  %60 = load i32, i32* %align_mode, align 4
  switch i32 %60, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.then.37
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i32 0, i32 0
  %62 = load double, double* %x, align 8
  %63 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %offset_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %63, i32 0, i32 7
  %64 = load double, double* %offset_x, align 8
  %add = fadd double %62, %64
  %conv38 = fptosi double %add to i32
  %65 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x39 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %65, i32 0, i32 2
  store i32 %conv38, i32* %src_x39, align 4
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 1
  %67 = load double, double* %y, align 8
  %68 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %offset_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %68, i32 0, i32 8
  %69 = load double, double* %offset_y, align 8
  %add40 = fadd double %67, %69
  %conv41 = fptosi double %add40 to i32
  %70 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y42 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %70, i32 0, i32 3
  store i32 %conv41, i32* %src_y42, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then.37
  %71 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %71, i32 0, i32 0
  %72 = load double, double* %x44, align 8
  %conv45 = fptosi double %72 to i32
  %73 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x46 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %73, i32 0, i32 2
  store i32 %conv45, i32* %src_x46, align 4
  %74 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %74, i32 0, i32 1
  %75 = load double, double* %y47, align 8
  %conv48 = fptosi double %75 to i32
  %76 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y49 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %76, i32 0, i32 3
  store i32 %conv48, i32* %src_y49, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.43, %sw.bb
  br label %if.end.50

if.end.50:                                        ; preds = %sw.epilog, %if.else.30
  %77 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %78 = bitcast %struct._GimpTool* %77 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_draw_tool_get_type() #4
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call51)
  %79 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %79)
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.50, %if.end.29
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %cursor = alloca i32, align 4
  %modifier = alloca i32, align 4
  %toggle_mask = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_source_options_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %4, %struct._GimpSourceOptions** %options, align 8
  store i32 1025, i32* %cursor, align 4
  store i32 0, i32* %modifier, align 4
  %5 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %5, i32 0, i32 3
  %6 = load i32, i32* %use_source, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call5, i32* %toggle_mask, align 4
  %7 = load i32, i32* %state.addr, align 4
  %8 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %8, 1
  %and = and i32 %7, %or
  %9 = load i32, i32* %toggle_mask, align 4
  %cmp = icmp eq i32 %and, %9
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 1027, i32* %cursor, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_tool_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %12, i32 0, i32 6
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %14 = bitcast %struct._GimpPaintCore* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_source_core_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSourceCore*
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %15, i32 0, i32 2
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %tobool11 = icmp ne %struct._GimpDrawable* %16, null
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.else
  store i32 1, i32* %modifier, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 3
  %18 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  %19 = load i32, i32* %cursor, align 4
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %18, i32 %19)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control15 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control15, align 8
  %22 = load i32, i32* %modifier, align 4
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %21, i32 %22)
  %23 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call16 = call i64 @gimp_tool_get_type() #4
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call16)
  %25 = bitcast %struct._GTypeClass* %call17 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %25, i32 0, i32 13
  %26 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %29 = load i32, i32* %state.addr, align 4
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %26(%struct._GimpTool* %27, %struct._GimpCoords* %28, i32 %29, %struct._GimpDisplay* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %source_tool = alloca %struct._GimpSourceTool*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %source = alloca %struct._GimpSourceCore*, align 8
  %src_shell = alloca %struct._GimpDisplayShell*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceTool*
  store %struct._GimpSourceTool* %2, %struct._GimpSourceTool** %source_tool, align 8
  %3 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %4 = bitcast %struct._GimpDrawTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_source_options_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %7, %struct._GimpSourceOptions** %options, align 8
  %8 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %9 = bitcast %struct._GimpDrawTool* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_paint_tool_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPaintTool*
  %core = getelementptr inbounds %struct._GimpPaintTool, %struct._GimpPaintTool* %10, i32 0, i32 6
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %12 = bitcast %struct._GimpPaintCore* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_source_core_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %13, %struct._GimpSourceCore** %source, align 8
  %14 = load i8*, i8** @gimp_source_tool_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call11 = call i64 @gimp_draw_tool_get_type() #4
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call11)
  %16 = bitcast %struct._GTypeClass* %call12 to %struct._GimpDrawToolClass*
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %16, i32 0, i32 1
  %17 = load void (%struct._GimpDrawTool*)*, void (%struct._GimpDrawTool*)** %draw, align 8
  %18 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void %17(%struct._GimpDrawTool* %18)
  %19 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %19, i32 0, i32 3
  %20 = load i32, i32* %use_source, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %entry
  %21 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %21, i32 0, i32 2
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %tobool13 = icmp ne %struct._GimpDrawable* %22, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.72

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %23 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %23, i32 0, i32 1
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %tobool15 = icmp ne %struct._GimpDisplay* %24, null
  br i1 %tobool15, label %if.then, label %if.end.72

if.then:                                          ; preds = %land.lhs.true.14
  %25 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display16 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %25, i32 0, i32 1
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display16, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %26)
  store %struct._GimpDisplayShell* %call17, %struct._GimpDisplayShell** %src_shell, align 8
  %27 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source, align 8
  %src_drawable18 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %27, i32 0, i32 2
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable18, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %30, i32* %off_x, i32* %off_y)
  %31 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %31, i32 0, i32 6
  %32 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline, align 8
  %tobool21 = icmp ne %struct._GimpCanvasItem* %32, null
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %34 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline23 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %34, i32 0, i32 6
  %35 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline23, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %33, %struct._GimpCanvasItem* %35)
  %36 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline24 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %36, i32 0, i32 6
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %src_outline24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %37 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %show_source_outline = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %37, i32 0, i32 4
  %38 = load i32, i32* %show_source_outline, align 4
  %tobool25 = icmp ne i32 %38, 0
  br i1 %tobool25, label %if.then.26, label %if.end.40

if.then.26:                                       ; preds = %if.end
  %39 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %40 = bitcast %struct._GimpSourceTool* %39 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_brush_tool_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call27)
  %41 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpBrushTool*
  %42 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_display29 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %42, i32 0, i32 1
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display29, align 8
  %44 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %44, i32 0, i32 2
  %45 = load i32, i32* %src_x, align 4
  %46 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %45, %46
  %conv = sitofp i32 %add to double
  %47 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %47, i32 0, i32 3
  %48 = load i32, i32* %src_y, align 4
  %49 = load i32, i32* %off_y, align 4
  %add30 = add nsw i32 %48, %49
  %conv31 = sitofp i32 %add30 to double
  %call32 = call %struct._GimpCanvasItem* @gimp_brush_tool_create_outline(%struct._GimpBrushTool* %41, %struct._GimpDisplay* %43, double %conv, double %conv31)
  %50 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline33 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %50, i32 0, i32 6
  store %struct._GimpCanvasItem* %call32, %struct._GimpCanvasItem** %src_outline33, align 8
  %51 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline34 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %51, i32 0, i32 6
  %52 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline34, align 8
  %tobool35 = icmp ne %struct._GimpCanvasItem* %52, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.26
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %54 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline37 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %54, i32 0, i32 6
  %55 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline37, align 8
  call void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell* %53, %struct._GimpCanvasItem* %55)
  %56 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline38 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %56, i32 0, i32 6
  %57 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline38, align 8
  %58 = bitcast %struct._GimpCanvasItem* %57 to i8*
  call void @g_object_unref(i8* %58)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  %59 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_outline41 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %59, i32 0, i32 6
  %60 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline41, align 8
  %tobool42 = icmp ne %struct._GimpCanvasItem* %60, null
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.40
  %61 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %61, i32 0, i32 5
  %62 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle, align 8
  %tobool44 = icmp ne %struct._GimpCanvasItem* %62, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.43
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %64 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle46 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %64, i32 0, i32 5
  %65 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle46, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %63, %struct._GimpCanvasItem* %65)
  %66 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle47 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %66, i32 0, i32 5
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %src_handle47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.43
  br label %if.end.71

if.else:                                          ; preds = %if.end.40
  %67 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle49 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %67, i32 0, i32 5
  %68 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle49, align 8
  %tobool50 = icmp ne %struct._GimpCanvasItem* %68, null
  br i1 %tobool50, label %if.else.62, label %if.then.51

if.then.51:                                       ; preds = %if.else
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %70 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x52 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %70, i32 0, i32 2
  %71 = load i32, i32* %src_x52, align 4
  %72 = load i32, i32* %off_x, align 4
  %add53 = add nsw i32 %71, %72
  %conv54 = sitofp i32 %add53 to double
  %73 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y55 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %73, i32 0, i32 3
  %74 = load i32, i32* %src_y55, align 4
  %75 = load i32, i32* %off_y, align 4
  %add56 = add nsw i32 %74, %75
  %conv57 = sitofp i32 %add56 to double
  %call58 = call %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell* %69, i32 4, i32 0, double %conv54, double %conv57, i32 15, i32 15)
  %76 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle59 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %76, i32 0, i32 5
  store %struct._GimpCanvasItem* %call58, %struct._GimpCanvasItem** %src_handle59, align 8
  %77 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %78 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle60 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %78, i32 0, i32 5
  %79 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle60, align 8
  call void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell* %77, %struct._GimpCanvasItem* %79)
  %80 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle61 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %80, i32 0, i32 5
  %81 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle61, align 8
  %82 = bitcast %struct._GimpCanvasItem* %81 to i8*
  call void @g_object_unref(i8* %82)
  br label %if.end.70

if.else.62:                                       ; preds = %if.else
  %83 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_handle63 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %83, i32 0, i32 5
  %84 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle63, align 8
  %85 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_x64 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %85, i32 0, i32 2
  %86 = load i32, i32* %src_x64, align 4
  %87 = load i32, i32* %off_x, align 4
  %add65 = add nsw i32 %86, %87
  %conv66 = sitofp i32 %add65 to double
  %88 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool, align 8
  %src_y67 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %88, i32 0, i32 3
  %89 = load i32, i32* %src_y67, align 4
  %90 = load i32, i32* %off_y, align 4
  %add68 = add nsw i32 %89, %90
  %conv69 = sitofp i32 %add68 to double
  call void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem* %84, double %conv66, double %conv69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.62, %if.then.51
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.48
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.14, %land.lhs.true, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_tool_set_src_display(%struct._GimpSourceTool* %source_tool, %struct._GimpDisplay* %display) #3 {
entry:
  %source_tool.addr = alloca %struct._GimpSourceTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %src_shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpSourceTool* %source_tool, %struct._GimpSourceTool** %source_tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_display = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %1, %2
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_display1 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display1, align 8
  %tobool = icmp ne %struct._GimpDisplay* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_display3 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %5, i32 0, i32 1
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %src_display3, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %src_shell, align 8
  %7 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_handle = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %7, i32 0, i32 5
  %8 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle, align 8
  %tobool4 = icmp ne %struct._GimpCanvasItem* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %10 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_handle6 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %10, i32 0, i32 5
  %11 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_handle6, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %9, %struct._GimpCanvasItem* %11)
  %12 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_handle7 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %12, i32 0, i32 5
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %src_handle7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  %13 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_outline = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %13, i32 0, i32 6
  %14 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline, align 8
  %tobool8 = icmp ne %struct._GimpCanvasItem* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %src_shell, align 8
  %16 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_outline10 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %16, i32 0, i32 6
  %17 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %src_outline10, align 8
  call void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell* %15, %struct._GimpCanvasItem* %17)
  %18 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_outline11 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %18, i32 0, i32 6
  store %struct._GimpCanvasItem* null, %struct._GimpCanvasItem** %src_outline11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load %struct._GimpSourceTool*, %struct._GimpSourceTool** %source_tool.addr, align 8
  %src_display14 = getelementptr inbounds %struct._GimpSourceTool, %struct._GimpSourceTool* %20, i32 0, i32 1
  store %struct._GimpDisplay* %19, %struct._GimpDisplay** %src_display14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %entry
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_tool_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_remove_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_core_get_type() #2

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

declare void @gimp_tool_replace_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare i8* @gimp_get_mod_string(i32) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpCanvasItem* @gimp_brush_tool_create_outline(%struct._GimpBrushTool*, %struct._GimpDisplay*, double, double) #1

declare void @gimp_display_shell_add_tool_item(%struct._GimpDisplayShell*, %struct._GimpCanvasItem*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpCanvasItem* @gimp_canvas_handle_new(%struct._GimpDisplayShell*, i32, i32, double, double, i32, i32) #1

declare void @gimp_canvas_handle_set_position(%struct._GimpCanvasItem*, double, double) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
