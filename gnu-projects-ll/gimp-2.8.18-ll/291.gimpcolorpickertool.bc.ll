; ModuleID = './app/tools/gimpcolorpickertool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorPickerToolClass = type { %struct._GimpColorToolClass }
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
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type opaque
%struct._GimpColorPickerTool = type { %struct._GimpColorTool, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpColorPickerOptions = type { %struct._GimpColorOptions, i32, i32 }
%struct._GimpDisplayShell = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpColorFrame = type { %struct._GimpFrame, i32, i32, %struct._GimpRGB, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*], %struct._PangoLayout* }
%struct._GimpFrame = type { %struct._GtkFrame }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._PangoLayout = type opaque
%struct._GimpToolDialog = type { %struct._GimpViewableDialog }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@gimp_color_picker_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpColorPickerTool\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gimp-color-picker-tool\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Color Picker\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Color Picker Tool: Set colors from image pixels\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"C_olor Picker\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-tool-color-picker\00", align 1
@gimp_color_picker_tool_parent_class = internal global i8* null, align 8
@GimpColorPickerTool_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"use-info-window\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"pick-mode\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Click in any image to view its color\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Click in any image to pick the foreground color\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Click in any image to pick the background color\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Click in any image to add the color to the palette\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_color_picker_tool_info_create = private unnamed_addr constant [35 x i8] c"gimp_color_picker_tool_info_create\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"tool->drawable != NULL\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Color Picker Information\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_picker_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_picker_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_picker_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_tool_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 304, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_picker_tool_class_intern_init to void (i8*, i8*)*), i32 328, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorPickerTool*)* @gimp_color_picker_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_picker_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_picker_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_picker_tool_parent_class, align 8
  %1 = load i32, i32* @GimpColorPickerTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorPickerTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorPickerToolClass*
  call void @gimp_color_picker_tool_class_init(%struct._GimpColorPickerToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_init(%struct._GimpColorPickerTool* %picker_tool) #3 {
entry:
  %picker_tool.addr = alloca %struct._GimpColorPickerTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %color_tool = alloca %struct._GimpColorTool*, align 8
  store %struct._GimpColorPickerTool* %picker_tool, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %0 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %1 = bitcast %struct._GimpColorPickerTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %4 = bitcast %struct._GimpColorPickerTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorTool*
  store %struct._GimpColorTool* %5, %struct._GimpColorTool** %color_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl* %7, i32 1)
  %8 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %8, i32 0, i32 4
  store i32 1, i32* %pick_mode, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_picker_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_color_picker_tool_get_type() #5
  %call1 = call i64 @gimp_color_picker_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_color_picker_options_gui, i32 192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_color_picker_options_get_type() #2

declare %struct._GtkWidget* @gimp_color_picker_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_class_init(%struct._GimpColorPickerToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorPickerToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %color_tool_class = alloca %struct._GimpColorToolClass*, align 8
  store %struct._GimpColorPickerToolClass* %klass, %struct._GimpColorPickerToolClass** %klass.addr, align 8
  %0 = load %struct._GimpColorPickerToolClass*, %struct._GimpColorPickerToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorPickerToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorPickerToolClass*, %struct._GimpColorPickerToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorPickerToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpColorPickerToolClass*, %struct._GimpColorPickerToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorPickerToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_color_tool_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %8, %struct._GimpColorToolClass** %color_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_color_picker_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %10, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_color_picker_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %11 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %modifier_key = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 10
  store void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_color_picker_tool_modifier_key, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)** %modifier_key, align 8
  %12 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %12, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_color_picker_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %13 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %color_tool_class, align 8
  %picked = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %13, i32 0, i32 2
  store void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* @gimp_color_picker_tool_picked, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)** %picked, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i8*, i8** @gimp_color_picker_tool_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_color_picker_tool_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %13 = bitcast %struct._GObject* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_tool_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorTool*
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %16 = bitcast %struct._GimpTool* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %17)
  %18 = bitcast %struct._GimpToolOptions* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_color_options_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpColorOptions*
  call void @gimp_color_tool_enable(%struct._GimpColorTool* %14, %struct._GimpColorOptions* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %picker_tool = alloca %struct._GimpColorPickerTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_picker_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPickerTool*
  store %struct._GimpColorPickerTool* %2, %struct._GimpColorPickerTool** %picker_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %4, i32 0, i32 1
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %6 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog3 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %7)
  %8 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog4 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %8, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog4, align 8
  %9 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %color_area = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %9, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_area, align 8
  %10 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %color_frame1 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %10, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_frame1, align 8
  %11 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %color_frame2 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %11, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_frame2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %12 = load i8*, i8** @gimp_color_picker_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call5)
  %14 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 4
  %15 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load i32, i32* %action.addr, align 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %15(%struct._GimpTool* %16, i32 %17, %struct._GimpDisplay* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_modifier_key(%struct._GimpTool* %tool, i32 %key, i32 %press, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %key.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %options = alloca %struct._GimpColorPickerOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %press, i32* %press.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %call2 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %2)
  %3 = bitcast %struct._GimpToolOptions* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_picker_options_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorPickerOptions*
  store %struct._GimpColorPickerOptions* %4, %struct._GimpColorPickerOptions** %options, align 8
  %5 = load i32, i32* %key.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %7 = bitcast %struct._GimpColorPickerOptions* %6 to i8*
  %8 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %use_info_window = getelementptr inbounds %struct._GimpColorPickerOptions, %struct._GimpColorPickerOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %use_info_window, align 4
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %lnot.ext, i8* null)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %key.addr, align 4
  %call5 = call i32 @gimp_get_toggle_behavior_mask()
  %cmp6 = icmp eq i32 %10, %call5
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %11 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorPickerOptions, %struct._GimpColorPickerOptions* %11, i32 0, i32 1
  %12 = load i32, i32* %pick_mode, align 4
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.then.7
  %13 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %14 = bitcast %struct._GimpColorPickerOptions* %13 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 2, i8* null)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.7
  %15 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %16 = bitcast %struct._GimpColorPickerOptions* %15 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %picker_tool = alloca %struct._GimpColorPickerTool*, align 8
  %options = alloca %struct._GimpColorPickerOptions*, align 8
  %toggle_mask = alloca i32, align 4
  %status_help = alloca i8*, align 8
  %shift_mod = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_picker_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPickerTool*
  store %struct._GimpColorPickerTool* %2, %struct._GimpColorPickerTool** %picker_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_picker_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorPickerOptions*
  store %struct._GimpColorPickerOptions* %7, %struct._GimpColorPickerOptions** %options, align 8
  %call7 = call i32 @gimp_get_toggle_behavior_mask()
  store i32 %call7, i32* %toggle_mask, align 4
  %8 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %pick_mode = getelementptr inbounds %struct._GimpColorPickerOptions, %struct._GimpColorPickerOptions* %8, i32 0, i32 1
  %9 = load i32, i32* %pick_mode, align 4
  %10 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpTool* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_color_tool_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpColorTool*
  %pick_mode10 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %12, i32 0, i32 4
  store i32 %9, i32* %pick_mode10, align 4
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %13, %struct._GimpDisplay* %14)
  %15 = load i32, i32* %proximity.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  store i8* null, i8** %status_help, align 8
  store i32 0, i32* %shift_mod, align 4
  %16 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %16, i32 0, i32 1
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then
  store i32 1, i32* %shift_mod, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %18 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %pick_mode13 = getelementptr inbounds %struct._GimpColorPickerOptions, %struct._GimpColorPickerOptions* %18, i32 0, i32 1
  %19 = load i32, i32* %pick_mode13, align 4
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.21
    i32 3, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #6
  %20 = load i32, i32* %shift_mod, align 4
  %21 = load i32, i32* %state.addr, align 4
  %neg = xor i32 %21, -1
  %and = and i32 %20, %neg
  %call15 = call i8* @gimp_suggest_modifiers(i8* %call14, i32 %and, i8* null, i8* null, i8* null)
  store i8* %call15, i8** %status_help, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0)) #6
  %22 = load i32, i32* %shift_mod, align 4
  %23 = load i32, i32* %toggle_mask, align 4
  %or = or i32 %22, %23
  %24 = load i32, i32* %state.addr, align 4
  %neg18 = xor i32 %24, -1
  %and19 = and i32 %or, %neg18
  %call20 = call i8* @gimp_suggest_modifiers(i8* %call17, i32 %and19, i8* null, i8* null, i8* null)
  store i8* %call20, i8** %status_help, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0)) #6
  %25 = load i32, i32* %shift_mod, align 4
  %26 = load i32, i32* %toggle_mask, align 4
  %or23 = or i32 %25, %26
  %27 = load i32, i32* %state.addr, align 4
  %neg24 = xor i32 %27, -1
  %and25 = and i32 %or23, %neg24
  %call26 = call i8* @gimp_suggest_modifiers(i8* %call22, i32 %and25, i8* null, i8* null, i8* null)
  store i8* %call26, i8** %status_help, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0)) #6
  %28 = load i32, i32* %shift_mod, align 4
  %29 = load i32, i32* %state.addr, align 4
  %neg29 = xor i32 %29, -1
  %and30 = and i32 %28, %neg29
  %call31 = call i8* @gimp_suggest_modifiers(i8* %call28, i32 %and30, i8* null, i8* null, i8* null)
  store i8* %call31, i8** %status_help, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.27, %sw.bb.21, %sw.bb.16, %sw.bb
  %30 = load i8*, i8** %status_help, align 8
  %cmp = icmp ne i8* %30, null
  br i1 %cmp, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.epilog
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %33 = load i8*, i8** %status_help, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %31, %struct._GimpDisplay* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %33)
  %34 = load i8*, i8** %status_help, align 8
  call void @g_free(i8* %34)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %sw.epilog
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  %35 = load i8*, i8** @gimp_color_picker_tool_parent_class, align 8
  %36 = bitcast i8* %35 to %struct._GTypeClass*
  %call35 = call i64 @gimp_tool_get_type() #5
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %36, i64 %call35)
  %37 = bitcast %struct._GTypeClass* %call36 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %37, i32 0, i32 12
  %38 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %41 = load i32, i32* %state.addr, align 4
  %42 = load i32, i32* %proximity.addr, align 4
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %38(%struct._GimpTool* %39, %struct._GimpCoords* %40, i32 %41, i32 %42, %struct._GimpDisplay* %43)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_picked(%struct._GimpColorTool* %color_tool, i32 %pick_state, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %pick_state.addr = alloca i32, align 4
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %picker_tool = alloca %struct._GimpColorPickerTool*, align 8
  %options = alloca %struct._GimpColorPickerOptions*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_picker_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPickerTool*
  store %struct._GimpColorPickerTool* %2, %struct._GimpColorPickerTool** %picker_tool, align 8
  %3 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %4 = bitcast %struct._GimpColorTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_picker_options_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorPickerOptions*
  store %struct._GimpColorPickerOptions* %7, %struct._GimpColorPickerOptions** %options, align 8
  %8 = load %struct._GimpColorPickerOptions*, %struct._GimpColorPickerOptions** %options, align 8
  %use_info_window = getelementptr inbounds %struct._GimpColorPickerOptions, %struct._GimpColorPickerOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %use_info_window, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  call void @gimp_color_picker_tool_info_create(%struct._GimpColorPickerTool* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %dialog8 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog8, align 8
  %tobool9 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %15 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool, align 8
  %16 = load i32, i32* %sample_type.addr, align 4
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %18 = load i32, i32* %color_index.addr, align 4
  call void @gimp_color_picker_tool_info_update(%struct._GimpColorPickerTool* %15, i32 %16, %struct._GimpRGB* %17, i32 %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %19 = load i8*, i8** @gimp_color_picker_tool_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call12 = call i64 @gimp_color_tool_get_type() #5
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call12)
  %21 = bitcast %struct._GTypeClass* %call13 to %struct._GimpColorToolClass*
  %picked = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %21, i32 0, i32 2
  %22 = load void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)** %picked, align 8
  %23 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %24 = load i32, i32* %pick_state.addr, align 4
  %25 = load i32, i32* %sample_type.addr, align 4
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %27 = load i32, i32* %color_index.addr, align 4
  call void %22(%struct._GimpColorTool* %23, i32 %24, i32 %25, %struct._GimpRGB* %26, i32 %27)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_color_tool_enable(%struct._GimpColorTool*, %struct._GimpColorOptions*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare i8* @gimp_suggest_modifiers(i8*, i32, i8*, i8*, i8*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_info_create(%struct._GimpColorPickerTool* %picker_tool) #3 {
entry:
  %picker_tool.addr = alloca %struct._GimpColorPickerTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %content_area = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorPickerTool* %picker_tool, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %0 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %1 = bitcast %struct._GimpColorPickerTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 5
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp = icmp ne %struct._GimpDrawable* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_color_picker_tool_info_create, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 1
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %call4 = call %struct._GtkWidget* (%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) @gimp_tool_dialog_new(%struct._GimpToolInfo* %6, %struct._GimpDisplayShell* %call2, i8* %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 -7, i8* null)
  %9 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %9, i32 0, i32 1
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog5 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_window_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWindow*
  call void @gtk_window_set_focus_on_map(%struct._GtkWindow* %13, i32 0)
  %14 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog8 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog8, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewableDialog*
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %18, i32 0, i32 5
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_viewable_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpViewable*
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call14 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %22)
  %23 = bitcast %struct._GimpToolOptions* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_context_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %17, %struct._GimpViewable* %21, %struct._GimpContext* %24)
  %25 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog17 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog17, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %29 = bitcast %struct._GimpColorPickerTool* %28 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpColorPickerTool*)* @gimp_color_picker_tool_info_response to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog19 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_dialog_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkDialog*
  %call22 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %33)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %content_area, align 8
  %call23 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %hbox, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_container_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %36, i32 6)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %content_area, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call28 = call %struct._GtkWidget* @gimp_color_frame_new()
  %42 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame1 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %42, i32 0, i32 3
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %color_frame1, align 8
  %43 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame129 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %43, i32 0, i32 3
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame129, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_color_frame_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %46, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call32)
  %49 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %50 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame134 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %50, i32 0, i32 3
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame134, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame135 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %52, i32 0, i32 3
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame135, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call36 = call %struct._GtkWidget* @gimp_color_frame_new()
  %54 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame2 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %54, i32 0, i32 4
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %color_frame2, align 8
  %55 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame237 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %55, i32 0, i32 4
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame237, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_color_frame_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call38)
  %58 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_mode(%struct._GimpColorFrame* %58, i32 1)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call40)
  %61 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %62 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame242 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %62, i32 0, i32 4
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame242, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %64 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame243 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %64, i32 0, i32 4
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame243, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %call44 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %frame, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_frame_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call45)
  %68 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %68, i32 1)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call47)
  %71 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 1, i32 1, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %74 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable49 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %74, i32 0, i32 5
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable49, align 8
  %call50 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %75)
  %tobool = icmp ne i32 %call50, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %call51 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %color, i32 %cond, i32 768)
  %76 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %76, i32 0, i32 2
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %color_area, align 8
  %77 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area52 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area52, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %78, i32 48, i32 -1)
  %79 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area53 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %79, i32 0, i32 2
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area53, align 8
  call void @gtk_drag_dest_unset(%struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call54)
  %83 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %84 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area56 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %84, i32 0, i32 2
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area56, align 8
  call void @gtk_container_add(%struct._GtkContainer* %83, %struct._GtkWidget* %85)
  %86 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area57 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %86, i32 0, i32 2
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area57, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_info_update(%struct._GimpColorPickerTool* %picker_tool, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %picker_tool.addr = alloca %struct._GimpColorPickerTool*, align 8
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpColorPickerTool* %picker_tool, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  %0 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %1 = bitcast %struct._GimpColorPickerTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %3, i32 0, i32 1
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpToolDialog*
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  call void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog* %6, %struct._GimpDisplayShell* %call4)
  %9 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog5 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewableDialog*
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 5
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call10 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %17)
  %18 = bitcast %struct._GimpToolOptions* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_context_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %12, %struct._GimpViewable* %16, %struct._GimpContext* %19)
  %20 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_area = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %color_area, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_color_area_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpColorArea*
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %23, %struct._GimpRGB* %24)
  %25 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame1 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %25, i32 0, i32 3
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame1, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_color_frame_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpColorFrame*
  %29 = load i32, i32* %sample_type.addr, align 4
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %31 = load i32, i32* %color_index.addr, align 4
  call void @gimp_color_frame_set_color(%struct._GimpColorFrame* %28, i32 %29, %struct._GimpRGB* %30, i32 %31)
  %32 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %color_frame2 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %32, i32 0, i32 4
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %color_frame2, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_frame_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call17)
  %35 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorFrame*
  %36 = load i32, i32* %sample_type.addr, align 4
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %38 = load i32, i32* %color_index.addr, align 4
  call void @gimp_color_frame_set_color(%struct._GimpColorFrame* %35, i32 %36, %struct._GimpRGB* %37, i32 %38)
  %39 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog19 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog19, align 8
  %call20 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %40)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %41 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog21 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %41, i32 0, i32 1
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog21, align 8
  %call22 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %42)
  call void @gdk_window_show(%struct._GdkDrawable* %call22)
  br label %if.end

if.else:                                          ; preds = %entry
  %43 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %dialog23 = getelementptr inbounds %struct._GimpColorPickerTool, %struct._GimpColorPickerTool* %43, i32 0, i32 1
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_tool_dialog_new(%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gtk_window_set_focus_on_map(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_picker_tool_info_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpColorPickerTool* %picker_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %picker_tool.addr = alloca %struct._GimpColorPickerTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpColorPickerTool* %picker_tool, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %0 = load %struct._GimpColorPickerTool*, %struct._GimpColorPickerTool** %picker_tool.addr, align 8
  %1 = bitcast %struct._GimpColorPickerTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_tool_control(%struct._GimpTool* %3, i32 2, %struct._GimpDisplay* %5)
  ret void
}

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_color_frame_new() #1

declare void @gimp_color_frame_set_mode(%struct._GimpColorFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_frame_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_drag_dest_unset(%struct._GtkWidget*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog*, %struct._GimpDisplayShell*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_dialog_get_type() #2

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #2

declare void @gimp_color_frame_set_color(%struct._GimpColorFrame*, i32, %struct._GimpRGB*, i32) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gdk_window_show(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gimp_tool_control_set_motion_mode(%struct._GimpToolControl*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
