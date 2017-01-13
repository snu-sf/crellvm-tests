; ModuleID = './app/tools/gimpsheartool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpShearToolClass = type { %struct._GimpTransformToolClass }
%struct._GimpTransformToolClass = type { %struct._GimpDrawToolClass, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, void (%struct._GimpTransformTool*)*, i8* (%struct._GimpTransformTool*)*, %struct._TileManager* (%struct._GimpTransformTool*, %struct._GimpItem*, %struct._TileManager*, i32, i32, i32*, i32*)* }
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
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type opaque
%struct._GimpImage = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type opaque
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
%struct._GimpTransformTool = type { %struct._GimpDrawTool, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, %struct._GimpMatrix3, [8 x double], [8 x double], [8 x double], i32, i32, i32, i32, i32, [11 x %struct._GimpCanvasItem*], i8*, %struct._GtkWidget* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpItem = type opaque
%struct._TileManager = type opaque
%struct._GimpShearTool = type { %struct._GimpTransformTool, %struct._GtkAdjustment*, %struct._GtkAdjustment* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@gimp_shear_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpShearTool\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-shear-tool\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Shear\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Shear Tool: Shear the layer, selection or path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"S_hear\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<shift>S\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp-tool-shear\00", align 1
@gimp_shear_tool_parent_class = internal global i8* null, align 8
@GimpShearTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Shear magnitude _X:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Shear magnitude _Y:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"undo-type\04Shear horizontally by %-3.3g\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"undo-type\04Shear vertically by %-3.3g\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"undo-type\04Shear horizontally by %-3.3g, vertically by %-3.3g\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Shearing\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_shear_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_shear_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_shear_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_transform_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 344, void (i8*, i8*)* bitcast (void (i8*)* @gimp_shear_tool_class_intern_init to void (i8*, i8*)*), i32 808, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpShearTool*)* @gimp_shear_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_shear_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_shear_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_shear_tool_parent_class, align 8
  %1 = load i32, i32* @GimpShearTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpShearTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpShearToolClass*
  call void @gimp_shear_tool_class_init(%struct._GimpShearToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_init(%struct._GimpShearTool* %shear_tool) #3 {
entry:
  %shear_tool.addr = alloca %struct._GimpShearTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %tr_tool = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpShearTool* %shear_tool, %struct._GimpShearTool** %shear_tool.addr, align 8
  %0 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear_tool.addr, align 8
  %1 = bitcast %struct._GimpShearTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear_tool.addr, align 8
  %4 = bitcast %struct._GimpShearTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_transform_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTransformTool*
  store %struct._GimpTransformTool* %5, %struct._GimpTransformTool** %tr_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %7, i32 16)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %progress_text = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 32
  store i8* %call4, i8** %progress_text, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool, align 8
  %use_grid = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 27
  store i32 1, i32* %use_grid, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_shear_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_shear_tool_get_type() #5
  %call1 = call i64 @gimp_transform_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_transform_options_gui, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_transform_options_get_type() #2

declare %struct._GtkWidget* @gimp_transform_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_class_init(%struct._GimpShearToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpShearToolClass*, align 8
  %trans_class = alloca %struct._GimpTransformToolClass*, align 8
  store %struct._GimpShearToolClass* %klass, %struct._GimpShearToolClass** %klass.addr, align 8
  %0 = load %struct._GimpShearToolClass*, %struct._GimpShearToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpShearToolClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_transform_tool_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpTransformToolClass*
  store %struct._GimpTransformToolClass* %2, %struct._GimpTransformToolClass** %trans_class, align 8
  %3 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %3, i32 0, i32 1
  store void (%struct._GimpTransformTool*)* @gimp_shear_tool_dialog, void (%struct._GimpTransformTool*)** %dialog, align 8
  %4 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %dialog_update = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %4, i32 0, i32 2
  store void (%struct._GimpTransformTool*)* @gimp_shear_tool_dialog_update, void (%struct._GimpTransformTool*)** %dialog_update, align 8
  %5 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %prepare = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %5, i32 0, i32 3
  store void (%struct._GimpTransformTool*)* @gimp_shear_tool_prepare, void (%struct._GimpTransformTool*)** %prepare, align 8
  %6 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %motion = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %6, i32 0, i32 4
  store void (%struct._GimpTransformTool*)* @gimp_shear_tool_motion, void (%struct._GimpTransformTool*)** %motion, align 8
  %7 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %recalc_matrix = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %7, i32 0, i32 5
  store void (%struct._GimpTransformTool*)* @gimp_shear_tool_recalc_matrix, void (%struct._GimpTransformTool*)** %recalc_matrix, align 8
  %8 = load %struct._GimpTransformToolClass*, %struct._GimpTransformToolClass** %trans_class, align 8
  %get_undo_desc = getelementptr inbounds %struct._GimpTransformToolClass, %struct._GimpTransformToolClass* %8, i32 0, i32 6
  store i8* (%struct._GimpTransformTool*)* @gimp_shear_tool_get_undo_desc, i8* (%struct._GimpTransformTool*)** %get_undo_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_dialog(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %shear = alloca %struct._GimpShearTool*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_shear_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpShearTool*
  store %struct._GimpShearTool* %2, %struct._GimpShearTool** %shear, align 8
  %call2 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_table_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %8, i32 2)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %11, i32 6)
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 33
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %15)
  %16 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %x_adj = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %20, i32 0, i32 1
  %21 = bitcast %struct._GtkAdjustment** %x_adj to %struct._GtkObject**
  %call14 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %21, double 0.000000e+00, double -6.553600e+04, double 6.553600e+04, double 1.000000e+00, double 1.500000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %button, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_entry_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %24, i32 10)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_table_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTable*
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #6
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call20 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %27, i32 0, i32 0, i8* %call19, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %28, i32 1, i32 1)
  %29 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %x_adj21 = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %29, i32 0, i32 1
  %30 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %x_adj21, align 8
  %31 = bitcast %struct._GtkAdjustment* %30 to i8*
  %32 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %33 = bitcast %struct._GimpTransformTool* %32 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTransformTool*)* @shear_x_mag_changed to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %y_adj = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %34, i32 0, i32 2
  %35 = bitcast %struct._GtkAdjustment** %y_adj to %struct._GtkObject**
  %call23 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %35, double 0.000000e+00, double -6.553600e+04, double 6.553600e+04, double 1.000000e+00, double 1.500000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %button, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_entry_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call24)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %38, i32 10)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call26)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #6
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call29 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %41, i32 0, i32 1, i8* %call28, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %42, i32 1, i32 1)
  %43 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %y_adj30 = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %43, i32 0, i32 2
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %y_adj30, align 8
  %45 = bitcast %struct._GtkAdjustment* %44 to i8*
  %46 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %47 = bitcast %struct._GimpTransformTool* %46 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpTransformTool*)* @shear_y_mag_changed to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_dialog_update(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %shear = alloca %struct._GimpShearTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %1 = bitcast %struct._GimpTransformTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_shear_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpShearTool*
  store %struct._GimpShearTool* %2, %struct._GimpShearTool** %shear, align 8
  %3 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %x_adj = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %3, i32 0, i32 1
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %x_adj, align 8
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 1
  %6 = load double, double* %arrayidx, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %4, double %6)
  %7 = load %struct._GimpShearTool*, %struct._GimpShearTool** %shear, align 8
  %y_adj = getelementptr inbounds %struct._GimpShearTool, %struct._GimpShearTool* %7, i32 0, i32 2
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %y_adj, align 8
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %trans_info2, i32 0, i64 2
  %10 = load double, double* %arrayidx3, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_prepare(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  store double 2.000000e+00, double* %arrayidx, align 8
  %1 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %1, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx2, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_motion(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %diffx = alloca double, align 8
  %diffy = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 1
  %1 = load double, double* %curx, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lastx = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 3
  %3 = load double, double* %lastx, align 8
  %sub = fsub double %1, %3
  store double %sub, double* %diffx, align 8
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 2
  %5 = load double, double* %cury, align 8
  %6 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lasty = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %6, i32 0, i32 4
  %7 = load double, double* %lasty, align 8
  %sub1 = fsub double %5, %7
  store double %sub1, double* %diffy, align 8
  %8 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %8, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 0
  %9 = load double, double* %arrayidx, align 8
  %cmp = fcmp oeq double %9, 2.000000e+00
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %10 = load double, double* %diffx, align 8
  %conv = fptosi double %10 to i32
  %call = call i32 @abs(i32 %conv) #5
  %cmp2 = icmp sgt i32 %call, 5
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load double, double* %diffy, align 8
  %conv4 = fptosi double %11 to i32
  %call5 = call i32 @abs(i32 %conv4) #5
  %cmp6 = icmp sgt i32 %call5, 5
  br i1 %cmp6, label %if.then.8, label %if.else.24

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %12 = load double, double* %diffx, align 8
  %conv9 = fptosi double %12 to i32
  %call10 = call i32 @abs(i32 %conv9) #5
  %13 = load double, double* %diffy, align 8
  %conv11 = fptosi double %13 to i32
  %call12 = call i32 @abs(i32 %conv11) #5
  %cmp13 = icmp sgt i32 %call10, %call12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.8
  %14 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info16 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %14, i32 0, i32 23
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %trans_info16, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx17, align 8
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info18 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 23
  %arrayidx19 = getelementptr inbounds [8 x double], [8 x double]* %trans_info18, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx19, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.8
  %16 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info20 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %16, i32 0, i32 23
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %trans_info20, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx21, align 8
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info22 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 23
  %arrayidx23 = getelementptr inbounds [8 x double], [8 x double]* %trans_info22, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.29

if.else.24:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lastx25 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %18, i32 0, i32 3
  %19 = load double, double* %lastx25, align 8
  %20 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx26 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %20, i32 0, i32 1
  store double %19, double* %curx26, align 8
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %lasty27 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 4
  %22 = load double, double* %lasty27, align 8
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury28 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 2
  store double %22, double* %cury28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.24, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  %24 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info31 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %24, i32 0, i32 23
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %trans_info31, i32 0, i64 0
  %25 = load double, double* %arrayidx32, align 8
  %cmp33 = fcmp oeq double %25, 0.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.else.48

if.then.35:                                       ; preds = %if.end.30
  %26 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %cury36 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %26, i32 0, i32 2
  %27 = load double, double* %cury36, align 8
  %28 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %28, i32 0, i32 13
  %29 = load double, double* %ty1, align 8
  %30 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %ty3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %30, i32 0, i32 17
  %31 = load double, double* %ty3, align 8
  %add = fadd double %29, %31
  %div = fdiv double %add, 2.000000e+00
  %cmp37 = fcmp ogt double %27, %div
  br i1 %cmp37, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.then.35
  %32 = load double, double* %diffx, align 8
  %33 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info40 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %33, i32 0, i32 23
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %trans_info40, i32 0, i64 1
  %34 = load double, double* %arrayidx41, align 8
  %add42 = fadd double %34, %32
  store double %add42, double* %arrayidx41, align 8
  br label %if.end.47

if.else.43:                                       ; preds = %if.then.35
  %35 = load double, double* %diffx, align 8
  %36 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info44 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %36, i32 0, i32 23
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %trans_info44, i32 0, i64 1
  %37 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double %37, %35
  store double %sub46, double* %arrayidx45, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.69

if.else.48:                                       ; preds = %if.end.30
  %38 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info49 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %38, i32 0, i32 23
  %arrayidx50 = getelementptr inbounds [8 x double], [8 x double]* %trans_info49, i32 0, i64 0
  %39 = load double, double* %arrayidx50, align 8
  %cmp51 = fcmp oeq double %39, 1.000000e+00
  br i1 %cmp51, label %if.then.53, label %if.end.68

if.then.53:                                       ; preds = %if.else.48
  %40 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %curx54 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %40, i32 0, i32 1
  %41 = load double, double* %curx54, align 8
  %42 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %42, i32 0, i32 12
  %43 = load double, double* %tx1, align 8
  %44 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %tx2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %44, i32 0, i32 14
  %45 = load double, double* %tx2, align 8
  %add55 = fadd double %43, %45
  %div56 = fdiv double %add55, 2.000000e+00
  %cmp57 = fcmp ogt double %41, %div56
  br i1 %cmp57, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %if.then.53
  %46 = load double, double* %diffy, align 8
  %47 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info60 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %47, i32 0, i32 23
  %arrayidx61 = getelementptr inbounds [8 x double], [8 x double]* %trans_info60, i32 0, i64 2
  %48 = load double, double* %arrayidx61, align 8
  %add62 = fadd double %48, %46
  store double %add62, double* %arrayidx61, align 8
  br label %if.end.67

if.else.63:                                       ; preds = %if.then.53
  %49 = load double, double* %diffy, align 8
  %50 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info64 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %50, i32 0, i32 23
  %arrayidx65 = getelementptr inbounds [8 x double], [8 x double]* %trans_info64, i32 0, i64 2
  %51 = load double, double* %arrayidx65, align 8
  %sub66 = fsub double %51, %49
  store double %sub66, double* %arrayidx65, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.63, %if.then.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.else.48
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_shear_tool_recalc_matrix(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %amount = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 1
  %1 = load double, double* %arrayidx, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 2
  %3 = load double, double* %arrayidx2, align 8
  %cmp3 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info4 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 23
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %trans_info4, i32 0, i64 0
  store double 2.000000e+00, double* %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info6 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %5, i32 0, i32 23
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %trans_info6, i32 0, i64 0
  %6 = load double, double* %arrayidx7, align 8
  %cmp8 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info10 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 23
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %trans_info10, i32 0, i64 1
  %8 = load double, double* %arrayidx11, align 8
  store double %8, double* %amount, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info12 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %trans_info12, i32 0, i64 2
  %10 = load double, double* %arrayidx13, align 8
  store double %10, double* %amount, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 22
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %transform)
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %transform15 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %12, i32 0, i32 22
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %13, i32 0, i32 5
  %14 = load i32, i32* %x1, align 4
  %15 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %15, i32 0, i32 6
  %16 = load i32, i32* %y1, align 4
  %17 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %17, i32 0, i32 7
  %18 = load i32, i32* %x2, align 4
  %19 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %x116 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %19, i32 0, i32 5
  %20 = load i32, i32* %x116, align 4
  %sub = sub nsw i32 %18, %20
  %21 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %21, i32 0, i32 8
  %22 = load i32, i32* %y2, align 4
  %23 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %y117 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %23, i32 0, i32 6
  %24 = load i32, i32* %y117, align 4
  %sub18 = sub nsw i32 %22, %24
  %25 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info19 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %25, i32 0, i32 23
  %arrayidx20 = getelementptr inbounds [8 x double], [8 x double]* %trans_info19, i32 0, i64 0
  %26 = load double, double* %arrayidx20, align 8
  %conv = fptoui double %26 to i32
  %27 = load double, double* %amount, align 8
  call void @gimp_transform_matrix_shear(%struct._GimpMatrix3* %transform15, i32 %14, i32 %16, i32 %sub, i32 %sub18, i32 %conv, double %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_shear_tool_get_undo_desc(%struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %retval = alloca i8*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %0, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 1
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %x, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info1 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %trans_info1, i32 0, i64 2
  %3 = load double, double* %arrayidx2, align 8
  store double %3, double* %y, align 8
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %4, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 0
  %5 = load double, double* %arrayidx4, align 8
  %conv = fptosi double %5 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %6 = load double, double* %x, align 8
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, double %6)
  store i8* %call5, i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %call7 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i64 10)
  %7 = load double, double* %y, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, double %7)
  store i8* %call8, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call9 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %8 = load double, double* %x, align 8
  %9 = load double, double* %y, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, double %8, double %9)
  store i8* %call10, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.6, %sw.bb
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @shear_x_mag_changed(%struct._GtkAdjustment* %adj, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* %value, align 8
  %1 = load double, double* %value, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 1
  %3 = load double, double* %arrayidx, align 8
  %cmp = fcmp une double %1, %3
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %5 = bitcast %struct._GimpTransformTool* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_draw_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 0
  %8 = load double, double* %arrayidx4, align 8
  %cmp5 = fcmp oeq double %8, 2.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %10 = load double, double* %value, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 1
  store double %10, double* %arrayidx10, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %12)
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %14 = bitcast %struct._GimpTransformTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shear_y_mag_changed(%struct._GtkAdjustment* %adj, %struct._GimpTransformTool* %tr_tool) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %tr_tool.addr = alloca %struct._GimpTransformTool*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpTransformTool* %tr_tool, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %0)
  store double %call, double* %value, align 8
  %1 = load double, double* %value, align 8
  %2 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %2, i32 0, i32 23
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %trans_info, i32 0, i64 2
  %3 = load double, double* %arrayidx, align 8
  %cmp = fcmp une double %1, %3
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %5 = bitcast %struct._GimpTransformTool* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_draw_tool_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %6)
  %7 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info3 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %7, i32 0, i32 23
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %trans_info3, i32 0, i64 0
  %8 = load double, double* %arrayidx4, align 8
  %cmp5 = fcmp oeq double %8, 2.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info7 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %9, i32 0, i32 23
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %trans_info7, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %10 = load double, double* %value, align 8
  %11 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %trans_info9 = getelementptr inbounds %struct._GimpTransformTool, %struct._GimpTransformTool* %11, i32 0, i32 23
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %trans_info9, i32 0, i64 2
  store double %10, double* %arrayidx10, align 8
  %12 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  call void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool* %12)
  %13 = load %struct._GimpTransformTool*, %struct._GimpTransformTool** %tr_tool.addr, align 8
  %14 = bitcast %struct._GimpTransformTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_draw_tool_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare void @gimp_transform_tool_recalc_matrix(%struct._GimpTransformTool*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_shear(%struct._GimpMatrix3*, i32, i32, i32, i32, i32, double) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
